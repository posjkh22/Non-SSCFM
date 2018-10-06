OBJ = main.o fftmisc.o  fourierf.o is_signature_queue_full.o


default: execute bitcode
	llvm-dis fft.bc


execute: ${OBJ} Makefile
	clang  ${OBJ} -o fft -lm
fftmisc.o: fftmisc.c
	clang -c fftmisc.c
fourierf.o: fourierf.c
	clang -c fourierf.c
main.o: main.c
	clang -c main.c
is_signature_queue_full:
	clang -c is_signature_queue_full.c

bitcode: fftmisc.bc fourierf.bc main.bc 
	llvm-link -o fft.bc main.bc fftmisc.bc fourierf.bc 
main.bc:
	clang -emit-llvm -c main.c -o main.bc
fftmisc.bc:
	clang -emit-llvm -c fftmisc.c -o fftmisc.bc
fourierf.bc:
	clang -emit-llvm -c fourierf.c -o fourierf.bc
	

clean:
	rm -rf *.o fft fft.bc *.bc *.ll
