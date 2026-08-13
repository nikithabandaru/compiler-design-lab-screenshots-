%{
#include<stdio.h>
%}

letter [a-zA-Z_]
digit [0-9]

%%

"#include" { printf("Keyword : %s\n", yytext); }

"int"|"void"|"char"|"float"|"double"|"return" { printf("Keyword : %s\n", yytext); }

"printf"|"scanf" { printf("Function : %s\n", yytext); }

{letter}({letter}|{digit})* { printf("Identifier : %s\n", yytext); }

{digit}+ { printf("Constant : %s\n", yytext); }

"+"|"-"|"*"|"/"|"="|","|";" { printf("Operator : %s\n", yytext); }

"("|")"|"{"|"}" { printf("Delimiter : %s\n", yytext); }

\"[^\"]*\" { printf("String : %s\n", yytext); }

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

    printf("TOKENS\n\n");

    yylex();

    fclose(yyin);

    return 0;
}