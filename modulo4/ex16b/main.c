#include <stdio.h>
#include "asm.h"

int main()
{
	int aux[]={8388608};
	int *ptr=aux;
	
	changes(ptr);
	
	printf("Main: %d \n", changes(ptr));
	
	return 0;
}
