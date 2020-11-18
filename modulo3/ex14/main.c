#include <stdio.h>
#include <string.h>
#include "asm.h"

int num=3;
short int elements[3] = {1,0,1};
short int x;
short int *ptrvec=elements;

int main(){
	int valor1, valor2;
	x=2;
	valor1=exists();
	
	printf("Exists: %d\n",valor1);
	printf("Vec_diff: \n");
	
	valor2=vec_diff();
	printf("%d\n",valor2);
	
	return 0;
}
