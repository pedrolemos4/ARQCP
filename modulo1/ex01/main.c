#include <stdio.h>

int main(){
int x=5;
int* xPtr = &x;
float y = *xPtr +3;
int vec[] = {10,11,12,13};

printf("Value of x: %d\n", x);
printf("Value of y: %.2f\n", y);
printf("Address of x: %p\n", xPtr);
return 0;
}
