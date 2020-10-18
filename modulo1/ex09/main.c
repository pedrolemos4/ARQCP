#include <stdio.h>
#include "function.h"


int main()
{
	/*
	 * array filled with elements
	 */
	int a[] = {2,1,1,5,3,3,7,8,9,10,10,24,5};
	
	/*
	 * variable that will save the size of a[]
	 */
	int n;
	
	/*
	 * atribution to n
	 */
	n = sizeof(a)/sizeof(int);
	
	/*
	 * array that will be filled after the sort
	 */
	int b[n];
	
	/*
	 * variable that will save the size of b
	 */
	int number;
	
	/*
	 * auxiliar variable
	 */
	int i;
	
	/*
	 * atribution to number
	 */
	number = sort_without_reps(a,n,b);
	
	/*
	 * printing of any value of b
	 */
	for(i=0;i<number;i++)
	{
			printf("%d\n",b[i]);
	}
	
	return 0;
}
