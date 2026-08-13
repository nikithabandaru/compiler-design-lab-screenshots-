%{
#include<stdio.h>

int positive=0;
int negative=0;
%}

%%

-[0-9]+ { printf("Negative Number : %s\n",yytext); negative++; }

[0-9]+ { printf("Positive Number : %s\n",yytext); positive++; }

\n { 
printf("\nTotal Positive Numbers = %d\n",positive);
printf("Total Negative Numbers = %d\n",negative);
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
    printf("Enter numbers : ");
    yylex();
    return 0;
}