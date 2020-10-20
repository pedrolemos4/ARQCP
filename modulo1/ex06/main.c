#include <stdio.h>
#include "calculator.h"

int main()
{
	int a,y;
	//int *x;
	printf("Introduza a base e o expoente\n");
	scanf("%d %d", &a,&y);
	/*x= &a;
	*x=a;*/
	power_ref(a,y);

	return 0;
}
