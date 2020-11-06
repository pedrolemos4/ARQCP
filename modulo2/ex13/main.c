#include <stdio.h>
#include "asm.h"

int base=0;
int height=0;

int main()
{
	printf("Introduza o valor da base:\n");
	scanf("%d", &base);
	printf("Introduza o valor da altura:\n");
	scanf("%d", &height);
	int res = getArea();
	printf("Resultado: %d\n", res);



	return 0;
}	
