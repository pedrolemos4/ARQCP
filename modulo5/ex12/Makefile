main: main.o find_matrix.o new_matrix.o
	gcc -Wall -g  main.o find_matrix.o new_matrix.o -o main

main.o: main.c find_matrix.h
	gcc -Wall -g -c main.c

find_matrix.o: find_matrix.c
	gcc -Wall -g -c find_matrix.c
	
new_matrix.o: new_matrix.c new_matrix.h
	gcc -g -Wall -c new_matrix.c -o new_matrix.o

run: main
	./main
	
clean:
	rm *.o main
