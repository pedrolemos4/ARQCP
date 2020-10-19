#include <stdio.h>
#include "odd_sum.h"

int main(){

	int a[] = {4,6,3,9,2};
	int *p;
	p = a;
	printf("Soma: %d \n",odd_sum(p));
	return 0;
}
