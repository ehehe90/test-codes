#include <stdio.h>
#include <stdlib.h>


int add(int a, int b)
{
    return a + b;
}

void trap()
{
    exit(1);
}

int main()
{
    int a = 2, b = 3, result;

    // __asm__ __volatile__("nop");


    result = add(a, b);
    printf("result : %d\n", result);

    return 0;
}