#include <stdio.h>
#include "frequencies.h"

int main(){

	float grades[] = {2,0,1,1};
	int n = sizeof(grades)/sizeof(float);
	int freq[21] = {0,0,0,0,0,0, 0,0,0,0,0,  0,0,0,0,0, 0,0,0,0,0};
	frequencies(grades, n, freq);

	return 0;

}
