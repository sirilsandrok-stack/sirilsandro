#include <stdio.h>
#include <string.h>
int main()
{
char actualPassword[] = "ab";
char charset[] = "abcdefghijklmnopqrstuvwxyz";
char guess[3];
printf("Starting Brute Force Attack (Linux)...\n\n");
for(int i = 0; i < 26; i++)
{
for(int j = 0; j < 26; j++)
{
guess[0] = charset[i];
guess[1] = charset[j];
guess[2] = '\0';
printf("Trying: %s\n", guess);
if(strcmp(guess, actualPassword) == 0)
{
printf("\nPassword Cracked!\n");
printf("Password is: %s\n", guess);
return 0;
}
}
}

printf("\nPassword not found.\n");
return 0;
}
