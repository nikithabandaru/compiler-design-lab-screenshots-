%{
#include<stdio.h>
#include<string.h>

int max=0;
char longest[100];
%}

%%

[A-Za-z]+ {
    if(strlen(yytext)>max)
    {
        max=strlen(yytext);
        strcpy(longest,yytext);
    }
}

\n {
    printf("\nLongest word = %s\n",longest);
    printf("Length = %d\n",max);
    return 0;
}

[ \t]+ ;

. ;

%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter a sentence: ");
    yylex();
    return 0;
}