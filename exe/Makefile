main: ordenar.o main.o
	gcc ordenar.o main.o -o main
	
ordenar.o: ordenar.c
	gcc -g -Wall -c ordenar.c -o ordenar.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o main
	
run: main
	./main
