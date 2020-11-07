#include <stdio.h>
#include "asm.h"

int num=0;

int main (){
	int valor;
	printf("Insira o valor:\n");
	scanf("%d",&num);
	valor = steps();
	printf("O valor é: %d \n",valor);
	return 0;
}
