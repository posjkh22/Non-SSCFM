# By default, the code is compiled for a "big endian" machine.
# To compile on a "little endian" machine set the LITTLE_ENDIAN flag.
# To make smaller object code, but run a little slower, don't use UNROLL_LOOPS.
# To use NIST's modified SHA of 7/11/94, define USE_MODIFIED_SHA

CC = gcc
CFLAGS = -O3 -Wall

default: execute bitcode


execute: sha_driver.o sha.o is_signature_queue_full.o
	gcc -o sha sha_driver.o sha.o is_signature_queue_full.o

sha_driver.o:
	gcc -c sha_driver.c

sha.o:
	gcc -c sha.c

is_signature_queue_full.o:
	gcc -c is_signature_queue_full.c


bitcode: sha_driver.bc sha_main.bc
	llvm-link -o sha.bc sha_main.bc sha_driver.bc

sha_driver.bc:
	clang -emit-llvm -c sha_driver.c -o sha_driver.bc

sha_main.bc:
	clang -emit-llvm -c sha.c -o sha_main.bc

clean:
	rm -rf *.o sha output*
