#include <stdio.h>
#include "calcAvg.h"

void fill_array(int *a){
int i=0;
int num;

while(i<30){
scanf("%d", &num);
a[i]=num;
i++;
}
int avg ;
avg = calc_avg(a);
printf("Avg = %d\n", avg);
}
