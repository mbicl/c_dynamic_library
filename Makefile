main: main.c
	gcc -c utils.c -fpic
	gcc *.o -shared -o libutils.so
	gcc -c main.c -o main.o
	gcc -o main main.o -L. -lutils

run: main
	./main

clean:
	rm *.so *.o main