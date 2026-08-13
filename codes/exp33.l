%{
#include<stdio.h>
%}

%%

"http://"[^ \t\n]+      { printf("\nValid URL\n"); return 0; }

"https://"[^ \t\n]+     { printf("\nValid URL\n"); return 0; }

.+                      { printf("\nInvalid URL\n"); return 0; }

%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter URL: ");
    yylex();
    return 0;
}