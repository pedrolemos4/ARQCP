#include <stdio.h>
#include <string.h>
#include "asm.h"

short ptrvec1[]={1,2,101,100};
short *ptrvec=ptrvec1;
int num=4;

int main(){
	int changed,i;
	
	changed=vec_zero();
	
	printf("Changed: %d\n",changed);
	
	for(i=0; i<num; i++){
		printf("%hd",ptrvec[i]);
	}
	
	printf("\n");
	
	return 0;
}
