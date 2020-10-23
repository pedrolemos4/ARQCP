#include <stdio.h>
#include <string.h>
#include "function.h"


int main()
{
	int result;
	
	char word[]= "Gateman sees name, garageman sees name tag";
	result = palindrome(word);
	
	if(result==1)
	{
		printf("Word is palindrome\n");
	} else 
	{
		printf("Word is not palidrome\n");
	}
	
	return 0;
}
