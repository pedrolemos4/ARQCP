#include <stdio.h>

int sort_without_reps(int *src, int n, int *dest)
{
	/*
	 * auxiliar variables to different cycles
	 */
	int i;
	int j;
	int a;
	int k;
	
	/*
	 * sorting of first array
	 */
	for (i = 0; i < n; ++i) 
       {
           for (j = i + 1; j < n; ++j)
           {
               if (src[i] > src[j]) 
               {
                   a =  src[i];
                   src[i] = src[j];
                   src[j] = a;
               }
           }
       }
    
	/*
	 * copy of the array
	 * */
    for (i = 0 ; i < n; ++i)
    {
		dest[i] = src[i];
	} 
	
	/*
	 * elimination of repeated values
	 */
	for(i = 0; i < n; i++)
	{
		for(j = i+1; j < n; )
		{
			if(dest[j] == dest[i])
			{
				for(k = j; k < n; k++)
				{
					dest[k] = dest[k+1];
				}
				n--;
			}
			else
			{
				j++;
			}
			
		}
	}
	
	/*
	 * returning size of second array
	 */
	return n;
}
