
default:
	gcc -c aces_hash.c

all: main aces_hash
	gcc -o test main.o aces_hash.o

main:
	gcc -c main.c

aces_hash:
	gcc -c aces_hash.c

clean:
	rm -f test *.o
