#include <stdio.h>
#include "asm.h"

int main()
{
	int res;
	int v;
	int v2;
	printf("Introduza o número v:\n");
	scanf("%d",&v);
	int *v1=&v;
	
	printf("Introduza o número v2:\n");
	scanf("%d",&v2);
	
	res = inc_and_square(v1, v2);
	
	printf("%d ao quadrado é: %d\n",v2,res);



	return 0;
}
