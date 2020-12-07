main: main.o add_byte.o 
	gcc add_byte.o main.o -o main

add_byte.o: add_byte.s add_byte.h
	gcc -g -Wall -c add_byte.s -o add_byte.o

main.o: main.c 
	gcc -g -Wall -c main.c -o main.o

run: main
	./main
	
clean:
	rm *.o main

