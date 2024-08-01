#include <stdio.h>
#include <linux/types.h>

typedef __u8 u8;

int main()
{
    char *s = "ehehe";

    asm volatile ("movq %0, %%r11" :: "r" (s) : "%r11");

    printf("s : %p\n", s);

    // printf("%zu\n", sizeof(s));
    return 0;
}