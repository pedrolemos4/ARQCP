
void swap(int *vec1, int *vec2, int size)
{
	int i;
	int aux;
	int aux1;
	
	for(i = 0; i<size;i++)
	{
		aux = *(vec1+i);
		aux1 = *(vec2 + i);
		*(vec1+i) = aux1;
		*(vec2+i)= aux;
	}
}
