#include <stdio.h>
#include <string.h>
#include "asm.h"
#define MAX 10

int num1[4] = {1,2,3,4};
int *ptrvec=num1;
int num=4;

int main(){
	int i;
	vec_add_one();
	
	for(i=0;i<sizeof(ptrvec);i++){
		printf("%d,",*(ptrvec+i));
	}
	printf("\n");
	
	return 0;
}
