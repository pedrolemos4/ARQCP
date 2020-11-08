#include <stdio.h>
#include "asm.h"

int code=0;
int currentSalary=0;


int main(void)
{
	int newSalary=0;
	printf("Introduza o código do funcionário:\n");
	scanf("%d",&code);
	printf("Introduza o salário do funcionário:\n");
	scanf("%d",&currentSalary);
	newSalary=new_salary();
	printf("O novo salario é: %d€\n",newSalary);
	return 0;
}
