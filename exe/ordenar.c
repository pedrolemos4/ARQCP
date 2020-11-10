#include <stdio.h>

void ordenar(char *str){
	
	int i, k, cont=0, aux;
	
	while(* ( str + cont ) != '\0'){ // percorre a string até a posição estiver vazia
		cont++;						//a variável cont fica com o tamanho de str
	}

	for(i=0; i<cont; i++){					//percorre carater a carater da string
		for(k=i+1; k<cont; k++){			//percorre carater a carater da string mas vai 1 posicao adiantada ao for anterior
			if(*(str + k) < *(str + i) ){	//compara os valores de cada carater de acordo com a tabela ascii
				aux=*(str + i);				//atribui o valor da tabela ascii do carater a aux para ordenar
				*(str + i) = *(str + k);	//trocam de posições ficando ordenados
				*(str + k) = aux;			//atribui o valor de *(str+i) a *(str+k)
			}
		}
	}	
}
