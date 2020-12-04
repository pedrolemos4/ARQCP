#include <stdio.h>
#include "asm.h"

int main()
{
	int aux[]={4};
	int *ptr =aux;
	int pos = 1;
	int f=activate_bit(ptr, pos);
	
	printf("Main: %d \n",f);
	printf("Main: %d \n",*(ptr));
	
	return 0;
}
