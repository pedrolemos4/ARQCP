#include <stdio.h>

void frequencies(float *grades, int n, int *freq){

int i,j;
int aux;
for(i=0; i<n; i++){
	aux=1;
	for(j=i+1; j<n; j++){
		if((int)*(grades+i) ==(int)*(grades+j)){
			aux++;
			*(freq+i)=0;
		}
		if(*(freq+i)!=0){
			*(freq+(int) *(grades+i))=aux;
		}
	}
}
	if((*(freq+(int) *(grades+0))=-1)){
		*(freq+(int) *(grades+0))=1;
	}
}
