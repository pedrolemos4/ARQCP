main: main.o functions.o 
	gcc functions.o main.o -o main

functions.o: functions.s functions.h
	gcc -g -Wall -c functions.s -o functions.o

main.o: main.c 
	gcc -g -Wall -c main.c -o main.o

run: main
	./main
	
clean:
	rm *.o main
