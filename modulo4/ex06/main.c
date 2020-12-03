#include <stdio.h>
#include "asm.h"

int main()
{
	char aaux[]= "1";
	char baux[] = "1";
	char *a = aaux;
	char *b = baux;
	
	printf("%d \n",test_equal(a,b));
	
	return 0;
}
