int greater_date(unsigned int date1, unsigned int date2)
{
	int maior=0;
	int D1 = 0b00000000000000000000000011111111 & date1;
	int D2 = 0b00000000000000000000000011111111 & date2;
	int M1 = 0b11111111000000000000000000000000 & date1;
	int M2 = 0b11111111000000000000000000000000 & date2;
	int A1 = 0b00000000111111111111111100000000 & date1;
	int A2 = 0b00000000111111111111111100000000 & date2;
	
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
