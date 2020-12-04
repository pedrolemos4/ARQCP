#include <stdio.h>
#include "greater_date.h"

int main()
{
	unsigned int date1 = 10;
	unsigned int date2 = 5;
	int res= greater_date(date1,date2);
	printf("a maior data entre %d e %d é %d \n",date1,date2,res);
	return 0;
}
