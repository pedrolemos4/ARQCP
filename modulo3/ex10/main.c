#include <stdio.h>
#include <string.h>
#include "asm.h"
#define MAX 40

char aux1[MAX];
char aux2[MAX];
char aux3[MAX];
char *ptr1=aux1;
char *ptr2=aux2;
char *ptr3=aux3;

int main(){
	int i;
	
	printf("Introduza a 1 string:\n");
	
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
	
	printf("Introduza a 2 string:\n");
	
	fgets(ptr2, MAX, stdin);
	
	int tam_str1 = strlen(ptr2);
	*(ptr2+tam_str1)=0;
	if(*(ptr2 + tam_str1 - 1) == '\n') 
	{
		*(ptr2 + tam_str1 - 1) = '\0';
		tam_str1--;
	} else 
	{
		while(getchar() != '\n');
	}
	
	str_cat();
	
	for(i=0;i<strlen(ptr3);i++){
		printf("%c",*(ptr3+i));
	}
	
	printf("\n");
	
	return 0;
}
