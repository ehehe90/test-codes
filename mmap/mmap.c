#include <stdio.h>
#include <stdlib.h>
#include <sys/mman.h>
#include <unistd.h>

int main() {
    // 希望するアドレス
    void *desired_addr = (void *)((1ull<<20));

    // メモリのマッピング
    unsigned long long int *mapped_addr = mmap(desired_addr, 2147483648, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS | MAP_FIXED, -1, 0);

    if (mapped_addr == MAP_FAILED) {
        perror("mmap");
        return 1;
    }
    if (desired_addr == mapped_addr) {
        printf("same\n");
    }

    // 成功した場合のアドレスを表示
    printf("Mapped at address: %p\n", mapped_addr);

    // 何かデータを書き込む
    *mapped_addr = 4200000000;
    printf("Value at mapped address: %lld\n", *mapped_addr);

    void *unknown_addr;
    unknown_addr = malloc(100);
    if (unknown_addr == NULL) {
        printf("cannot allocate memory\n");
        exit(1);
    }
    printf("mapped at address : %p\n", unknown_addr);
    
    getchar();

    // メモリのアンマッピング
    if (munmap(mapped_addr, 4096) == -1) {
        perror("munmap");
        return 1;
    }

    return 0;
}
