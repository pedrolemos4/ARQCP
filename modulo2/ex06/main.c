#include <stdio.h>
#include "asm.h"
short s = 0;
char p=0,t=0;

int main(void)
{
	short charS=0;
	printf("Valor do short: \n");
	scanf("%hd", &s);
	
	printf("Valor do 1 byte:\n");
	scanf("%c", &p);
	printf("Valor do 2 byte:\n");
	scanf("%c", &t);
	
	//newS= swapBytes();
	charS=concatBytes();
	printf("Short = %hd\n", charS);
	return 0;
}
