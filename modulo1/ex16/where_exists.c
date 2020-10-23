#include <stdio.h>

char* where_exists(char*str1, char*str2){

	int i=0,j, p;
	char *aux1=0;
	char *aux2=0;
	
	for(j=0; j<(*str2!=' '); j++){
		while(*(str2+i)!=' '){
			*(aux1 + i) = *(str2 + i);
			i++;
		}
		p=j;
		while((aux2!='\0')!=(str1!='\0')){
			*(aux2 + p) = *(aux1 + p);
			p++;
		}
		if(aux2 == str1){
			return (str2 + j);
		}
	}
	return NULL;

}
