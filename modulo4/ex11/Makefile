main: main.o rotate_left.o rotate_right.o 
	gcc rotate_left.o rotate_right.o main.o -o main

rotate_left.o: rotate_left.c
	gcc -g -Wall -c rotate_left.c -o rotate_left.o

rotate_right.o: rotate_right.c rotate_right.h
	gcc -g -Wall -c rotate_right.c -o rotate_right.o

main.o: main.c 
	gcc -g -Wall -c main.c -o main.o

run: main
	./main
	
clean:
	rm *.o main

