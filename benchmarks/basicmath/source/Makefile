FILE1 = basicmath_small.c   rad2deg.c  cubic.c   isqrt.c
FILE2 = basicmath_large.c   rad2deg.c  cubic.c   isqrt.c

default: execute bitcode

execute: is_signature_queue_full.o basicmath_large.o rad2deg.o cubic.o isqrt.o
	gcc -o basicmath is_signature_queue_full.o basicmath_large.o rad2deg.o cubic.o isqrt.o -lm

is_signature_queue_full.o:
	gcc -c is_signature_queue_full.c

basicmath_large.o: basicmath_large.c
	gcc -c basicmath_large.c

rad2deg.o:
	gcc -c rad2deg.c

cubic.o:
	gcc -c cubic.c

isqrt.o:
	gcc -c isqrt.c


bitcode: basicmath_large.bc rad2deg.bc cubic.bc isqrt.bc
	llvm-link -o basicmath.bc basicmath_large.bc rad2deg.bc cubic.bc isqrt.bc

basicmath_large.bc: basicmath_large.c
	clang -emit-llvm -c basicmath_large.c -o basicmath_large.bc

rad2deg.bc:
	clang -emit-llvm -c rad2deg.c -o rad2deg.bc

cubic.bc:
	clang -emit-llvm -c cubic.c -o cubic.bc

isqrt.bc:
	clang -emit-llvm -c isqrt.c -o isqrt.bc








clean:
	rm -rf basicmath_small basicmath_large output* basicmath_large *.bc

#basicmath_small: ${FILE1} Makefile
#	gcc -static -O3 ${FILE1} -o basicmath_small -lm
