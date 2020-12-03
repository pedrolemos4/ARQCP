main: main.o activate_bits.o 
	gcc activate_bits.o main.o -o main

activate_bits.o: activate_bits.c activate_bits.h
	gcc -g -Wall -c activate_bits.c -o activate_bits.o

main.o: main.c 
	gcc -g -Wall -c main.c -o main.o

run: main
	./main
	
clean:
	rm *.o main

