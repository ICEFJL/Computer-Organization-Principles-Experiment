#include "common.h"
#include "syscall.h"
#include "fs.h"

int mm_brk(uint32_t new_brk);

static inline uintptr_t sys_open(uintptr_t pathname, uintptr_t flags, uintptr_t mode)
{
    return fs_open((char *)pathname, flags, mode);
}

static inline uintptr_t sys_write(uintptr_t fd, uintptr_t buf, uintptr_t len)
{
    return fs_write(fd, (void *)buf, len);
}

static inline uintptr_t sys_read(uintptr_t fd, uintptr_t buf, uintptr_t len)
{
    return fs_read(fd, (void *)buf, len);
}

static inline uintptr_t sys_lseek(uintptr_t fd, uintptr_t offset, uintptr_t whence)
{
    return fs_lseek(fd, offset, whence);
}

static inline uintptr_t sys_close(uintptr_t fd)
{
    return fs_close(fd);
}

static inline uintptr_t sys_brk(uintptr_t new_brk)
{
    return mm_brk(new_brk);
}

_RegSet *do_syscall(_RegSet *r)
{
    uintptr_t a[4];
    a[0] = SYSCALL_ARG1(r);
    a[1] = SYSCALL_ARG2(r);
    a[2] = SYSCALL_ARG3(r);
    a[3] = SYSCALL_ARG4(r);
    switch (a[0]) {
        case SYS_none:
            r->eax = 1;
            break;
        case SYS_exit:
            _halt(a[1]);
            break;
        case SYS_write:
            r->eax = sys_write(a[1], a[2], a[3]);
            break;
        case SYS_brk:
            r->eax = 0;
            break;
        case SYS_open:
            r->eax = sys_open(a[1], a[2], a[3]);
            break;
        case SYS_read:
            r->eax = sys_read(a[1], a[2], a[3]);
            break;
        case SYS_lseek:
            r->eax = sys_lseek(a[1], a[2], a[3]);
            break;
        case SYS_close:
            r->eax = sys_close(a[1]);
            break;
        default:
            panic("Unhandled syscall ID = %d", a[0]);
    }

    return NULL;
}
