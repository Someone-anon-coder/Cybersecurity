#include <iostream>
#include <string>
using namespace std;

string xorEncryptDecrypt(string data, char key) {
    for (int i = 0; i < data.length(); i++) {
        data[i] = data[i] ^ key;
    }
    return data;
}

int main() {
    string data;
    char key;

    cout << "Enter the data to encrypt/decrypt: ";
    getline(cin, data);

    cout << "Enter the key (single character): ";
    cin >> key;

    string encryptedData = xorEncryptDecrypt(data, key);
    cout << "Encrypted Data: " << encryptedData << endl;

    string decryptedData = xorEncryptDecrypt(encryptedData, key);
    cout << "Decrypted Data: " << decryptedData << endl;

    return 0;
}