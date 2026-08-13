#include<stdio.h>

int main()
{
    char a,b,c,d;

    printf("Expression should be in the form a=b+c*d\n");

    printf("Enter Expression: ");

    scanf("%c=%c+%c*%c",&a,&b,&c,&d);

    printf("\nThree Address Code\n");

    printf("T1 = %c * %c\n",c,d);
    printf("T2 = %c + T1\n",b);
    printf("%c = T2\n",a);

    return 0;
}