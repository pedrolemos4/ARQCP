main: main.o fill_s1.o 
	gcc fill_s1.o main.o -o main

fill_s1.o: fill_s1.s fill_s1.h
	gcc -g -Wall -c fill_s1.s -o fill_s1.o

main.o: main.c 
	gcc -g -Wall -c main.c -o main.o

run: main
	./main
	
clean:
	rm *.o main
