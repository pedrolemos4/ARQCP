#include <stdio.h>
#include "asm.h"

int main()
{
	int res;
	int a,b,c;
	
	printf("Introduza o número a:\n");
	scanf("%d",&a);
	printf("Introduza o número b:\n");
	scanf("%d",&b);
	printf("Introduza o número c:\n");
	scanf("%d",&c);
	
	res = greatest(a,b,c);

	printf("O maior dos três números é: %d\n",res);

	return 0;
}
