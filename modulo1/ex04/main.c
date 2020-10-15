#include <stdio.h>
#include "replacer.h"

int main()
{
	char string[200];
	
	printf("Introduza a string que pretende converter:\n");
	scanf("%s", string);
	upper1(string);
	
	printf("A string introduzida convertida é: %s\n", string);
	
	return 0;
}
