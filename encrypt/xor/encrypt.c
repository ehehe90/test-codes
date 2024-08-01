#include <stdio.h>
#include <string.h>

// XOR暗号化および復号関数
void xorCipher(char *data, char *key, int dataSize, int keySize) {
    for (int i = 0; i < dataSize; i++) {
        data[i] = data[i] ^ key[i % keySize];
    }
}

int main() {
    char data[] = "Hello Worldaaaaaaaaaaaaaaasdfasdfsafasfsfdaddafsddsfasffadaasdfds"; // 暗号化するデータ
    char key[] = "key";          // キー
    int dataSize = strlen(data);
    int keySize = strlen(key);

    printf("Original Data:  %s\n", data);

    // データの暗号化
    xorCipher(data, key, dataSize, keySize);
    printf("Encrypted Data: %s\n", data);

    // データの復号化
    xorCipher(data, key, dataSize, keySize);
    printf("Decrypted Data: %s\n", data);

    return 0;
}
