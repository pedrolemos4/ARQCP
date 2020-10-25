#include <stdio.h>
#include <time.h>
#include <stdlib.h>


int number_sets=0;

void populate (int *vec, int num, int limit)
{
	srand(time(0));
	int i,r;
	for(i = 0; i<num;i++)
	{
		r = rand() % limit;
		*(vec+i) = r;
	}
}

int check (int x, int y, int z)
{
	int value = 0;
	if( y > x && z > y)
	{
		value = 1;
	}
	return value;
}

void inc_nsets()
{
	number_sets++;
}
