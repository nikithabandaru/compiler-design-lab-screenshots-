%{
#include<stdio.h>
#include<string.h>
%}

%%

[A-Za-z][A-Za-z0-9._]*@[A-Za-z0-9.-]+\.[A-Za-z][A-Za-z]+ {
    printf("\nValid Email Address\n");
    return 0;
}

.* {
    printf("\nInvalid Email Address\n");
    return 0;
}

%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter Email Address: ");
    yylex();
    return 0;
}