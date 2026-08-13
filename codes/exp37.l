%{
#include<stdio.h>
#include<string.h>

char search[50];
int count=0;
%}

%%

[A-Za-z]+ { 
    if(strcmp(yytext,search)==0)
        count++;
}

\n {
    printf("\nFrequency of %s = %d\n",search,count);
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
    printf("Enter word to search: ");
    scanf("%s",search);
    getchar();

    printf("Enter a sentence: ");
    yylex();

    return 0;
}