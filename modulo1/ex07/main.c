#include <stdio.h>
#include "array_sort1.h"

int main(){

	int a[5]={5,8,2,1,4};
	int i;
	
	array_sort1(a,5);
	
	for(i=0;i<5;i++){
		printf("%d \n",a[i]);
	}

	return 0;
}
