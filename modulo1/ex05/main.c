#include <stdio.h>
#include "upper2.h"

int main(){

	char string[200];
	
	printf("Introduza a string que pretende converter:\n");
	scanf("%s", string);
	upper2(string);
	
	printf("A string introduzida convertida é: %s\n", string);
	
	return 0;

}
