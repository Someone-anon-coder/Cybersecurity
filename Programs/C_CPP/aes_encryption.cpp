#include <iostream>
#include <openssl/aes.h>
#include <openssl/rand.h>
#include <string.h>
using namespace std;

void AES_Encrypt(const unsigned char* input, unsigned char* output, unsigned char* key) {
    AES_KEY encryptKey;
    AES_set_encrypt_key(key, 128, &encryptKey);

    AES_encrypt(input, output, &encryptKey);
}

void AES_Decrypt(const unsigned char* input, unsigned char* output, unsigned char* key) {
    AES_KEY decryptKey;
    AES_set_decrypt_key(key, 128, &decryptKey);

    AES_decrypt(input, output, &decryptKey);
}

int main() {
    unsigned char key[16] = {0x2b, 0x7e, 0x15, 0x16, 0x28, 0xae, 0xd2, 0xa6, 0xab, 0xf7, 0x97, 0x75, 0x46, 0x0f, 0x58, 0x8c};

    unsigned char input[16] = "This is a test!";
    unsigned char encrypted[16];
    unsigned char decrypted[16];

    AES_Encrypt(input, encrypted, key);
    cout << "Encrypted: ";
    for(int i = 0; i < 16; i++) {
        printf("%02x", encrypted[i]);
    }
    cout << endl;

    AES_Decrypt(encrypted, decrypted, key);
    cout << "Decrypted: " << decrypted << endl;

    return 0;
}