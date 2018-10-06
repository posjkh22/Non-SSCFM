 OBJ = whetstone.o is_signature_queue_full.o


default: execute bitcode
	llvm-dis whetstone.bc


execute: ${OBJ} Makefile
	clang  ${OBJ} -o whetstone -lm
whetstone.o: whetstone.c
	clang -c whetstone.c
is_signature_queue_full:
	clang -c is_signature_queue_full.c


bitcode:
	clang -emit-llvm -c whetstone.c -o whetstone.bc
	

clean:
	rm -rf *.o whetstone whetstone.bc *.bc *.ll





