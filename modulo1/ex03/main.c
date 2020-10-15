#include <stdio.h>
#include "sum_even.h"

int main (){
	
	int a[5]={2,4,5,6,8};
	
	sum_even(a,sizeof(a));
	
	printf("Soma deve ser 20 e dá: %d \n",sum_even(a,5));

	return 0;
}
