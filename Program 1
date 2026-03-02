CODING:
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

// Function to encrypt text using Caesar Cipher
void encrypt(char *text, int shift)
 {
    for (int i = 0; text[i] != '\0'; i++) 
{
        char ch = text[i];
        if (isalpha(ch)) {
            char base = isupper(ch) ? 'A' : 'a';
            text[i] = (ch - base + shift) % 26 + base;
        }
    }
}

// Function to decrypt text using Caesar Cipher
void decrypt(char *text, int shift) {
    for (int i = 0; text[i] != '\0'; i++) {
        char ch = text[i];
        if (isalpha(ch)) {
            char base = isupper(ch) ? 'A' : 'a';
            text[i] = (ch - base - shift + 26) % 26 + base;
        }
    }
}
int main( ) {
    char text[256];
    int shift, choice;

    printf("=== Caesar Cipher in C ===\n");
    printf("Enter text (max 255 chars): ");
    scanf(“%s”,text);
    text[strcspn(text, "\n")] = '\0'; // Remove newline
    printf("Enter shift value (1-25): ");
    scanf("%d", &shift);
while(1)
{
    printf("Choose operation:\n1. Encrypt\n2. Decrypt\nEnter choice: ");
    scanf("%d", &choice);
    if (choice == 1) {
        encrypt(text, shift);
        printf("Encrypted text: %s\n", text);
    } 
else if (choice ==2)
 {
        decrypt(text, shift);     
        printf("Decrypted text: %s\n", text);
    }
    else 
    {
        printf("Invalid choice");
        exit(1);
    }
}
 return 0;
}
