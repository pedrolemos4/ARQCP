#include <stdio.h>
#include "asm.h"

int op1=0, op2=0;

int main(void) 
{
	int a=0;
	printf("Valor op1:");
	scanf("%d",&op1);
	printf("Valor op2:");
	scanf("%d",&op2);
	a = sum2ints();
	printf("%d \n",a);
	

	return 0;   
}
