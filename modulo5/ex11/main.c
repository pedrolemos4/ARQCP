#include <stdio.h>
#include "new_matrix.h"
#include <stdlib.h>

int main()
{
	int m;
	int lines =2;
	int columns = 3;
	int **a;
	a = new_matrix(lines,columns);
	
	for(m=0;m<lines;m++)
	{
		free(*(a+m));
	}
	free(a);
	
	
	return 0;
}
