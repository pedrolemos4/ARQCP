main: main.o greater_date.o 
	gcc greater_date.o main.o -o main

greater_date.o: greater_date.c greater_date.h
	gcc -g -Wall -c greater_date.c -o greater_date.o

main.o: main.c 
	gcc -g -Wall -c main.c -o main.o

run: main
	./main
	
clean:
	rm *.o main

