main: media.o fill.o main.o
	gcc media.o fill.o main.o -o main
	
media.o: media.c
	gcc -g -Wall -c media.c -o media.o
	
fill.o: fill.c
	gcc -g -Wall -c fill.c -o fill.o

main.o: main.c
	gcc -g -Wall -c main.c -o main.o
