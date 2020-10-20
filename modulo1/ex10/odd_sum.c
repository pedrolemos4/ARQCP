#include <stdio.h>

int odd_sum(int *p){

	int k, sum = 0;

	//Saves the size of the pointer
	int z = *p;
	
	//Verifies if the odd numbers
	for(k=1 ; k < z+1; k++){
		if(*(p+k)%2 != 0){
			sum = sum + *(p+k);
		}
	}
	
	return sum;

}
