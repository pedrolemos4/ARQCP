main: main.o new_matrix.o 
	gcc new_matrix.o main.o -o main

new_matrix.o: new_matrix.c new_matrix.h
	gcc -g -Wall -c new_matrix.c -o new_matrix.o

main.o: main.c 
	gcc -g -Wall -c main.c -o main.o

run: main
	./main
	
clean:
	rm *.o main
