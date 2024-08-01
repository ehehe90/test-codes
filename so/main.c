#include <stdio.h>
#include "mylib.h"

int tmp()
{
    global_variable++;
}

int main() {
    printf("Global variable before: %d\n", global_variable);
    increment_variable();
    tmp();
    printf("Global variable after: %d\n", global_variable);
    return 0;
}