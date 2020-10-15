#include <stdio.h>
#include "conversor.h"

int main(){

char string[30];
int num=0;

printf("Insira a string que pretende converter:\n");
scanf("%s",string);
num = string_to_int(string);
printf("Número= %d\n", num);
return 0;
}
