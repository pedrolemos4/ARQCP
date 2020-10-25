#include <stdio.h>

void compress_shorts(short* shorts, int n, int* integers){

	int i;
	short *aux = (short*) integers;
	for(i=0; i<n; i++){
		
		*(aux+i) = *(shorts+i);
		
	}

}
