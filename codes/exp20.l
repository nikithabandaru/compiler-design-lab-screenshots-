%{
#include<stdio.h>

int macros = 0;
int headers = 0;
%}

DIGIT [0-9]+

%%

^#define.*      { macros++; }

^#include.*     { headers++; }

{DIGIT}         { printf("Constant : %s\n", yytext); }

[0-9]+\.[0-9]+  { printf("Constant : %s\n", yytext); }

.|\n            ;

%%

int yywrap()
{
    return 1;
}

int main()
{
    yyin = fopen("sample.c","r");

    if(yyin == NULL)
    {
        printf("Cannot open file\n");
        return 0;
    }

    yylex();

    printf("\nNumber of Macros = %d\n", macros);
    printf("Number of Header Files = %d\n", headers);

    fclose(yyin);

    return 0;
}