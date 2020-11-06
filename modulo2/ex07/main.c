#include <stdio.h>
#include "asm.h"

short s1=0;
short s2=0;

int main(void)
{
	short res = 0;
	printf("Short1:\n");
	scanf("%hd",&s1);
	printf("Short2:\n");
	scanf("%hd", &s2);
	res = crossSumBytes();
	return 0;
}
