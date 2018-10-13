default: execute bitcode

execute: patricia.c patricia_test.c
	gcc -static patricia.c patricia_test.c is_signature_queue_full.c -O3 -o patricia

bitcode: patricia_api.bc patricia_test.bc
	llvm-link -o patricia.bc patricia_api.bc patricia_test.bc

patricia_api.bc:
	clang -emit-llvm -c patricia.c -o patricia_api.bc

patricia_test.bc:
	clang -emit-llvm -c patricia_test.c -o patricia_test.bc


clean:
	rm -rf patricia output* *.bc
