#include <stdio.h>
#include "asm.h"

int main()
{
	int a=1;
	int b=3;
	int res;
	res= calculate(a,b);
	printf("Resultado = %d\n",res);
	return 0;
}

void print_result(char op, int o1, int o2, int res)
{
	printf("%d %c %d = %d\n", o1, op, o2, res);
}
