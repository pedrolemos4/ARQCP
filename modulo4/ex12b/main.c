#include <stdio.h>
#include "asm.h"

int main()
{
	int aux[]={0x11};
	int *ptr =aux;
	int pos = 12;
	int f=activate_bit(ptr, pos);
	
	printf("Main: %d \n",f);
	printf("Main: %d \n",*(ptr));
	
	return 0;
}
