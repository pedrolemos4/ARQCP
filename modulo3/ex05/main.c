#include <stdio.h>
#include <string.h>
#include "asm.h"
#define MAX 100
int vec[]={2,3};
int *ptrvec=vec;
int num=2;
int sum=0;
int media =0;
int main()
{
	
	//int vec[]={1,2,3,4,5};
	//*ptrvec = vec;
	//num = sizeof(vec)/sizeof(int);
	printf("Num = %d\n",num);
	//sum = vec_sum();
	//printf("Soma = %d\n",sum);
	media = vec_avg();
	printf("Média = %d\n",media);
	/*printf("Introduza os elementos do array:\n");
	fgets(ptrvec, MAX, stdin);
	int tam_str = strlen(ptrvec);
	if(*(ptrvec + tam_str - 1) == '\n') 
	{
		*(ptrvec + tam_str - 1) = '\0';
		tam_str--;
	} else 
	{
		while(getchar() != '\n');
	}
	printf("Introduziu: \"%d\"\n", ptrvec);*/
	
	/*int i ;
	do
	{
		printf("Introduza a quantidade de elementos que o array terá:\n");
		scanf("%d",&num);
	}while(num<1);

	int vec[num];
	
	ptrvec=vec;
	
	printf("Introduza os valores do array:\n");
	num = sizeof(vec)/sizeof(int);
	//printf("Tamanho do array: %d\n",sizeof(vec)/(sizeof(int)));
	//printf("Num = %d\n",num);
	
		for (i=0; i<num;i++)
		{
			scanf("%d\n",&*(ptrvec+i));
		}
*/

	return 0;
}
