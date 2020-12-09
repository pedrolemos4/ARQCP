#include <stdio.h>

void add_byte(char x, int *vec1, int *vec2) 
{
	//int i;
	int num = *(vec1);
	int mask = 0x0000000F & x;
	printf("X: %c\n",x);
	printf("Mask: %d\n",mask);
	/*for	(i = 0  ; i <= num ; i++)
	{
		*(vec2 + i) = *(vec1 + i) + mask;
	}	*/

}
