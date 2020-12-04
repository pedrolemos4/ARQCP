#include <stdio.h>
#include "asm.h"

int main()
{	
	int v[]={-1,-2,-4};
	int *ptr=v;
	int num=3;
	
	//printf("%d \n",count_bits_zero(0));

	printf("%d \n",vec_count_bits_zero(ptr, num));
	
	return 0;
}
