#include <stdio.h>
#include <string.h>
#include "asm.h"
#define MAX 100
int vec[]={2,3};
int *ptrvec=vec;
int num=2;
int sum=0;
int media =0;
int main()
{
	sum = vec_sum();
	printf("Soma = %d\n",sum);
	media = vec_avg();
	printf("Média = %d\n",media);
	return 0;
}
