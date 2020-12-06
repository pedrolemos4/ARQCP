#include <stdio.h>

int join_bits(int a, int b, int pos){
	
	int i;
	int mask=1;
	
	for(i=0;i<pos;i++){
		mask=mask<<1;
		mask++;
	}
	
	a=a&mask;
	b=~(mask)&b;
	
	return a+b;
	
}
