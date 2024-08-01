#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/mman.h>
#include <openssl/evp.h>
#include <openssl/aes.h>
#include <openssl/rand.h>

int main(int argc, char *argv[]) {
    EVP_CIPHER_CTX *ctx;
    unsigned char *key, *data, *iv, *pkt;
    int data_len, block_size;
    int update_len, final_len;
    unsigned char *ciphertext;

    if (argc <= 2) {
        fprintf(stderr, "Usage: aesencrypt key data\n");
        return -1;
    }
    
    key = (unsigned char *)argv[1];
    data = (unsigned char *)argv[2];
    data_len = strlen((char *)data);

    pkt = mmap(NULL, getpagesize(), PROT_READ | PROT_WRITE, MAP_ANONYMOUS | MAP_PRIVATE, -1, 0);
    if (pkt == MAP_FAILED) {
        fprintf(stderr, "mmap failed\n");
        return -1;
    }
    memcpy(pkt, data, data_len);
    int pkt_len = data_len;

    // Check if the key length is valid for AES-128-CBC
    if (strlen((char *)key) != 16) {
        fprintf(stderr, "Key length must be 16 bytes for AES-128-CBC\n");
        return -1;
    }

    ctx = EVP_CIPHER_CTX_new();
    if (!ctx) {
        fprintf(stderr, "Failed to create EVP_CIPHER_CTX\n");
        return -1;
    }
    
    // Initialize IV with a random value
    iv = (unsigned char *)malloc(AES_BLOCK_SIZE);
    if (!iv) {
        fprintf(stderr, "Failed to allocate IV\n");
        return -1;
    }
    if (RAND_bytes(iv, AES_BLOCK_SIZE) != 1) {
        fprintf(stderr, "Failed to generate random IV\n");
        return -1;
    }

    EVP_CIPHER_CTX_init(ctx);

    if (EVP_EncryptInit_ex(ctx, EVP_aes_128_cbc(), NULL, key, iv) != 1) {
        fprintf(stderr, "EVP_EncryptInit_ex failed\n");
        EVP_CIPHER_CTX_free(ctx);
        return -1;
    }
    
    block_size = EVP_CIPHER_CTX_block_size(ctx);
    // ciphertext = (unsigned char *)calloc(data_len + block_size, sizeof(unsigned char));
    // if (!ciphertext) {
    //     fprintf(stderr, "Failed to allocate ciphertext\n");
    //     EVP_CIPHER_CTX_free(ctx);
    //     return -1;
    // }
    
    if (EVP_EncryptUpdate(ctx, pkt, &update_len, pkt, pkt_len) != 1) {
        fprintf(stderr, "EVP_EncryptUpdate failed\n");
        // free(ciphertext);
        munmap(pkt, getpagesize());
        EVP_CIPHER_CTX_free(ctx);
        return -1;
    }
    
    if (EVP_EncryptFinal_ex(ctx, pkt + update_len, &final_len) != 1) {
        fprintf(stderr, "EVP_EncryptFinal_ex failed\n");
        // free(ciphertext);
        munmap(pkt, getpagesize());
        EVP_CIPHER_CTX_free(ctx);
        return -1;
    }
    
    // Output the IV and then the ciphertext
    for (int i = 0; i < AES_BLOCK_SIZE; i++) {
        printf("%02x", iv[i]);
    }
    for (int i = 0; i < update_len + final_len; i++) {
        printf("%02x", pkt[i]);
    }
    putchar('\n');
    
    free(iv);
    // free(ciphertext);
    munmap(pkt, getpagesize());
    EVP_CIPHER_CTX_free(ctx);
    
    return 0;
}
