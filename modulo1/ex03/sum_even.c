#include <stdio.h>

int sum_even(int *v, int m){
	
	int i;
	int sum=0;
	
	for(i=0;i<m;i++){
	
		if(*(v + i)%2==0){
			sum += * ( v + i );
		}
	
	}

	return sum;

}
