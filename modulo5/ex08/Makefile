main: main.o fill_s2.o
	gcc -Wall -g  main.o fill_s2.s -o main

main.o: main.c fill_s2.h
	gcc -Wall -g -c main.c

fill_s2.o: fill_s2.s
	gcc -Wall -g -c fill_s2.s

run: main
	./main
	
clean:
	rm *.o main
