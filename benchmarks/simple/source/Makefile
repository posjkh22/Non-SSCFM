
default:
	clang -emit-llvm -c simple.c
	clang -S -emit-llvm -c simple.c
	clang -c is_signature_queue_full.c
	clang -c simple.c
	clang -o simple simple.o is_signature_queue_full.o


clean:
	rm -f *.bc *.ll simple
