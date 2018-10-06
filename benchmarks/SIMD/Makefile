
run: clean all
	objdump -d copy.o > obj_copy

all: main copy
	gcc -o test main.o copy.o

main:
	gcc -c main.c

copy:
	gcc -c copy.c -msse2
#gcc -c copy.c -march=native

clean:
	rm -f test *.o


diff: copy1 copy2
	diff obj_copy1 obj_copy2

copy1:
	gcc -c copy1.c
	objdump -d copy1.o > obj_copy1

copy2:
	gcc -c copy2.c -msse2
	objdump -d copy2.o > obj_copy2


