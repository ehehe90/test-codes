#include <stdio.h>
#include <stdint.h>
#include <arpa/inet.h> // for ntohs

// 自作の関数
uint16_t my_ntohs(uint16_t netshort) {
    return ((netshort & 0xff) << 8) | ((netshort & 0xff00) >> 8);
}

int main() {
    uint16_t test_val = 0x3412; // テスト用の値
    uint16_t result1, result2;

    // ntohsとmy_ntohsを使って値を変換
    result1 = ntohs(test_val);
    result2 = my_ntohs(test_val);

    // 結果を表示
    printf("Original: 0x%x\n", test_val);
    printf("ntohs: 0x%x\n", result1);
    printf("my_ntohs: 0x%x\n", result2);

    // 結果を比較
    if (result1 == result2) {
        printf("ntohs and my_ntohs returned the same result.\n");
    } else {
        printf("ntohs and my_ntohs returned different results.\n");
    }

    return 0;
}
