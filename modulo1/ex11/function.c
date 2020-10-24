#include <string.h>
#include <stdio.h>

int palindrome (char *str)
{	
	
	int l=0;
	int h = strlen(str) - 1;
	int aux=0;
	
	if(*str>='A' && *str<= 'Z')
	{
		*str = *str +32;
	}
	
	while (l<h)
	{
		aux++;
		//printf("%d\n",aux);
		if(str[l] == ' ')// || ispunct(str[l]))
		{
			//printf("l%d\n",l);
			l++;
		}
		if(str[h] == ' ')// || ispunct(str[h]))
		{
			h--;
		}
		if(str[l] != str[h])
		{
			//printf("1%c\n",str[l]);
			//printf("ultimo%c\n", str[h]);
			return 0;
		} 
		l++;
		h--;
	}
	return 1;
}
