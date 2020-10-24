#include <stdio.h>

char* where_exists(char*str1, char*str2){

	int i, cont=0, cont2=0, a=1, p=0;
	
	//Verefies if the pointer is empty
	if(*str1=='\0'){
		return NULL;
	}
	
	//Gives variable cont the size of str1
	while(*(str1+cont)!='\0'){
			cont++;
	}
	
	//Gives variable cont2 the size of str2	
	while(*(str2+cont2)!='\0'){
			cont2++;
	}
	
	//Compares the 1st letter of each array
	for(i=0; i<cont2; i++){
		if(*(str2+i)==*(str1)){	
			p=1;	
			//Goes by while str1 as characters	
			while(*(str1+a)!='\0'){
				//if the char is equal to the other char increases 1 to variable p
				if(*(str1 + a)==*(str2+i+a)){
					p++;
				}
				//Increases 1 to variable a
				a++;
			}
		}
		
		//If variable p is equal to cont returns the position that as the 1st letter
		if(p==cont){
			return (str2+i);
		}
		p=0;	
	}

	return NULL;
}
