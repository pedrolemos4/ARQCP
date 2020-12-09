main: main.o stats.o extremas.o
	gcc -Wall -g  main.o stats.o extremas.o -o main

main.o: main.c asm.h
	gcc -Wall -g -c main.c

stats.o: stats.s
	gcc -Wall -g -c stats.s
	
extremas.o: extremas.s
	gcc -Wall -g -c extremas.s

run: main
	./main
	
clean:
	rm *.o main
