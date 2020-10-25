#include <stdio.h>
#include "find_all_words.h"

int main(){

	char * str = "xrttas as sa";
	char *word = "as";
	char **a=0;
	
	find_all_words(str,word,a); 

	return 0;
}
