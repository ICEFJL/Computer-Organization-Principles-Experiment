#include "common.h"

void mem_read(uintptr_t block_num, uint8_t *buf);
void mem_write(uintptr_t block_num, const uint8_t *buf);

// TODO: implement the following functions
#define offset_mask 0x3C
#define addr_mask MEM_SIZE - 1
#define block_mask 0x1FF

typedef struct {
    bool dirty_bit;  
    uint8_t data[BLOCK_SIZE];
    uint32_t tag;    
    bool valid_bit;  
} CacheLine;

typedef struct {
    CacheLine *cache_line;
    uint32_t index_mask;   
    uint32_t index_len;
    uint32_t line_num;
} CacheSet;

CacheSet cache;

int wirte_back(uint32_t index, uint32_t block, uint32_t tag)
{
    int choose = rand() % 4 + index * 4;
    if (cache.cache_line[choose].dirty_bit == 1) {
        uint32_t addr = (cache.cache_line[choose].tag << cache.index_len) | index;
        mem_write(addr, cache.cache_line[choose].data);
    }
    mem_read(block, cache.cache_line[choose].data);
    cache.cache_line[choose].tag = tag;
    cache.cache_line[choose].valid_bit = 1;
    return choose;
}

// 从cache中读出`addr`地址处的4字节数据
// 若缺失, 需要先从内存中读入数据
uint32_t cache_read(uintptr_t addr)
{
    try_increase(1);
    addr &= addr_mask;
    uint32_t index = (addr >> BLOCK_WIDTH) & cache.index_mask;
    uint32_t tag = addr >> (BLOCK_WIDTH + cache.index_len);
    uint32_t offset = addr & offset_mask;
    uint32_t block = (addr >> BLOCK_WIDTH) & block_mask;

    uint32_t index_start = index * 4;
    for (int i = index_start; i < index_start + 4; i++) {
        if (cache.cache_line[i].valid_bit == 1 && cache.cache_line[i].tag == tag) {
            hit_increase(1);
            return *(uint32_t *)(cache.cache_line[i].data + offset);
        }
    }

    for (int i = index_start; i < index_start + 4; i++) {
        if (cache.cache_line[i].valid_bit == 0) {
            cache.cache_line[i].valid_bit = 1;
            cache.cache_line[i].tag = tag;
            mem_read(block, cache.cache_line[i].data);
            return *(uint32_t *)(cache.cache_line[i].data + offset);
        }
    }

    int choose = wirte_back(index, block, tag);
    return *(uint32_t *)(cache.cache_line[choose].data + offset);
}

// 往cache中`addr`地址所属的块写入数据`data`, 写掩码为`wmask`
// 例如当`wmask`为`0xff`时, 只写入低8比特
// 若缺失, 需要从先内存中读入数据
void cache_write(uintptr_t addr, uint32_t data, uint32_t wmask)
{
    try_increase(1);
    addr &= addr_mask;
    uint32_t index = (addr >> BLOCK_WIDTH) & cache.index_mask;
    uint32_t tag = addr >> (BLOCK_WIDTH + cache.index_len);
    uint32_t offset = addr & offset_mask;
    uint32_t block = (addr >> BLOCK_WIDTH) & block_mask;

    uint32_t index_start = index * 4;
    for (int i = index_start; i < index_start + 4; i++) {
        if (cache.cache_line[i].valid_bit == 1 && cache.cache_line[i].tag == tag) {
            hit_increase(1);
            cache.cache_line[i].dirty_bit = 1;
            uint32_t *data_cache = (uint32_t *)(cache.cache_line[i].data + offset);
            *data_cache = (*data_cache & ~wmask) | (data & wmask);
            return;
        }
    }

    for (int i = index_start; i < index_start + 4; i++) {
        if (cache.cache_line[i].valid_bit == 0) {
            cache.cache_line[i].valid_bit = 1;
            cache.cache_line[i].tag = tag;
            mem_read(block, cache.cache_line[i].data);
            cache.cache_line[i].dirty_bit = 1;
            uint32_t *data_cache = (uint32_t *)(cache.cache_line[i].data + offset);
            *data_cache = (*data_cache & ~wmask) | (data & wmask);
            return;
        }
    }

    int choose = wirte_back(index, block, tag);
    uint32_t *data_cache = (uint32_t *)(cache.cache_line[choose].data + offset);
    *data_cache = (*data_cache & ~wmask) | (data & wmask);
    cache.cache_line[choose].dirty_bit = 1;
}
// 初始化一个数据大小为`2^total_size_width`B, 关联度为`2^associativity_width`的cache
// 例如`init_cache(14, 2)`将初始化一个16KB, 4路组相联的cache
// 将所有valid bit置为无效即可
void init_cache(int total_size_width, int associativity_width)
{
    cache.line_num = exp2(total_size_width - BLOCK_WIDTH);
    cache.index_len = total_size_width - BLOCK_WIDTH - associativity_width;
    cache.index_mask = exp2(cache.index_len) - 1;

    cache.cache_line = (CacheLine *)malloc(sizeof(CacheLine) * cache.line_num);
    for (int i = 0; i < cache.line_num; i++) {
        cache.cache_line[i].valid_bit = false;
        cache.cache_line[i].dirty_bit = false;
    }
}
