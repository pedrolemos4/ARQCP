#include <stdio.h>
#include "asm.h"

short simbolos;

int main(){
	
	char str1;
	char *str;
	unsigned char a;
	
	printf("Insira uma String com numero par de carateres e com tamanho maximo de 40 carateres\n");
	scanf("%c", str1);
		
		if(sizeof(str1)>40 || sizeof(str1)%2!=0){		
			printf("Insira a String com tamanho correto (40 carateres)\n");
			scanf("%s", str1);
		}	
	str=&str1;

	ordenar(str);
	
	a=trocar();
	
	return 0;
}
