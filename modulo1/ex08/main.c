#include <stdio.h>
#include "sort.h"

int main(){

	/*
	 * array filled with elements
	 */
	int a[]={5,8,2,1,4};
	
	/*
	 * variable that will save the size of a[]
	 */
	int n;
	
	/*
	 * attribution of n
	 */
	n = sizeof(a)/sizeof(int);
	
	/*
	 * auxiliar variable
	 */
	int i;
	
	/*
	 * sorting of a
	 */
	array_sort1(a,n);
	
	/*
	 * printing elements of a
	 */
	for(i=0;i<5;i++){
		printf("%d \n",a[i]);
	}

	return 0;
}
