main: activate_bits.o activate_invert_bits.o main.o
	gcc  activate_bits.o activate_invert_bits.o main.o -o main
	
activate_bits.o:  activate_bits.s  activate_bits.h
	gcc -g -Wall -c  activate_bits.s -o  activate_bits.o
	
activate_invert_bits.o:  activate_invert_bits.s  activate_invert_bits.h
	gcc -g -Wall -c  activate_invert_bits.s -o  activate_invert_bits.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o main
run: main
	./main

