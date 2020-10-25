#include <stdio.h>
#include "function.h"

int main()
{
	int i;
	int vec1[]={1,2,3,7};
	int vec2[]={5,7,8,10};
	
	int tam = sizeof(vec1)/sizeof(int);
	
	swap(vec1,vec2,tam);
	
	printf("Array 1\n");
	for(i=0; i<tam;i++)
	{
		printf("%d\n",vec1[i]);
	}
	
	printf("Array 2\n");
	for(i=0; i<tam; i++)
	{
		printf("%d\n", vec2[i]);
	}
	return 0;
}
	
