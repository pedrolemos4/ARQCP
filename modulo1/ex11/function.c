#include <string.h>
#include <stdio.h>

int palindrome (char *str)
{
	char c;
	int i = 0;
	while (str[i] != '\n')
	{
		c = str[i];
		if(!isspace(c) && !ispunct(c))
		{
			str[i] = tolower(c);
			i++;
		}
	}
	
	str[i] = '\0';
	printf("string = %s\n", str);
	
	int l=0;
	int h = strlen(str) - 1;
	
	while (l<h)
	{
		if(str[l] != str[h])
		{
			return 0;
		} 
		l++;
		h--;
	}
	return 1;
}
