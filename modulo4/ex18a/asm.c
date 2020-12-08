#include <stdio.h>

int sum_multiples_x(char *vec, int x){
	
	int i=0, cont=0, size=0;
	
	while(*(vec+i)!='\0'){
		size++;												//gets the amount of elements in vec
		i++;
	}
	
	int maskByte2=0b00000000000000001111111100000000;		//mask for 2nd byte
	int byte2 = x & maskByte2;
	
	byte2 = byte2 >> 8;										//get the number to see if 
															//its multiple
	for(i=0; i<size;i++){
		if(*(vec+i)%byte2==0){
			cont=cont+*(vec+i);
		}
	}
	
	return cont;
	
}
