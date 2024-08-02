#include <stdio.h>
#include <stdint.h>
#include <errno.h>

#define ARCH_X86_CET_STATUS		0x3001
#define ARCH_X86_CET_DISABLE		0x3002
#define ARCH_X86_CET_LOCK		0x3003
#define ARCH_X86_CET_ALLOC_SHSTK	0x3004
#define ARCH_X86_CET_ENABLE		0x3005
#define GNU_PROPERTY_X86_FEATURE_1_IBT		0x00000001
#define GNU_PROPERTY_X86_FEATURE_1_SHSTK	0x00000002
#define __NR_arch_prctl 158

int main() {
    long ret;
    unsigned int features = 0x3;
    uint64_t addr[3];

    asm volatile (
        "syscall"
        : "=a"(ret)
        : "0"(__NR_arch_prctl), "D"(ARCH_X86_CET_ENABLE), "S"(GNU_PROPERTY_X86_FEATURE_1_SHSTK)
        : "rcx", "r11", "memory"
    );

    if (ret != 0) {
        perror("arch_prctl ARCH_X86_CET_ENABLE failed");
        return 1;
    }
    printf("A\n");

    if (arch_prctl(ARCH_X86_CET_DISABLE, GNU_PROPERTY_X86_FEATURE_1_SHSTK) != 0) {
        perror("arch_prctl ARCH_X86_CET_DISABLE failed");
        return 1;
    }

    return 0;
}
