%{
#include<stdio.h>

int line = 1;
%}

%%

.*\n   {
        printf("%d. %s", line++, yytext);
      }

.+     {
        printf("%d. %s\n", line++, yytext);
      }

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

    printf("Program with Line Numbers\n\n");

    yylex();

    fclose(yyin);

    return 0;
}