#include <stdio.h>
#include "asm.h"

int op1=0;
int op2=0;

int main(void)
{
	int choice =0;
	while(choice!=8)
	{
		printf("Choose one of the calculator options:\n1-Sum\n2-Subtract\n3-Multiplication\n4-Division\n5-Modulus\n6-Power of 2\n7-Power of 3\n8-Exit Calculator\n");
		scanf("%d",&choice);
		if(choice > 8 || choice < 1)
		{
			printf("Invalid option!!\nChoose from the availables:\n1-Sum\n2-Subtract\n3-Multiplication\n4-Division\n5-Modulus\n6-Power of 2\n7-Power of 3\n8-Exit Calculator\n");
			scanf("%d",&choice);
		}
		switch(choice)
		{
			case 1 :
			printf("Op1:\n");
			scanf("%d",&op1);
			printf("Op2:\n");
			scanf("%d",&op2);
			res=sum();
			printf("Result= %d\n",res);
			break;
			
			case 2 :
			printf("Op1:\n");
			scanf("%d",&op1);
			printf("Op2:\n");
			scanf("%d",&op2);
			res=subtract();
			printf("Result= %d\n",res);
			break;
			
			case 3:
			printf("Op1:\n");
			scanf("%d",&op1);
			printf("Op2:\n");
			scanf("%d",&op2);
			res = multiplication();
			printf("Result= %d\n",res);
			break;
			
			case 4:
			printf("Op1:\n");
			scanf("%d",&op1);
			printf("Op2:\n");
			scanf("%d",&op2);
			res = division();
			printf("Result= %d\n",res);
			break;
			
			case 5:
			printf("Op1:\n");
			scanf("%d",&op1);
			printf("Op2:\n");
			scanf("%d",&op2);
			res= modulus();
			printf("Result= %d\n",res);
			break;
		
			case 6:
			printf("Op1:\n");
			scanf("%d",&op1);
			res = powerof2();
			printf("Result= %d\n",res);
			break;
			
			case 7:
			printf("Op1:\n");
			scanf("%d",&op1);
			res = powerof3();
			printf("Result= %d\n",res);
		}
	}
	return 0;
}
