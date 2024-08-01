#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <openssl/evp.h>
#include <openssl/aes.h>

int main(int argc, char *argv[]) {
    EVP_CIPHER_CTX *de;
    char *key, *data, *ptr;
    char buf[80];
    int datasize, c;
    int p_len, f_len = 0;
    unsigned char *plaintext;

    if (argc <= 2) {
        fprintf(stderr, "Usage: aesdecrypt key data\n");
        return -1;
    }

    key = argv[1];
    if (strlen(key) != EVP_CIPHER_key_length(EVP_aes_128_ecb())) {
        fprintf(stderr, "Key length must be %d bytes\n", EVP_CIPHER_key_length(EVP_aes_128_ecb()));
        return -1;
    }

    data = (char *)malloc(strlen(argv[2]) / 2);
    if (!data) {
        fprintf(stderr, "Failed to allocate memory for data\n");
        return -1;
    }
    for (ptr = argv[2], c = 0; *ptr != '\0'; ptr += 2, c++) {
        buf[0] = *ptr;
        buf[1] = *(ptr + 1);
        buf[2] = '\0';
        data[c] = (char)strtol(buf, NULL, 16);
    }
    datasize = c;

    de = EVP_CIPHER_CTX_new();
    if (!de) {
        fprintf(stderr, "Failed to create EVP_CIPHER_CTX\n");
        free(data);
        return -1;
    }

    if (EVP_DecryptInit_ex(de, EVP_aes_128_ecb(), NULL, (unsigned char *)key, NULL) != 1) {
        fprintf(stderr, "EVP_DecryptInit_ex failed\n");
        EVP_CIPHER_CTX_free(de);
        free(data);
        return -1;
    }

    p_len = datasize;
    plaintext = (unsigned char *)calloc(p_len + 1, sizeof(unsigned char));
    if (!plaintext) {
        fprintf(stderr, "Failed to allocate memory for plaintext\n");
        EVP_CIPHER_CTX_free(de);
        free(data);
        return -1;
    }

    if (EVP_DecryptUpdate(de, plaintext, &p_len, (unsigned char *)data, datasize) != 1) {
        fprintf(stderr, "EVP_DecryptUpdate failed\n");
        EVP_CIPHER_CTX_free(de);
        free(plaintext);
        free(data);
        return -1;
    }

    if (EVP_DecryptFinal_ex(de, plaintext + p_len, &f_len) != 1) {
        fprintf(stderr, "EVP_DecryptFinal_ex failed\n");
        EVP_CIPHER_CTX_free(de);
        free(plaintext);
        free(data);
        return -1;
    }

    plaintext[p_len + f_len] = '\0';
    printf("[%s]\n", plaintext);

    EVP_CIPHER_CTX_free(de);
    free(plaintext);
    free(data);

    return 0;
}
