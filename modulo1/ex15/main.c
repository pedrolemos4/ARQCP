#include <stdio.h>
#include "functions.h"

int main()
{
	int i;
	int vec[100];
	int *ptr=vec;
	populate(ptr,100,20);
	for(i = 0; i<97; i++)
	{
		if(check(*(ptr+i),*(ptr+i+1),*(ptr+1+2))==1)
		{
			inc_nsets();
		}
	}
	printf("There are %d consecutive sets of three elements in this array\n", 
	number_sets);
	return 0;
}
