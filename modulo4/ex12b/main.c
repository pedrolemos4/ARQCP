#include <stdio.h>
#include "asm.h"

int main()
{
	int aux[]={1};
	int *ptr =aux;
	int pos = 4;
	int f=activate_bit(ptr, pos);
	
	printf("Main: %d \n",f);
	printf("Main: %d \n",*(ptr));
	
	return 0;
}
