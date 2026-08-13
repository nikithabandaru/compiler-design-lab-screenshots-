%{
#include<stdio.h>

int chars = 0;
int words = 0;
int lines = 0;
%}

%%

\n              { lines++; chars++; }
[ \t]+          { chars += yyleng; }
[^ \t\n]+       { words++; chars += yyleng; }

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

    printf("\nCharacters = %d", chars);
    printf("\nWords = %d", words);
    printf("\nLines = %d\n", lines);

    fclose(yyin);

    return 0;
}