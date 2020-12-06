#include <stdio.h>
#include "asm.h"

int main()
{
	int a= 0;
	int b= -1;
	int pos = 15;
	printf("Main: %d \n",join_bits(a,b,pos));
	
	return 0;
}
