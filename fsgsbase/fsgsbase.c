#include <sys/auxv.h>
#include <elf.h>
#include <stdio.h>

/* Will be eventually in asm/hwcap.h */
#ifndef HWCAP2_FSGSBASE
#define HWCAP2_FSGSBASE        (1 << 1)
#endif


int main()
{
    unsigned val = getauxval(AT_HWCAP2);

    if (val & HWCAP2_FSGSBASE)
        printf("FSGSBASE enabled\n");

}