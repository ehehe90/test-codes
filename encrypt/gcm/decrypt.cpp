#include <iostream>
#include <openssl/evp.h>
#include <vector>

bool decrypt(const std::vector<unsigned char>& ciphertext, 
             const std::vector<unsigned char>& key,
             const std::vector<unsigned char>& iv,
             const std::vector<unsigned char>& tag,
             std::vector<unsigned char>& plaintext) {
    EVP_CIPHER_CTX* ctx = EVP_CIPHER_CTX_new();
    if (!ctx) {
        return false;
    }

    int len;
    int plaintext_len;

    // Initialize decryption operation
    if (1 != EVP_DecryptInit_ex(ctx, EVP_aes_256_gcm(), NULL, NULL, NULL)) {
        EVP_CIPHER_CTX_free(ctx);
        return false;
    }

    // Set the key and IV
    if (1 != EVP_DecryptInit_ex(ctx, NULL, NULL, key.data(), iv.data())) {
        EVP_CIPHER_CTX_free(ctx);
        return false;
    }

    // Provide the tag
    if (1 != EVP_CIPHER_CTX_ctrl(ctx, EVP_CTRL_GCM_SET_TAG, tag.size(), const_cast<unsigned char*>(tag.data()))) {
        EVP_CIPHER_CTX_free(ctx);
        return false;
    }

    plaintext.resize(ciphertext.size());

    // Decrypt the ciphertext
    if (1 != EVP_DecryptUpdate(ctx, plaintext.data(), &len, ciphertext.data(), ciphertext.size())) {
        EVP_CIPHER_CTX_free(ctx);
        return false;
    }
    plaintext_len = len;

    // Finalize decryption
    int ret = EVP_DecryptFinal_ex(ctx, plaintext.data() + len, &len);

    EVP_CIPHER_CTX_free(ctx);

    if (ret > 0) {
        plaintext_len += len;
        plaintext.resize(plaintext_len);
        return true;
    } else {
        // Decryption failed
        return false;
    }
}

int main() {
    // Define key and IV based on the encryption output
    std::vector<unsigned char> key = {0x81, 0x37, 0x02, 0xe7, 0x3d, 0x7c, 0x3f, 0x8f, 0x3a, 0x9e, 0xe3, 0xd5, 0xa8, 0x73, 0x02, 0x16,
                                      0x81, 0xd9, 0xe5, 0xb6, 0x2f, 0xee, 0x3c, 0x39, 0x05, 0x57, 0xe8, 0x01, 0x2b, 0x53, 0xb1, 0x2b};
    std::vector<unsigned char> iv = {0xcb, 0x62, 0x19, 0x20, 0x42, 0xe6, 0xc6, 0xec, 0x11, 0x02, 0xf5, 0xd5};
    std::vector<unsigned char> ciphertext = {0x64, 0x08, 0x4a, 0xd7, 0xe2, 0x4b, 0xb9, 0xc6, 0x30, 0x4b, 0x80, 0x3e, 0x0f, 0xe6, 0x10, 0x47,
                                             0x8e, 0xcd, 0x1a, 0xb8, 0xa8, 0x30, 0xe9, 0xee, 0xfd, 0xfc, 0x68, 0x16, 0xf4, 0x0c, 0x63, 0xc2};
    std::vector<unsigned char> tag = {0xc7, 0xf1, 0x4d, 0xf6, 0x94, 0x52, 0x40, 0x3b, 0x3e, 0xb4, 0x15, 0xdf, 0xd7, 0x62, 0x8b, 0xef};

    // Prepare plaintext
    std::vector<unsigned char> plaintext;

    // Decrypt
    if (decrypt(ciphertext, key, iv, tag, plaintext)) {
        std::cout << "Decryption successful!" << std::endl;
        std::cout << "Plaintext: " << std::string(plaintext.begin(), plaintext.end()) << std::endl;
    } else {
        std::cerr << "Decryption failed" << std::endl;
        return 1;
    }

    return 0;
}
