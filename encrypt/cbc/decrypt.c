#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <openssl/evp.h>
#include <openssl/aes.h>

int main(int argc, char *argv[]) {
    EVP_CIPHER_CTX *ctx;
    unsigned char *key, *data, *iv, *ciphertext;
    char buf[3];
    int data_len, c;
    int p_len, f_len = 0;
    unsigned char *plaintext;

    if (argc <= 2) {
        fprintf(stderr, "Usage: aesdecrypt key hexdata\n");
        return -1;
    }

    key = (unsigned char *)argv[1];
    if (strlen((char *)key) != 16) {
        fprintf(stderr, "Key length must be 16 bytes for AES-128-CBC\n");
        return -1;
    }

    // Allocate memory for data (half the size of the hex input, since two hex chars make one byte)
    data_len = strlen(argv[2]) / 2 - AES_BLOCK_SIZE; // Subtract AES_BLOCK_SIZE for the IV
    ciphertext = (unsigned char *)malloc(data_len);
    if (!ciphertext) {
        fprintf(stderr, "Failed to allocate memory for ciphertext\n");
        return -1;
    }

    // The IV is the first 16 bytes of the hex input
    iv = (unsigned char *)malloc(AES_BLOCK_SIZE);
    if (!iv) {
        fprintf(stderr, "Failed to allocate memory for IV\n");
        free(ciphertext);
        return -1;
    }

    // Convert hex input to binary
    for (int i = 0; i < AES_BLOCK_SIZE * 2; i += 2) {
        buf[0] = argv[2][i];
        buf[1] = argv[2][i + 1];
        buf[2] = '\0';
        iv[i / 2] = (unsigned char)strtol(buf, NULL, 16);
    }
    for (c = 0; c < data_len; c++) {
        buf[0] = argv[2][c * 2 + AES_BLOCK_SIZE * 2];
        buf[1] = argv[2][c * 2 + AES_BLOCK_SIZE * 2 + 1];
        buf[2] = '\0';
        ciphertext[c] = (unsigned char)strtol(buf, NULL, 16);
    }

    ctx = EVP_CIPHER_CTX_new();
    if (!ctx) {
        fprintf(stderr, "Failed to create EVP_CIPHER_CTX\n");
        free(iv);
        free(ciphertext);
        return -1;
    }

    if (EVP_DecryptInit_ex(ctx, EVP_aes_128_cbc(), NULL, key, iv) != 1) {
        fprintf(stderr, "EVP_DecryptInit_ex failed\n");
        EVP_CIPHER_CTX_free(ctx);
        free(iv);
        free(ciphertext);
        return -1;
    }

    plaintext = (unsigned char *)calloc(data_len + AES_BLOCK_SIZE, sizeof(unsigned char));
    if (!plaintext) {
        fprintf(stderr, "Failed to allocate memory for plaintext\n");
        EVP_CIPHER_CTX_free(ctx);
        free(iv);
        free(ciphertext);
        return -1;
    }

    if (EVP_DecryptUpdate(ctx, plaintext, &p_len, ciphertext, data_len) != 1) {
        fprintf(stderr, "EVP_DecryptUpdate failed\n");
        EVP_CIPHER_CTX_free(ctx);
        free(plaintext);
        free(iv);
        free(ciphertext);
        return -1;
    }

    if (EVP_DecryptFinal_ex(ctx, plaintext + p_len, &f_len) != 1) {
        fprintf(stderr, "EVP_DecryptFinal_ex failed\n");
        EVP_CIPHER_CTX_free(ctx);
        free(plaintext);
        free(iv);
        free(ciphertext);
        return -1;
    }

    p_len += f_len;
    plaintext[p_len] = '\0'; // Null-terminate the string
    printf("Decrypted text: [%s]\n", plaintext);

    EVP_CIPHER_CTX_free(ctx);
    free(plaintext);
    free(iv);
    free(ciphertext);

    return 0;
}
