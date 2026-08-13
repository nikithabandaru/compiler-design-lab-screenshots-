%{
#include<stdio.h>

int a=0;
int b=0;
char op;
int count=0;
%}

%%

[0-9]+ {
    if(count==0)
    {
        a=atoi(yytext);
        count++;
    }
    else
    {
        b=atoi(yytext);
        count++;
    }
}

"+" { op='+'; }
"-" { op='-'; }
"*" { op='*'; }
"/" { op='/'; }

\n {
    if(count==2)
    {
        if(op=='+')
            printf("Result = %d\n",a+b);

        else if(op=='-')
            printf("Result = %d\n",a-b);

        else if(op=='*')
            printf("Result = %d\n",a*b);

        else if(op=='/')
        {
            if(b!=0)
                printf("Result = %d\n",a/b);
            else
                printf("Cannot divide by zero\n");
        }
    }

    return 0;
}

[ \t]+ ;

. {
    printf("Invalid input\n");
    return 0;
}

%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter expression: ");
    yylex();
    return 0;
}