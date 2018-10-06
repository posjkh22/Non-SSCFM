
TARGET = dhrystone
OBJ = dhry_1.o dhry_2.o is_signature_queue_full.o
CFLAG= -Wno

default: execute bitcode
	llvm-dis dhrystone.bc


execute: ${OBJ} Makefile
	clang  ${OBJ} -o dhrystone -lm
dhry_1.o: dhry_1.c
	clang -c dhry_1.c
dhry_2.o: dhry_2.c
	clang -c dhry_2.c
is_signature_queue_full:
	clang -c is_signature_queue_full.c

bitcode: dhry_1.bc dhry_2.bc 
	llvm-link -o dhrystone.bc dhry_1.bc dhry_2.bc
dhry_1.bc:
	clang -emit-llvm -c dhry_1.c -o dhry_1.bc
dhry_2.bc:
	clang -emit-llvm -c dhry_2.c -o dhry_2.bc
	

clean:
	rm -rf *.o $(TARGET) $(TARGET).bc *.bc *.ll


