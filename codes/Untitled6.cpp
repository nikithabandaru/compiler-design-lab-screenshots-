#include <stdio.h>
#include <ctype.h>
#include <string.h>

int main()
{
    char id[100];
    int i;

    printf("Enter an identifier: ");
    scanf("%s", id);

    if(!(isalpha(id[0]) || id[0]=='_'))
    {
        printf("Invalid Identifier");
        return 0;
    }

    for(i=1; id[i]!='\0'; i++)
    {
        if(!(isalnum(id[i]) || id[i]=='_'))
        {
            printf("Invalid Identifier");
            return 0;
        }
    }

    printf("Valid Identifier");

    return 0;
}