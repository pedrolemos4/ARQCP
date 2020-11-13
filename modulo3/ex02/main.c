#include <stdio.h>
#include <string.h>
#include "asm.h"
#define MAX 100
char ptr3[MAX];
char *ptr1=ptr3;
char ptr4[MAX];
char *ptr2=ptr4;

int main(){
	int i;
	printf("Introduza a string:\n");
	
	fgets(ptr1, MAX, stdin);
	
	int tam_str = strlen(ptr1);
	*(ptr1+tam_str)=0;
	if(*(ptr1 + tam_str - 1) == '\n') 
	{
		*(ptr1 + tam_str - 1) = '\0';
		tam_str--;
	} else 
	{
		while(getchar() != '\n');
	}
	
	str_copy_porto();

	return 0;
}
