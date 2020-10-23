#include <stdio.h>
#include "function.h"

int main()
{
	char nome[] = "testedastringtttsss";
	char chac;
	int vec[100];
	int number;
	int i;
	
	printf("Insira o char que pretende procurar: \n");
	scanf("%c", &chac);
	
	number = where_is(nome,chac,vec);
	int tam = strlen(vec);
	for(i = 0; i<tam;i++){
		printf("%d\n", vec[i]);
	}



	return 0;
}
