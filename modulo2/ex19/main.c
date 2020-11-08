#include <stdio.h>
#include "asm.h"

short current;
short desired;

int main(void)
{
	int res = 0;
	printf("Introduza a temperatura atual:\n");
	scanf("%hd",&current);
	printf("Introduza a temperatura desejada:\n");
	scanf("%hd",&desired);
	res=needed_time();
	printf("São necessários %d segundos para atingir a temperatura desejada\n",res);
	return 0;
 }
