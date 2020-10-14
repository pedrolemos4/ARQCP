#include <stdio.h>

int count(int *vec, int n, int value){
int i=0;
int cont=0;

while(i<n){
if(vec[i]==value){
cont++;
}
i++;
}

return cont;
}
