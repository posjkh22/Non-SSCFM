

default:
	gcc -c aces_avltree.c

run:
	./test

all: link

link: main aces_avltree
	gcc -o test main.o aces_avltree.o

main: main.c
	gcc -c main.c

aces_list: aces_avltree.c
	gcc -c aces_avltree.c
	

clean:
	rm -f *.o test
