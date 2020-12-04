
int count_bits_zero(int x){

int count=0, i=0, aux;

	while(i<32){
		aux=x%2;
		if(aux == 0){
			count++;
		}
		x = x >> 1;
		i++;
	}
	
	return count;
}
