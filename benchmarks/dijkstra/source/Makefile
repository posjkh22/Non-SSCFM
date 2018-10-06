OBJ = dijkstra_small.o is_signature_queue_full.o


default: execute bitcode
	llvm-dis dijkstra.bc

run:
	./dijkstra

execute: ${OBJ} Makefile
	clang  ${OBJ} -o dijkstra -lm
dijkstra_small.o: dijkstra_small.c
	clang -c dijkstra_small.c
is_signature_queue_full:
	clang -c is_signature_queue_full.c

bitcode: dijkstra_small.bc
	llvm-link -o dijkstra.bc dijkstra_small.bc
dijkstra_small.bc:
	clang -emit-llvm -c dijkstra_small.c -o dijkstra_small.bc
	

clean:
	rm -rf *.o dijkstra dijstra.bc *.bc *.ll






# spare #


dijkstra_large: dijkstra_large.c Makefile
	gcc -static dijkstra_large.c -O3 -o dijkstra_large

dijkstra_small: dijkstra_small.c Makefile
	gcc -static dijkstra_small.c -O3 -o dijkstra_small 

