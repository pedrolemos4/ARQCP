#include <stdio.h>
#include "asm.h"

int i=3;
int j=3;

int main (){

	int h1;
	printf("f1, i= %d, j=%d\n",i,j);
	h1=f1();
	printf("f1 result: %d\n",h1);
	
	int h2;
	printf("f2, i= %d, j=%d\n",i,j);
	h2=f2();
	printf("f2 result: %d\n",h2);
	
	int h3;
	printf("f3, i= %d, j=%d\n",i,j);
	h3=f3();
	printf("f3 result: %d\n",h3);
	
	int h4;
	printf("f4, i= %d, j=%d\n",i,j);
	h4=f4();
	printf("f4 result: %d\n",h4);

return 0;
}
