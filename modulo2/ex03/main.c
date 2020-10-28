#include <stdio.h>
#include "asm.h"
int op1=0, op2=0;

int main(void) 
{
	int soma=0;
	int dif=0;
	printf("Valor op1:");
	scanf("%d",&op1);
	printf("Valor op2:");
	scanf("%d",&op2);
	soma=sum();
	dif = sum_v2();
	printf("sum = %d:0x%x\n", soma,soma);
	printf("dif = %d:0x%x\n", dif, dif);
	return 0;   
}
