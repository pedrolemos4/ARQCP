#include <stdio.h>
#include "asm.h"

int main()
{
	char aux [] = {3,5,11,12,7,4,0}; 
	char *vec;
	vec=aux;
	int x=0xf0301;
	
	int f=sum_multiples_x(vec,x);
	
	printf("Result: %d \n",f);
	
	return 0;
}
