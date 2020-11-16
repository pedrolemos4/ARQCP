#include <stdio.h>
#include "asm.h"

short int vec[]={-1,-1,-1,-3}; 
short int *ptrvec=vec;
int num = 4;
short int x = -3;

int main()
{
	//printf("Insira o short int que pretende procurar:\n");
	//scanf("%hd",&x);
	
	short int *ptr2;
	ptr2 = vec_search();
	printf("%hu\n",ptr2);
	printf("%hu\n",&vec[3]);
	return 0;
}	
