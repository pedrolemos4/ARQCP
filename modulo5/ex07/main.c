#include <stdio.h>
#include "fill_s1.h"

int main()
{
	s1 s_1;
	
	s1 *s = &s_1;
	
	fill_s1(s,1,2,3,4);

    printf("i = %d\nc = %d\nj = %d\nd = %d\n", s->i, s->c, s->j, s->d );
    
	return 0;
}
