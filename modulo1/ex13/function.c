#include <stdio.h>

int where_is(char *str, char c, int *p)
{
	int tam = strlen(str);
	int n=0;
	int i;
	for(i=0;i<tam;i++)
	{
	//	printf("%c\n",*(str+i));
		//n++;
		if(*(str + i) == c)
		{
			n++;
			p[i]=i;
			printf("%d\n",p[i]);
		}
	}
	
	return n;
}
