#include <stdio.h>
#include "add_byte.h"

int main()
{
	char x = 9;
	printf("%c\n",x);
	int vec0[] = {3,2,3,1};
	int vec[3];
	//int *vec1 =vec0;
	//int *vec2 =vec;
	add_byte(x,&vec0,&vec);
	int i;
	for(i=0;i<3;i++)
	{
		printf("%d\n",vec[i]);
	}
	return 0;
}
