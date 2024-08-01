#include <stdio.h>
#include <stdlib.h>

int globalVar = 10; // グローバル変数の追加

int main()
{
    static int count = 0; // 静的変数の追加
    char *p;
    p = (char*)malloc(4096);
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
