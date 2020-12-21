#include <stdio.h>
#include <stdlib.h>
#include "find_matrix.h"

int main ()
{
	
    int m;
	int lines =2;
	int columns = 3;
	int **a;
	a = new_matrix(lines,columns);
	
	int y = 3;
	int k = 3;
	int i,l;
	for(i=0;i<y;i++){
		for(l=0;l<y;l++){
			a[i][l]= rand();
		}
	}
	
	int num = 1;
	int o=find_matrix(a, y, k, num);
    
    printf("Int: %d\n",o);
    for(m=0;m<lines;m++)
	{ 
		free(*(a+m));
	}
	free(a);
	return 0;
}


