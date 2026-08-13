%{
#include<stdio.h>
%}

%%

[0-9][0-9]\/[0-9][0-9]\/[0-9][0-9][0-9][0-9] { printf("Valid DOB\n"); return 0; }

[0-9][0-9]-[0-9][0-9]-[0-9][0-9][0-9][0-9] { printf("Valid DOB\n"); return 0; }

.* { printf("Invalid DOB\n"); return 0; }

%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter DOB (DD/MM/YYYY): ");
    yylex();
    return 0;
}