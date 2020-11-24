#include <stdio.h>
#include <string.h>
#include "asm.h"

int num=3;
char aux1[]={-1,-2,-3};
char aux2[]={-3,-3,-3};
char *ptr1=aux1;
char *ptr2=aux2;

int main(){
	int i;
	
	printf("Ptr1\n");
	for(i=0;i<num;i++){
		printf("%u,",*(ptr1+i));
	}
	
	printf("\n Ptr2\n");
	for(i=0;i<num;i++){
		printf("%c,",*(ptr2+i));
	}
	
	printf("\n");
	
	return 0;
}
