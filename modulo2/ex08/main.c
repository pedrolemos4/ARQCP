#include <stdio.h>
#include "asm.h"

int main()
{
	op1=1;
	op2=0;
	short x = crossSumBytes();
	printf("Soma : %u\n",x);
	return 0;
}
