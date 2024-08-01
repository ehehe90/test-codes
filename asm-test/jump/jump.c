#include <stdio.h>

int main() {
    int val = 0;

    __asm__ volatile(
        "movl $1, %0;"
        "jmp .+7;" // Jump forward 2 bytes to skip the next instruction
        "movl $2, %0;"
        : "=r"(val)
        : 
        : 
    );

    printf("Value: %d\n", val); // Prints "Value: 1"

    return 0;
}
