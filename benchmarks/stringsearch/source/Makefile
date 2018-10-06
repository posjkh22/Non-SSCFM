FILE1 = bmhasrch.c  bmhisrch.c  bmhsrch.c  pbmsrch_small.c 
FILE2 = bmhasrch.c  bmhisrch.c  bmhsrch.c  pbmsrch_large.c 


default: execute bitcode

execute: is_signature_queue_full.o bmhasrch.o  bmhisrch.o  bmhsrch.o  pbmsrch_large.o 
	gcc -o stringsearch is_signature_queue_full.o bmhasrch.o  bmhisrch.o  bmhsrch.o  pbmsrch_large.o 

is_signature_queue_full.o:
	gcc -c is_signature_queue_full.c


bmhasrch.o:
	gcc -c bmhasrch.c 

bmhisrch.o:	
	gcc -c bmhisrch.c 

bmhsrch.o:
	gcc -c bmhsrch.c  

pbmsrch_largc.o:
	gcc -c pbmsrch_large.c 


bitcode: bmhasrch.bc  bmhisrch.bc  bmhsrch.bc  pbmsrch_large.bc 
	llvm-link -o stringsearch.bc bmhasrch.bc  bmhisrch.bc  bmhsrch.bc  pbmsrch_large.bc 

bmhasrch.bc:
	clang -emit-llvm -c bmhasrch.c -o bmhasrch.bc

bmhisrch.bc:	
	clang -emit-llvm -c bmhisrch.c -o bmhisrch.bc

bmhsrch.bc:
	clang -emit-llvm -c bmhsrch.c -o bmhsrch.bc 

pbmsrch_large.bc:
	clang -emit-llvm -c pbmsrch_large.c -o pbmsrch_large.bc


clean:
	rm -rf search_small search_large output* *.bc *.o

	
#search_small: ${FILE1} Makefile
#	gcc -static ${FILE1} -O3 -o search_small
