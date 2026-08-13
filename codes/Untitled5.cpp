#include <stdio.h>

int main() {
    char str[200];
    int spaces = 0, newlines = 0;

    printf("Enter text: ");
    fgets(str, sizeof(str), stdin);

    for(int i = 0; str[i] != '\0'; i++) {
        if(str[i] == ' ')
            spaces++;
        if(str[i] == '\n')
            newlines++;
    }

    printf("Number of spaces = %d\n", spaces);
    printf("Number of new lines = %d\n", newlines);

    return 0;
}