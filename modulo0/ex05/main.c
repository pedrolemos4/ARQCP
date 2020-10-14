#include <stdio.h>


int main(){

char string;
int num;

scanf("%s",&string);
num = string_to_int(string);
printf("Número= %d", &num);
return 0;
}
