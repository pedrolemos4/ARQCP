#include <stdio.h>
#include "fill_student.h"

int main ()
{
	Student vec[5];
	
	Student *s = vec;
	
	char name1 [80] = "Tiago";
	char *ptrname1 = name1;
	
	char address1 [120] = "Rua do Isep, 2020";
	char *ptraddress1 = address1;
	
	fill_student(s,19,100,ptrname1,ptraddress1);
	printf("Nome: %s\nIdade: %d\nNúmero: %d\nMorada: %s\n\n\n",s->name, s->age,
	s->number,s->address);
	s++ ;
	*ptrname1++;
	
	char name2 [80] = "Pedro";
	char *ptrname2 = name2;
	
	char address2 [120] = "Rua do Varzim, 14";
	char *ptraddress2 = address2;
	
	fill_student(s,20,101,ptrname2,ptraddress2);
	printf("Nome: %s\nIdade: %d\nNúmero: %d\nMorada: %s\n\n\n",s->name, s->age,
	s->number,s->address);
	s++;
	
	char name3 [80] = "Zé";
	char *ptrname3 = name3;
	
	char address3  [120] = "Rua de Vila de Conde, 37";
	char *ptraddress3 = address3;
	
	fill_student(s,37,102,ptrname3,ptraddress3);
	printf("Nome: %s\nIdade: %d\nNúmero: %d\nMorada: %s\n\n\n",s->name, s->age,
	s->number,s->address);
	s++;
	
	char name4[80] =  "Bea";
	char *ptrname4 = name4;
	
	char address4 [120] = "Rua de Paredes, 2972891";
	char *ptraddress4 = address4;
	
	fill_student(s,18,103,ptrname4,ptraddress4);
	printf("Nome: %s\nIdade: %d\nNúmero: %d\nMorada: %s\n\n\n",s->name, s->age,
	s->number,s->address);
	s++;
	
	char name5[80] = "Ronaldo";
	char *ptrname5 = name5;
	
	char address5 [120] = "Rua da Juve, 2100";
	char *ptraddress5 = address5;
	
	fill_student(s,88,110,ptrname5,ptraddress5);
	printf("Nome: %s\nIdade: %d\nNúmero: %d\nMorada: %s\n\n\n",s->name, s->age,
	s->number,s->address);
	
	return 0;
}
