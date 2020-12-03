#include <stdio.h>
#include "rotate_left.h"
#include "rotate_right.h"

int main()
{
	int num =3;
	int n=2;
	int res;
	int res1;
	
	res =rotate_left(num,n);
	res1 = rotate_right(num,n);
	
	printf("Rotação à esquerda= %d\n",res);
	printf("Rotação à direita= %d\n",res1);

	return 0;
}
