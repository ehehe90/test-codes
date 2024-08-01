#include <stdio.h>
#include <stdint.h>
#include <arpa/inet.h> // for htons

// 自作の関数
uint16_t my_htons(uint16_t hostshort) {
    return ((hostshort & 0xff) << 8) | ((hostshort & 0xff00) >> 8);
}

int main() {
    uint16_t test_val = 0x1234; // テスト用の値
    uint16_t result1, result2;

    // htonsとmy_htonsを使って値を変換
    result1 = htons(test_val);
    result2 = my_htons(test_val);

    // 結果を表示
    printf("Original: 0x%x\n", test_val);
    printf("htons: 0x%x\n", result1);
    printf("my_htons: 0x%x\n", result2);

    // 結果を比較
    if (result1 == result2) {
        printf("htons and my_htons returned the same result.\n");
    } else {
        printf("htons and my_htons returned different results.\n");
    }

    return 0;
}
