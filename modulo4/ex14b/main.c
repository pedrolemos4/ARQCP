#include <stdio.h>
#include "asm.h"

int main()
{
	int a = 0;
	int b = -1;
	int pos = 15;
	int f = join_bits(a,b,pos);
	
	printf("Main: %d \n",f);
	
	return 0;
}
