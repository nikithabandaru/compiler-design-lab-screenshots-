#include <stdio.h>
#include <ctype.h>

int main() {

    char str[200];

    printf("Enter a statement:\n");
    fgets(str, sizeof(str), stdin);

    for(int i=0; str[i]!='\0'; i++) {

        if(str[i]==' ' || str[i]=='\t' || str[i]=='\n')
            continue;

        if(str[i]=='/' && str[i+1]=='/')
            break;

        printf("%c", str[i]);
    }

    return 0;
}