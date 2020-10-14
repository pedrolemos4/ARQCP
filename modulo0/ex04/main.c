#include <stdio.h>
#include "count.h"

int main(){
int a[20];
int i=0;
int num;
int x;

while(i<20){
scanf("%d", &num);
a[i]=num;
i++;
}

x= count(a,20,3);
printf("Número de vezes= %d\n", x);
return 0;
}

