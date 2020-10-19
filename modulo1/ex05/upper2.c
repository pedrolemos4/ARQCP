#include <stdio.h>

void upper2(char *str){

	int i;
	
	// Goes bye each position of the pointer
	
	for(i=0; i<*(str + i);i++){
		
		// Verifies if the letter is lowercase
	
		if(*(str+i) >= 'a' && *(str+i) <= 'z')
		{
			// Makes the letter upperccase
			*(str+i) = *(str+i) - 32;
		}

	}
}
