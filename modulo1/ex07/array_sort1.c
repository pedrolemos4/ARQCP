#include <stdio.h>

void array_sort1(int *v, int n){

	int i,k,aux;

	for(i=0;i<n;i++){
		for(k=i+1;k<n;k++){
			if(*(v+i)>*(v+k)){
			
				aux = *(v+i);
				*(v+i) = *(v+k);
				*(v+k) = aux;
			
			}
		}
	}

}
