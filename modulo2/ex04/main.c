#include <stdio.h>
#include "asm.h"

int op1=0, op2=0;

int main(void) 
{
	op3=0;
	op4=0;
	int soma=0;
	int dif=0;
	int sumDif=0;
	printf("Valor op1:");
	scanf("%d",&op1);
	printf("Valor op2:");
	scanf("%d",&op2);
	printf("Valor op3:");
	scanf("%d",&op3);
	printf("Valor op4:");
	scanf("%d",&op4);
	soma=sum();
	dif = sum_v2();
	sumDif = sum_v3();
	printf("sum = %d:0x%x\n", soma,soma);
	printf("dif = %d:0x%x\n", dif, dif);
	printf("sumDif = %d:0x%x\n", sumDif, sumDif);
	return 0;   
}
