%{
#include<stdio.h>

int comments = 0;
FILE *fp;
%}

%%

"//".*              { comments++; }

"/*"([^*]|\*+[^*/])*\*+"/"    { comments++; }

.|\n                { fputs(yytext, fp); }

%%

int yywrap()
{
    return 1;
}

int main()
{
    yyin = fopen("input.c","r");

    if(yyin == NULL)
    {
        printf("Cannot open input file\n");
        return 0;
    }

    fp = fopen("output.c","w");

    yylex();

    fclose(yyin);
    fclose(fp);

    printf("Number of comment lines = %d\n", comments);
    printf("Comments removed successfully.\n");
    printf("Output written to output.c\n");

    return 0;
}