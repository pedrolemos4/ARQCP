#include <stdio.h>
#include <string.h>
#include "asm.h"
#define MAX 100
char ptr[MAX];
char *ptr1=ptr;
int main()
{
	int count;
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
//	ptr1 = str;
	//printf("Pointer: \"%s\"\n", ptr1);
	count = zero_count();
	printf("O zero aparece %d vezes\n",count);
	return 0;
}
