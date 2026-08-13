#include<stdio.h>

int main()
{
    printf("Given Grammar\n\n");

    printf("S -> iEtS | iEtSeS | a\n");
    printf("E -> b\n\n");

    printf("After Left Factoring\n\n");

    printf("S -> iEtSS' | a\n");
    printf("S' -> eS | Epsilon\n");
    printf("E -> b\n");

    return 0;
}
