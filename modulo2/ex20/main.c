#include <stdio.h>
#include "asm.h"

	char num=0;

int main (){
	printf("Insira o valor de i:\n");
	scanf("%c",&num);
	printf("O valor é: %u \n",check_num());
	return 0;
}
