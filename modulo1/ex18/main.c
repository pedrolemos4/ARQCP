#include <stdio.h>
#include "compress_shorts.h"

int main (){

	int i;

	short v1[]={1,2};
	int i1[2];
	compress_shorts(v1,sizeof(v1)/sizeof(short),i1);
	
	for(i=0; i<sizeof(v1)/sizeof(short); i++){
		printf("%d \n",i1[i]);
	}

	return 0;
}
