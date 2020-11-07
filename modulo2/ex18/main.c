#include <stdio.h>
#include "asm.h"

	int i=0;

int main (){
	int somatorio=0; 
	printf("Insira o valor de i:\n");
	scanf("%d",&i);
	somatorio = funcao();
	printf("O valor é: %d \n",somatorio);
	return 0;
}
