#include <stdio.h>
#include "asm.h"

int main ()
{
	int res;
	int x=0;
	printf("Introduza o número:\n");
	scanf("%d",&x);
	res = cube(x);
	
	printf("%d ao cubo é: %d\n",x,res);
	
	return 0;
}
