#include <stdio.h>
#include "asm.h"

int A=0;
int B=0;
int C=0;
int D;

int main()
{
	int res=0;
	printf("Introduza o valor de A:\n");
	scanf("%d", &A);
	printf("Introduza o valor de B:\n");
	scanf("%d", &B);
	printf("Introduza o valor de C:\n");
	scanf("%d", &C);
	printf("Introduza o valor de D:\n");
	scanf("%d", &D);
	res=compute();
	printf("Resultado: %d\n",res);
	return 0;	
}	
