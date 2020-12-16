#include <stdio.h>
#include "fill_s2.h"

int main(){

	s2 vec;
	
	s2 *s = &vec;
	
	short vw[3] = {1,2,3};
	
	int vj = 4;
	
	char vc[3] = {5,6,7};

	fill_s2(s, vw, vj, vc);
	
	return 0;
}
