#include <stdio.h>
#include "asm.h"

int main()
{
	int temperaturas[3]={0x23281f1a,0x0100e0f6,0xf7ff0200};
	int *temps = temperaturas;
	short int max_min;

	int media;
	
	media=stats(temps,3,&max_min);
	int valor_min = 0x0000FF00 & max_min;
	int valor_max = 0x000000FF & max_min;
	printf("Valor mínimo: %d\n",valor_min);
	printf("Valor máximo: %d\n",valor_max);
	printf("Média das amplitudes térmicas: %d\n",media);
	
	return 0;
}
