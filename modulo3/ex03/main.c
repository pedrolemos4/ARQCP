#include <stdio.h>
#include <string.h>
#include "asm.h"
#define MAX 100
char ptr[MAX];
char *ptr1=ptr;
char ptr3[MAX];
char *ptr2=ptr3;

int main()
{
	int i ;
	printf("Introduza a string:\n");
	
	fgets(ptr1, MAX, stdin);
	
	int tam_str = strlen(ptr1);
	if(*(ptr1 + tam_str - 1) == '\n') 
	{
		*(ptr1 + tam_str - 1) = '\0';
		tam_str--;
	} else 
	{
		while(getchar() != '\n');
	}
	printf("Introduziu: \"%s\"\n", ptr1);
	
	str_copy_porto2();
	
	for (i=0;i<strlen(ptr2);i++)
	{
		printf("%c",*(ptr2+i));
	}

	printf("\n");

	return 0;
}
