%{
#include<stdio.h>
%}

%%

abc     { printf("ABC"); }

\n      { return 0; }

.       { printf("%s", yytext); }

%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter a string: ");
    yylex();
    return 0;
}