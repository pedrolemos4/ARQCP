#include <stdio.h>
#include <string.h>
#include "asm.h"

int vec[]={0,1,2,3,4,5,6,7,-2}; 
int *ptrvec=vec;
int num = 9;

int main()
{
	//int i=0;
	keep_positives();
	/*int i =0;
	printf("{");
	while (i < num){
		printf("%d,",*(ptrvec+i));	
		i++;
	}
	printf("}");
	printf("\n");*/
	return 0;

}
