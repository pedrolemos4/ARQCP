#include <stdio.h>

void array_sort1(int *v, int n){

	int i,k,aux;

	// Goes by each position in the pointer
	for(i=0;i<n;i++){
		// Goes one position ahead of the 1st for to compare
		for(k=i+1;k<n;k++){
			// Compares both values to order in ascending order
			if(*(v+i)>*(v+k)){
				aux = *(v+i);
				*(v+i) = *(v+k);
				*(v+k) = aux;
			
			}
		}
	}

}
