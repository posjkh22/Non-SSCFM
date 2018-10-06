
default: execute bitcode

execute: is_signature_queue_full.o blocked.o
	gcc -o blocked blocked.o is_signature_queue_full.o

blocked.o: blocked.c
	gcc -c blocked.c

is_signature_queue_full.o:
	gcc -c is_signature_queue_full.c


bitcode: 
	clang -emit-llvm -c blocked.c
	llvm-dis blocked.bc

clean:
	rm -f blocked *.bc *.o
