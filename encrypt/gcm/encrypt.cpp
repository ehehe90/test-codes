#include <iostream>
#include <openssl/evp.h>
#include <openssl/rand.h>
#include <vector>

bool encrypt(const std::vector<unsigned char>& plaintext, 
             const std::vector<unsigned char>& key,
             const std::vector<unsigned char>& iv,
             std::vector<unsigned char>& ciphertext,
             std::vector<unsigned char>& tag) {
    EVP_CIPHER_CTX* ctx = EVP_CIPHER_CTX_new();
    if (!ctx) {
        return false;
    }

    int len;
    int ciphertext_len;

    // Initialize encryption operation
    if (1 != EVP_EncryptInit_ex(ctx, EVP_aes_256_gcm(), NULL, NULL, NULL)) {
        EVP_CIPHER_CTX_free(ctx);
        return false;
    }

    // Set the key and IV
    if (1 != EVP_EncryptInit_ex(ctx, NULL, NULL, key.data(), iv.data())) {
        EVP_CIPHER_CTX_free(ctx);
        return false;
    }

    ciphertext.resize(plaintext.size() + EVP_CIPHER_block_size(EVP_aes_256_gcm()));

    // Encrypt the plaintext
    if (1 != EVP_EncryptUpdate(ctx, ciphertext.data(), &len, plaintext.data(), plaintext.size())) {
        EVP_CIPHER_CTX_free(ctx);
        return false;
    }
    ciphertext_len = len;

    // Finalize encryption
    if (1 != EVP_EncryptFinal_ex(ctx, ciphertext.data() + len, &len)) {
        EVP_CIPHER_CTX_free(ctx);
        return false;
    }
    ciphertext_len += len;
    ciphertext.resize(ciphertext_len);

    // Get the tag
    tag.resize(16); // AES-GCM tag size is 16 bytes
    if (1 != EVP_CIPHER_CTX_ctrl(ctx, EVP_CTRL_GCM_GET_TAG, 16, tag.data())) {
        EVP_CIPHER_CTX_free(ctx);
        return false;
    }

    EVP_CIPHER_CTX_free(ctx);
    return true;
}

int main() {
    // Define key and IV
    std::vector<unsigned char> key(32); // AES-256 key size is 32 bytes
    std::vector<unsigned char> iv(12);  // Recommended IV size for GCM is 12 bytes

    // Generate random key and IV
    if (!RAND_bytes(key.data(), key.size()) || !RAND_bytes(iv.data(), iv.size())) {
        std::cerr << "Failed to generate key or IV" << std::endl;
        return 1;
    }

    // Define plaintext
    std::string plaintext_str = "This is a test plaintext message";
    std::vector<unsigned char> plaintext(plaintext_str.begin(), plaintext_str.end());

    // Prepare ciphertext and tag
    std::vector<unsigned char> ciphertext;
    std::vector<unsigned char> tag;

    // Encrypt
    if (encrypt(plaintext, key, iv, ciphertext, tag)) {
        std::cout << "Encryption successful!" << std::endl;
    } else {
        std::cerr << "Encryption failed" << std::endl;
        return 1;
    }

    // Output the results
    std::cout << "Key: ";
    for (unsigned char k : key) {
        printf("%02x", k);
    }
    std::cout << std::endl;

    std::cout << "IV: ";
    for (unsigned char i : iv) {
        printf("%02x", i);
    }
    std::cout << std::endl;

    std::cout << "Ciphertext: ";
    for (unsigned char c : ciphertext) {
        printf("%02x", c);
    }
    std::cout << std::endl;

    std::cout << "Tag: ";
    for (unsigned char t : tag) {
        printf("%02x", t);
    }
    std::cout << std::endl;

    return 0;
}