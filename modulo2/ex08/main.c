#include <stdio.h>
#include "asm.h"

int main()
{
	short x = crossSumBytes();
	printf("Soma : %u\n",x);
	return 0;
}
