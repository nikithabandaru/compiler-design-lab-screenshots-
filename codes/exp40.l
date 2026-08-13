%{
#include<stdio.h>
%}

letter [a-zA-Z_]
digit [0-9]

%%

"int"|"float"|"char"|"double"|"void"|"return"|"if"|"else"|"for"|"while"|"do"|"break"|"continue"|"switch"|"case"|"default"|"struct"|"union"|"enum"|"typedef"|"const"|"static" { printf("KEYWORD    : %s\n",yytext); }

"printf"|"scanf" { printf("FUNCTION   : %s\n",yytext); }

{letter}({letter}|{digit})* { printf("IDENTIFIER : %s\n",yytext); }

{digit}+ { printf("CONSTANT   : %s\n",yytext); }

"+"|"-"|"*"|"/"|"="|"%" { printf("OPERATOR   : %s\n",yytext); }

"("|")"|"{"|"}"|"["|"]"|","|";" { printf("DELIMITER  : %s\n",yytext); }

\"[^\"]*\" { printf("STRING     : %s\n",yytext); }

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
        printf("Cannot open sample.c\n");
        return 0;
    }

    printf("TOKENS IN C PROGRAM\n\n");

    yylex();

    fclose(yyin);

    return 0;
}