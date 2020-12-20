#include <stdio.h>
#include <stdlib.h>

int **new_matrix(int lines, int columns)
{
	int m;
	int **a;
	a = (int**) calloc(lines,sizeof(int*));
	if(a == NULL)
	{
		printf("Error reserving memory.\n");
		exit(1);
	}
	
	for(m=0; m<lines ; m++)
	{
		*(a+m) = (int*) calloc(columns,sizeof(int));
		if(a[m]==NULL)
		{
			printf("Error reserving memory.\n");
			exit(1);
		}
	}
	return a;
}
