%{
#include<stdio.h>
%}

%%

[6-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9] {
    printf("\nValid Mobile Number\n");
    return 0;
}

.* {
    printf("\nInvalid Mobile Number\n");
    return 0;
}

%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter Mobile Number: ");
    yylex();
    return 0;
}