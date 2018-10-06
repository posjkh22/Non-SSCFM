
BENCH_MARK = ../outputs
INPUT_MAIN = translated
LIST 	= ./list
STACK 	= ./stack
TREE 	= ./tree
HASH 	= ./hash
FINAL_OUTPUT_BINARY = final_output_binary

IPCFG_TYPE=hash
#IPCFG_TYPE=list
#IPCFG_TYPE=avltree


default: link
fine_objects: monitor aces_stack aces_list aces_avltree aces_hash fine_initialize_monitor 
coarse_objects: monitor aces_stack aces_list aces_avltree aces_hash coarse_initialize_monitor


ifeq ($(IPCFG_TYPE), hash)
link: fine_objects input
	gcc -o $(FINAL_OUTPUT_BINARY) $(INPUT_MAIN).o fine_initialize_monitor.o monitor.o $(STACK)/aces_stack.o $(HASH)/aces_hash.o -lm -lpthread
	@echo [IPCFG: Hash]
endif

ifeq ($(IPCFG_TYPE), avltree)
link: fine_objects input
	gcc -o $(FINAL_OUTPUT_BINARY) $(INPUT_MAIN).o fine_initialize_monitor.o monitor.o $(STACK)/aces_stack.o $(TREE)/aces_avltree.o -lm -lpthread
	@echo [IPCFG: avltree]
endif

ifeq ($(IPCFG_TYPE), list)
link: fine_objects input
	gcc -o $(FINAL_OUTPUT_BINARY) $(INPUT_MAIN).o fine_initialize_monitor.o monitor.o $(STACK)/aces_stack.o $(LIST)/aces_list.o -lm -lpthread
	@echo [IPCFG: List]
endif

	

# Benchmark input file #

input:
	llc $(BENCH_MARK)/$(INPUT_MAIN).ll -o $(INPUT_MAIN).s
	gcc -c $(INPUT_MAIN).s


# generated monitor code #

fine_initialize_monitor:
	cp -f $(BENCH_MARK)/fine_initialize_monitor.c .
	gcc -c fine_initialize_monitor.c

coarse_initiailize_monitor:
	cp -f $(BENCH_MARK)/coarse_initialize_monitor.c .
	gcc -c coarse_initialize_monitor.c


# libraries #

aces_stack:
	make -C $(STACK)
	
aces_list:
	make -C $(LIST)

aces_avltree:
	make -C $(TREE)

aces_hash:
	make -C $(HASH)

monitor:
	gcc -c monitor.c



clean:
	rm -f *.o *.s  $(FINAL_OUTPUT_BINARY)
