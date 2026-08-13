%{
#include<stdio.h>
%}

letter [a-zA-Z_]
digit [0-9]

%%

"int"|"float"|"char"|"double"|"void"|"if"|"else"|"for"|"while"|"do"|"return"|"break"|"continue"|"switch"|"case"|"default"|"goto"|"long"|"short"|"signed"|"unsigned"|"const"|"static"|"struct"|"union"|"enum"|"typedef"|"extern"|"register"|"volatile"|"sizeof" { printf("Keyword : %s\n", yytext); }

{letter}({letter}|{digit})* { printf("Identifier : %s\n", yytext); }

[ \t\n]+ ;

. ;

%%

int yywrap()
{
    return 1;
}

int main()
{
    yyin=fopen("sample.c","r");

    if(yyin==NULL)
    {
        printf("Cannot open sample.c");
        return 0;
    }

    printf("Keywords and Identifiers\n\n");

    yylex();

    fclose(yyin);

    return 0;
}