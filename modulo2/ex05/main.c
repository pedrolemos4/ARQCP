#include <stdio.h>
#include "asm.h"
short s = 0;

int main(void)
{
	short newS =0;
	printf("Valor do short:");
	scanf("%hd", &s);
	newS= swapBytes();
	printf("New short = %hd\n", newS);
	return 0;
}
