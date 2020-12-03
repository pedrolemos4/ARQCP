#include <stdio.h>
#include "asm.h"

int main()
{
	int a=2;
	int aux[]={1};
	int c=1;
	int *b=aux;
	
	printf("%d \n",calc(a,b,c));
	
	return 0;
}
