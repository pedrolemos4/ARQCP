#include <stdio.h>

void find_all_words(char* str, char* word, char** addrs){

		int i, cont=0, cont2=0, a=1, p=0,f=0, z=0;
	
	//Gives variable cont the size of str1
	while(*(word+cont)!='\0'){
			cont++;
	}
	
	//Gives variable cont2 the size of str2	
	while(*(str+cont2)!='\0'){
			cont2++;
	}
	
	//Compares the 1st letter of each array
	for(i=0; i<cont2; i++){
		if(*(str+i)==*(word)){	
			p=1;	
			//Goes by while str1 as characters	
			while(*(word+a)!='\0'){
				//if the char is equal to the other char increases 1 to variable p
				if(*(word + a)==*(str+i+a)){
					p++;
				}
				//Increases 1 to variable a
				a++;
			}
		}
		
		//If variable p is equal to cont adds to the pointer addrs
		if(p==cont){
			if(f==15){
				z++;
			addrs[z][f] = *(str+i);
			f++;
			}
		}
		p=0;	
	}

}
