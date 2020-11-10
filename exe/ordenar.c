#include <stdio.h>

void ordenar(char *str){
	
	int i, k, cont=0, aux;
	
	while(* ( str + cont ) != '\0'){
		cont++;						//a variavel cont fica com o tamanho de str
	}

	for(i=0; i<cont; i++){
		for(k=i+1; k<cont; k++){
			if(*(str + k) < *(str + i) ){
				aux=*(str + i);
				*(str + i) = *(str + k);
				*(str + k) = aux;
			}
		}
	}	
}
