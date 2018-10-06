

default:
	gcc -c aces_list.c

run:
	./test

all: link

link: main aces_list
	gcc -o test test_list.o aces_list.o

main: test_list.c
	gcc -c test_list.c

aces_list: aces_list.c
	gcc -c aces_list.c
	

clean:
	rm -f *.o test
