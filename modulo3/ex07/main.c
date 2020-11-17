#include <stdio.h>
#include <string.h>
#include "asm.h"
#define MAX 100

char str[MAX];
char *ptr1=str;


int main()
{
	int k;
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
	int x = encrypt();
	
	for(k=0; k<strlen(ptr1); k++){
		printf("%c",*(ptr1+k));
	}
	
	printf("\n");
	
	int f = decrypt();
	
	printf("Soma: %d \n", f);
	
	for(k=0; k<strlen(ptr1); k++){
		printf("%c",*(ptr1+k));
	}
	
	printf("\n");

	return 0;
}
