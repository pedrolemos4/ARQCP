#include <stdio.h>
#include <string.h>

int main (void){

	/*union union_u1{
		char vec[32];
		float a;
		int b;
	} u; */
	
	struct struct_u1{
		char vec[32];
		float a;
		int b;
	} s;
	
	//union union_u1 * ptr = &u;
	struct struct_u1 * ptr = &s;
	strcpy(ptr->vec, "arquitetura de computadores");
	printf("[1]=%s\n", ptr->vec);
	ptr->a = 123.5;
	printf("[2]=%f\n", ptr->a);
	ptr->b = 2;
	printf("[3]=%d\n", ptr->b);
	
	printf("[1]=%s\n", ptr->vec);
	printf("[2]=%f\n", ptr->a);
	printf("[3]=%d\n", ptr->b);
	return 0;
}

/*Alinea a): inicialmente, até a atribuição da variável b, dá print 
 * de tudo direito, depois da atribuição da última variável, os valores
 * de vec e de a são corrompidos uma vez que a atribuição de b ocupou
 * o espaço de memória alocada e por isso é que apenas o valor de b 
 * não foi corrompido.*/
 
 /*Alinea b): neste caso dá print de tudo direito, visto que as struct 
  * não partilham da mesma forma que as union memória e as struct são
  * similares aos array, ou seja, têm uma região de memoria continua logo
  * os valores nao sao corrompidos.*/
