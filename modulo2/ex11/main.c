#include <stdio.h>
#include "asm.h"

int op1;
int op2;

int main()
{
	char res = 0;
	printf("Introduza o valor de op1: \n");
	scanf("%d",&op1);
	printf("Introduza o valor de op2: \n");
	scanf("%d", &op2);
	res = test_flags();
	printf("%c",res);

	return 0;
}
