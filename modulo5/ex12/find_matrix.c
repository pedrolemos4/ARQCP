#include <stdio.h>
#include <stdlib.h>

int find_matrix(int **m, int y, int k, int num){
	
	int i,j;
	
	int **linha = m;
	
	int *coluna = *linha;
	
	for(i=0;i<y;i++){
		for(j=0;j<k;j++){
			
			if(*coluna == num ){
				return 1;
			}
			coluna++;
		}
		linha++;
		coluna = *linha;
	}
	
	return 0;
}
