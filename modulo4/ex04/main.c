#include <stdio.h>
#include "asm.h"

int main()
{
	int num1=4, num2=2,i;
	int aux[2];
	int *smaller=aux;
	
	printf("Eax: %d\n",sum_smaller(num1,num2,smaller));
	
	for(i=0;i<1;i++){
		printf("Smaller: %d \n",*(smaller+i));
	}
	
	return 0;
}
