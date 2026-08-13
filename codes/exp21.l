%{
#include<stdio.h>

int vowels=0;
%}

%%

[aAeEiIoOuU]    { vowels++; }

\n              { return 0; }

.               ;

%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter a sentence:\n");

    yylex();

    printf("\nNumber of vowels = %d\n", vowels);

    return 0;
}