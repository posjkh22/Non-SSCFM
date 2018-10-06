
default:
	clang -emit-llvm -c simple.c
	clang -S -emit-llvm -c simple.c
	clang -c is_signature_queue_full.c
	llc simple.bc
	clang -c simple.s
	clang -o simple simple.o is_signature_queue_full.o

test:
	clang -c simple.s
	clang -o simple simple.o is_signature_queue_full.o	

clean:
	rm -f *.bc *.ll simple
