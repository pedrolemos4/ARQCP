#include <stdio.h>
#include "sum.h"


int main(){
int num1=0;
//int num2=0;
int soma =0;
do{
num1 = num1 + 1 ;
//num2 = num2 + 1 ;
soma=0;
soma = sum(num1);
printf ("Soma = %d\n", soma);
}while(soma<10);


return 0;
}

