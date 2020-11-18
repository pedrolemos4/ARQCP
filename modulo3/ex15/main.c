#include <stdio.h>
#include "asm.h"

int vec[]={1,0,-1};
int *ptrvec=vec;
int num=3;

int main()
{
	int sum;
	sum = sum_first_byte();
	printf("Soma = %d\n",sum);
	return 0;
}
