

void upper1(char *string)
{	
	while(*string)
	{
		if(*string >= 'a' && *string <= 'z')
		{
			*string = *string - 32;
		}
		string++;
	}
}
