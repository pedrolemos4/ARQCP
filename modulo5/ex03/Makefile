main: main.o fill_student.o 
	gcc fill_student.o main.o -o main

fill_student.o: fill_student.c fill_student.h
	gcc -g -Wall -c fill_student.c -o fill_student.o

main.o: main.c 
	gcc -g -Wall -c main.c -o main.o

run: main
	./main
	
clean:
	rm *.o main
