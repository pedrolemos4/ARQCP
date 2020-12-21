#include <stdio.h>
#include "new_str.h"

int main ()
{
	
	char str[80] = "avcds";
	char *p = new_str(str);
    printf("Nova String: .%s.\n",p);
    free(p);
	return 0;
}

/* É possível retornar apenas o adress com o tamanho necessário para o
 * array de chars visto que a paritr da memória dinâmica, apenas reservamos a 
 * mémoria que a string ocupa. */
