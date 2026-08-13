%{
#include<stdio.h>

int consonants = 0;
%}

%%

[b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z]   { consonants++; }

\n    { return 0; }

.     ;

%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter a sentence: ");
    yylex();

    printf("\nNumber of consonants = %d\n", consonants);

    return 0;
}