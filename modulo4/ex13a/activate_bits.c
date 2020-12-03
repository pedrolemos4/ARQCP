
int activate_bits(int a, int left, int right)
{
	int mask1 = 0;
	int mask2 = 0;
	int i = 0;
	int j = 0;
	
	while(i<=left)
	{
		mask1=mask1<<1;
		mask1++;
		i++;
	}
	
	mask1 = ~mask1;
	
	while(j<right)
	{
		mask2=mask2<<1;
		mask2++;
		j++;
	}
	
	return a | (mask1 | mask2);

}
