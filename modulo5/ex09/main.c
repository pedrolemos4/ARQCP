#include <stdio.h>
#include "functions.h"

int main()
{
	structA sA;
	structA *sA_ptr = &sA;
	
	sA_ptr->x=1;
	sA_ptr->y=88;
	
	structB sB;
	structB *sB_ptr = &sB;
	
	sB_ptr->a=sA;
	sB_ptr->b=sA_ptr;
	sB_ptr->x=2;
	sB_ptr->c=3;
	sB_ptr->y=4;
	sB_ptr->e[0]=5;
	sB_ptr->e[1]=6;
	sB_ptr->e[2]=7;
	sB_ptr->z=8;
	
	short res1 = fun1(sB_ptr);
	printf("Fun1 : s->a.x = %d\n", res1);
    
    short res2 = fun2(sB_ptr);
    printf("Fun2 : s->z = %d\n", res2);
    
    short * res3 = fun3(sB_ptr);
    printf("Fun3 : &s->z = %p\n", res3);
    
    short res4 = fun4(sB_ptr);
    printf("Fun4 : s->b->x = %d\n", res4);
	
	
	
	return 0;
}
