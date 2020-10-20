#include <stdio.h>

void capitalize(char *str){

	int i=0;
	
	// Making the 1st letter uppercase
	if(*(str+0) >= 'a' && *(str+0) <= 'z'){
		*(str + 0)= *(str+0) - 32; 
	}
	
	// Going by each position while the string doesnt end and checking 
	//if the position is a space, the next char, 1st letter of the next word,
	// replaces for its uppercase
	while( *(str + i)!= '\0' ){
		if( *(str + i) == ' ' ){
			if(*(str+i+1) >= 'a' && *(str+i+1) <= 'z'){
				* (str + i + 1) =  *(str + i+1) - 32;
			}
		}
		i++;
	}
}
