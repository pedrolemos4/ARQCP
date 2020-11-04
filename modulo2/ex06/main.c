#include <stdio.h>
#include "asm.h"

char byte1;
char byte2;
int main()
{
	printf("byte1: ");
	scanf("%c", &byte1);
	printf("byte2: ");
	scanf(" %c",&byte2);
	short x = concatBytes();
	printf("O valor é %hd\n",x);
	return 0;
}
