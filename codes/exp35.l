%{
#include<stdio.h>
%}

%%

[0-9] { printf("It is a digit\n"); return 0; }

.* { printf("It is not a digit\n"); return 0; }

%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter a character: ");
    yylex();
    return 0;
}