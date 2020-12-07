#include <stdio.h>

void changes(int *ptr){
	
	int val=*(ptr);
	int bitDeactivate = 15;
	//int x = 4278190080;
	unsigned int x = 0b11111111000000000000000000000000 ;
	
	unsigned int firstByte = val & x;			//gets first byte
	printf("FirstByte1: %d \n",firstByte);
	bitDeactivate=bitDeactivate<<20;
	
	unsigned int bits = bitDeactivate & val;
	
	bits=bits>>20;
	if(bits>7){
		bits=~bits;									//inverte os bits
		bits=bits<<20;
		if(firstByte==0){
			int maskZero=0b00000000111111111111111111111111;
			bits=bits&maskZero;
		}else{	
			bits=bits|firstByte;
		}
		printf("Bits: %d \n",bits);
		printf("FirstByte2: %d \n",firstByte);
		unsigned int lastBits = val<<12;			//contem os bits 20 bits mais a direita
		
		lastBits = lastBits>>12;					//substitui os bits mais à esquerda por 0
		
		*(ptr) = (bits | lastBits);
		
	}

}
