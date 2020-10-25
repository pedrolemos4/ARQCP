main: functions.o main.o
	gcc functions.o main.o -o main

functions.o: functions.c
	gcc -g -Wall -c functions.c -o functions.o

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

run: main
	./main
