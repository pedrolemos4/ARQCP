#include <stdio.h>
#include "asm.h"

int code=0;
int currentSalary=0;


int main(void)
{
	int newSalary=0;
	//int choice = 0;
	//while(choice!=4)
	//{
	printf("Introduza o código do funcionário:\n");
	scanf("%d",&code);
	printf("Introduza o salário do funcionário:\n");
	scanf("%d",&currentSalary);
	newSalary=new_salary();
	printf("O novo salario é: %d€\n",newSalary);
	/*switch(code)
	{
		case 10:
		printf("Introduza o salário do funcionário:\n");
		scanf("%d",&currentSalary);
		newSalary=new_Salary();
		printf("O novo salário será: %d\n",newSalary);
		break;
		
		case 11:
		printf("Introduza o salário do funcionário:\n");
		scanf("%d",&currentSalary);
		newSalary=new_Salary();
		printf("O novo salário será: %d\n",newSalary);
		break;
		
	}*/

	return 0;
}
