#include <stdio.h>

void upper2(char *str){

	int i;
	
	for(i=0; i<*(str + i);i++){
	
		if(*(str+i) >= 'a' && *(str+i) <= 'z')
		{
			*(str+i) = *(str+i) - 32;
		}

	}
}
