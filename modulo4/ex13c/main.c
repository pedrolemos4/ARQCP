#include <stdio.h>
#include "activate_bits.h"

int main()
{
	int a = 0;
	int left = 31;
	int right = 0;
	int res = activate_bits(a,left,right);
	printf("Resultado: %d\n",res);
	return 0;
}
