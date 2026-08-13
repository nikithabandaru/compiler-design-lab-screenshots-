#include<stdio.h>

int main()
{
    printf("Grammar:\n");
    printf("S -> AaAb | BbBa\n");
    printf("A -> Epsilon\n");
    printf("B -> Epsilon\n\n");

    printf("FIRST(S) = { a, b }\n");
    printf("FIRST(A) = { Epsilon }\n");
    printf("FIRST(B) = { Epsilon }\n");

    return 0;
}