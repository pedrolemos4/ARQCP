main: function.o main.o
	gcc function.o main.o -o main
	
function.o: function.c
	gcc -g -Wall -c function.c -o function.o

main.o: main.c
	gcc -g -Wall -c main.c -o main.o
clean:
	rm -f *.o ex09
	
run: ex09
	./ex09
