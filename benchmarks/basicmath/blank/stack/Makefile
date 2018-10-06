
default:
	gcc -c aces_stack.c

run:
	./test

all: link

link: main aces_stack
	gcc -o test test_stack.o aces_stack.o

main: test_stack.c
	gcc -c test_stack.c

aces_stack: aces_stack.c
	gcc -c aces_stack.c
	

clean:
	rm -f *.o test
