#include <stdio.h>
#include <string.h>
#include "asm.h"

int even = 1;
int aux[4]={1,2,3,4};
int *ptrvec=aux;
int num = 4;

int main(){
	
	printf("Test_Even: \n");
	
	printf("%d ",test_even());	
	
	printf("\n Vec_Sum_Even: \n");
	
	vec_sum_even();
	
	printf("%d",vec_sum_even());
	
	printf("\n");
	
	return 0;
}
