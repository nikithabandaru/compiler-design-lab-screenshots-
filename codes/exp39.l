%{
#include<stdio.h>
#include<string.h>

char oldword[50];
char newword[50];
%}

%%

[A-Za-z]+ {
    if(strcmp(yytext,oldword)==0)
        printf("%s",newword);
    else
        printf("%s",yytext);
}

[ \t\n]+ {
    printf("%s",yytext);
}

. {
    printf("%s",yytext);
}

%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter word to replace: ");
    scanf("%s",oldword);

    printf("Enter new word: ");
    scanf("%s",newword);

    getchar();

    yyin=fopen("input.txt","r");

    if(yyin==NULL)
    {
        printf("Cannot open input.txt\n");
        return 0;
    }

    printf("\nModified File Content:\n\n");

    yylex();

    fclose(yyin);

    return 0;
}