#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <openssl/evp.h>
#include <openssl/aes.h>

int main(int argc, char *argv[]) {
    EVP_CIPHER_CTX *en;
    char *key, *data;
    int datasize;
    int c_len, f_len = 0;
    unsigned char *ciphertext;

    if (argc <= 2) {
        fprintf(stderr, "Usage: aesencrypt key data\n");
        return -1;
    }
    
    key = argv[1];
    if (strlen(key) != EVP_CIPHER_key_length(EVP_aes_128_ecb())) {
        fprintf(stderr, "Key length must be %d bytes\n", EVP_CIPHER_key_length(EVP_aes_128_ecb()));
        return -1;
    }
    
    data = argv[2];
    datasize = strlen(data);
    
    en = EVP_CIPHER_CTX_new();
    if (!en) {
        fprintf(stderr, "Failed to create EVP_CIPHER_CTX\n");
        return -1;
    }
    
    EVP_CIPHER_CTX_init(en);
    if (EVP_EncryptInit_ex(en, EVP_aes_128_ecb(), NULL, (unsigned char *)key, NULL) != 1) {
        fprintf(stderr, "EVP_EncryptInit_ex failed\n");
        EVP_CIPHER_CTX_free(en);
        return -1;
    }
    
    c_len = datasize + EVP_MAX_BLOCK_LENGTH;
    ciphertext = (unsigned char *)calloc(c_len, sizeof(unsigned char));
    if (!ciphertext) {
        fprintf(stderr, "Failed to allocate ciphertext\n");
        EVP_CIPHER_CTX_free(en);
        return -1;
    }
    
    if (EVP_EncryptUpdate(en, ciphertext, &c_len, (unsigned char *)data, datasize) != 1) {
        fprintf(stderr, "EVP_EncryptUpdate failed\n");
        free(ciphertext);
        EVP_CIPHER_CTX_free(en);
        return -1;
    }
    
    if (EVP_EncryptFinal_ex(en, ciphertext + c_len, &f_len) != 1) {
        fprintf(stderr, "EVP_EncryptFinal_ex failed\n");
        free(ciphertext);
        EVP_CIPHER_CTX_free(en);
        return -1;
    }
    
    for (int i = 0; i < c_len + f_len; i++) {
        printf("%02x", ciphertext[i]);
    }
    putchar('\n');
    
    free(ciphertext);
    EVP_CIPHER_CTX_free(en);
    
    return 0;
}
