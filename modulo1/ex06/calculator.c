#include <stdio.h>
#include <math.h>

void power_ref(int *x, int y)
{
	double result;
	double base;
	double exp;
	base= (double) *x;
	exp=(double) y;
	result = pow(base,exp);
	
	printf("A potência é: %f\n", result);
}
