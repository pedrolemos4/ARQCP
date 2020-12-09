#include <stdio.h>
#include "asm.h"

int main()
{
	char vec1[100] = {1,2,3};
	char *vec= vec1;
	int x =1000;
	int res;
	
	res=sum_multiples_x(vec, x);

	printf("Resultado: %d\n",res);

	return 0;
}
