#include <stdio.h>
#include <stdlib.h>

char* new_str(char str[80]){

	char *new_str = (char *) malloc(1);
	int i=0;
	
	while(str[i]!='\0'){
		*(new_str+i) = str[i];
		new_str = (char *) realloc(new_str, i+2);
		i++;
	}
	
	*(new_str+i)='\0';
	
	return new_str;
}
