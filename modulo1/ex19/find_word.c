#include<stdio.h>

char*find_word(char*  str,  char*  word,  char*initial_addr) {
	
	if (*word == '\0') return NULL;
	
	
	while(*initial_addr != '\0') {
		
		char* aux = word;
		char aux2 = *aux;
		if(aux2 > 96) {
			aux2-= 32;
		} else {
			aux2 += 32;
		}
			
		char* auxInitial = initial_addr;
		
		
		while(*aux != '\0' && (*aux == *initial_addr || aux2 == *initial_addr)) {
			aux++;
			aux2 = *aux;
			if(aux2 > 96) {
				aux2-= 32;
			} else {
				aux2 += 32;
			}
			initial_addr++;
		}
		
		if (*aux == '\0') return auxInitial;
		initial_addr++;
		
	}
	
	return NULL;
	
	
	
}