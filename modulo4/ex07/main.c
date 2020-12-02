#include <stdio.h>
#include "asm.h"

int main()
{
	int res;
	short vec1[] = {2,4,5,7,9};
	int n = 5;
	short *vec=vec1;
	
	res = count_even(vec,n);

	printf("Resultado: %d\n", res);

	return 0;
}
