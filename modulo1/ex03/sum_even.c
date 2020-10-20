#include <stdio.h>

int sum_even(int *v, int m){
	
	int i;
	int sum=0;
	
	// Goes by each position of the pointer and in the if verifies the
	// even numbers and if it is truth, it adds the value to sum 
	
	for(i=0;i<m;i++){
	
		if(*(v + i)%2==0){
			sum += * ( v + i );
		}
	
	}

	return sum;

}
