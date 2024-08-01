#include <stdio.h>
#include <stdlib.h>
#include <sys/mman.h>
#include <unistd.h>

int globalVar = 10; // グローバル変数の追加

int main()
{
    static int count = 0; // 静的変数の追加
    char *p;
    p = mmap(NULL, 2147483648, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
    if (p == MAP_FAILED) {
        perror("mmap");
        return 1;
    }
    printf("Mapped at address: %p\n", p);
    double d;
    scanf("%lf", &d);
    printf("a\n");


    // グローバル変数と静的変数の使用例
    printf("Global Variable: %d\n", globalVar);
    printf("Static Variable: %d\n", count);

    // 静的変数の値を変更
    count++;

    return 0;
}
