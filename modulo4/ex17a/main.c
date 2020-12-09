#include <stdio.h>
#include "add_byte.h"

int main()
{
	char x = 'c';
	int vec0[] = {4,2,3,4,5};
	int vec[100];
	int *vec1 =vec0;
	int *vec2 =vec;
	add_byte(x,vec1,vec2);
	return 0;
}
