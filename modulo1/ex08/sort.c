
void array_sort2(int *vec, int n)
{
	int i,k,aux;
	
	for(k=i+1;k<n;k++)
	{
		if(*(v+i)>*(v+k))
		{	
			aux = *(v+i);
			*(v+i) = *(v+k);
				*(v+k) = aux;			
		}
	}
}
