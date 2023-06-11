#include "nemu.h"
#include "monitor/monitor.h"
#include "monitor/watchpoint.h"

/* The assembly code of instructions executed is only output to the screen
 * when the number of instructions executed is less than this value.
 * This is useful when you use the `si' command.
 * You can modify this value as you want.
 */
#define MAX_INSTR_TO_PRINT 10

int nemu_state = NEMU_STOP;

void exec_wrapper(bool);

/* Simulate how the CPU works. */
void cpu_exec(uint64_t n)
{
    if (nemu_state == NEMU_END) {
        printf("Program execution has ended. To restart the program, exit NEMU and run again.\n");
        return;
    }
    nemu_state = NEMU_RUNNING;

    bool print_flag = n <= MAX_INSTR_TO_PRINT;

    uint64_t instr_cnt = 0;
    for (; n > 0; n--) {
        /* Execute one instruction, including instruction fetch,
         * instruction decode, and the actual execution. */
        uint32_t prev_eip = cpu.eip;

        exec_wrapper(print_flag);
        instr_cnt++;

#ifdef DEBUG
        WP *p = scan_watchpoint();
        if (p) {
            printf("Hit watchpoint #%d at address %#010x\n", p->NO, prev_eip);
            printf("expr = %s\n", p->expr);
            printf("old value = %#010x\n", p->old_val);
            printf("new value = %#010x\n", p->new_val);
            nemu_state = NEMU_STOP;
            printf("program paused\n");
        }
#endif

#ifdef HAS_IOE
        extern void device_update();
        device_update();
#endif
        if (instr_cnt >= cpu.max_instr_cnt) {  // 计数器超过阈值，程序陷入死循环
            printf("Program seems to be stuck in an infinite loop. Execution paused.\n");
            nemu_state = NEMU_STOP;
        }
        if (nemu_state != NEMU_RUNNING) {
            return;
        }
    }

    if (nemu_state == NEMU_RUNNING) {
        nemu_state = NEMU_STOP;
    }
}
