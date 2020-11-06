#include <stdio.h>
#include "asm.h"
char A;
int B;
long C;
long D;

int main(void)
{
	long long result = 0;
	printf("Valor do A(char):");
	scanf("%c",&A);
	printf("Valor do B(int):");
	scanf("%d",&B);
	printf("Valor do C(long):");
	scanf("%ld",&C);
	printf("Valor do D(long):");
	scanf("%li",&D);
	result = sum_and_subtract();
	printf("Result = %llu\n", result);
	return 0;
}
