#include <stdio.h>

int activate_bit(int *ptr, int pos){
	
	int aux = *(ptr);
	
	int mask = 1<< pos;
	
	*(ptr) = aux | mask;
	
	if(aux==*(ptr)){		//verifica se o número alterado é igual ao original
		return 0;
	}
	
	return 1;

}
