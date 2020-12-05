int greater_date(unsigned int date1, unsigned int date2)
{
	int maior=0;
	int D1 = 0b00000000000000000000000011111111 & date1;  //d1 vai ficar com os 8 bits menos significativos(dia) de date1, para isso utiliza-se a máscara com os últimos 8 bits preenchidos a 1.
	int D2 = 0b00000000000000000000000011111111 & date2;  //d2 vai ficar com os 8 bits menos significativos de date2, para isso utiliza-se a máscara com os últimos 8 bits preenchidos a 1.
	int M1 = 0b11111111000000000000000000000000 & date1;  //m1 vai ficar com os 8 bits mais significativos(ano) de date1, para isso utiliza-se a máscara com os 8 bits mais significativos preenchidos a 1.
	int M2 = 0b11111111000000000000000000000000 & date2;  //m2 vai ficar com os 8 bits mais significativos(ano) de date2, para isso utiliza-se a máscara com os 8 bits mais significativos preenchidos a 1.
	int A1 = 0b00000000111111111111111100000000 & date1;  //a1 vai ficar com os bits respeitvos ao valor do mês de date1, para isso utiliza-se a máscara com os bits que estão entre a posição 8 e 24 preenchidos a 1.
	int A2 = 0b00000000111111111111111100000000 & date2;  //a2 vai ficar com os bits respeitvos ao valor do mês de date2, para isso utiliza-se a máscara com os bits que estão entre a posição 8 e 24 preenchidos a 1.
	
	if (A1 > A2)
	{
		maior=date1;
	} else 
		if (A1 < A2)
		{
			maior=date2;
		} else 
			if (M1 > M2) 
			{
				maior=date1;
			} else 
				if (M1 < M2)
				{
					maior=date2;
				} else 
					if (D1 >= D2)
					{
						maior=date1;
					} else 
						if (D1 < D2)
						{
							maior=date2;
						} 
	return maior;
}
