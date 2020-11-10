#include <stdio.h>
#include "asm.h"

int main(){
	
	int i=0;
	
	char array[] = "caBd";
	ordenar(array);
	for(i=0; i<4; i++){
		printf("%c", *(array + i));
	}
	printf("\n");
	return 0;
}
