#include <stdio.h>
#include <string.h>

struct Symbol
{
    char name[20];
    char type[20];
};

int main()
{
    struct Symbol table[20];
    int n, i;

    printf("Enter number of symbols: ");
    scanf("%d", &n);

    for(i = 0; i < n; i++)
    {
        printf("\nEnter Symbol Name: ");
        scanf("%s", table[i].name);

        printf("Enter Data Type: ");
        scanf("%s", table[i].type);
    }

    printf("\nSYMBOL TABLE\n");
    printf("----------------------------\n");
    printf("Symbol\t\tType\n");
    printf("----------------------------\n");

    for(i = 0; i < n; i++)
    {
        printf("%s\t\t%s\n", table[i].name, table[i].type);
    }

    return 0;
}