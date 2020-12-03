#include <stdio.h>
#include "activate_bits.h"

int main()
{
	int a = 2;
	int left = 5;
	int right = 5;
	int res = activate_bits(a,left,right);
	printf("Resultado: %d\n",res);
	return 0;
}
