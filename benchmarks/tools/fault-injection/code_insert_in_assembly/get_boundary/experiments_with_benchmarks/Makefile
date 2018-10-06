BIN_UTILS_ROOT:=$(PWD)/binutils-gdb
BFD_DIR:=$(BIN_UTILS_ROOT)/bfd
BIN_UTILS:=$(BIN_UTILS_ROOT)/binutils
IBERTY_DIR:=$(BIN_UTILS_ROOT)/libiberty
ZLIB_DIR:=$(BIN_UTILS_ROOT)/zlib
OPCODES_DIR:=$(BIN_UTILS_ROOT)/opcodes
BIN_UTILS_LIB:=-lbfd -lopcodes -lz -ldl -liberty

INCLUDE_PATH:=$(PWD)/include
SRC_PATH:=$(PWD)/src
OBJECT_PATH:=$(PWD)/obj
OUTPUT_PATH:=$(PWD)/bin

CFLAGS:= -I $(INCLUDE_PATH)

BFD_CFLAGS:= -I ../../include -I $(BIN_UTILS_ROOT)/include \
         -I $(BFD_DIR) -I $(BIN_UTILS) -g \
	 	 -I $(INCLUDE_PATH)

LFLAGS:= -L$(BFD_DIR) -L$(OPCODES_DIR) -L$(ZLIB_DIR) -L$(IBERTY_DIR)

OBJECTS = get_section.o code_inject.o extract_elf.o read_elf.o get_symbol.o get_eiftable.o file_handle.o \
				update_vector_table_section.o update_vector_isr_and_text_section.o update_data_section.o update_inits_section.o update_print_info.o

SRCS = $(OBJECTS:.o=.c)

#INPUT_NAME = code_injection_test_programA
#INPUT_NAME = code_injection_test_programB
#INPUT_NAME = code_injection_test_dhry
INPUT_NAME = code_injection_test_whet
#INPUT_NAME = code_injection_test_fft
#INPUT_NAME = code_injection_test_strsrch
#INPUT_NAME = code_injection_test_c


OUTPUT_OBJECTS = $(OBJECTS: = $(OBJECT_PATH))

CC:=gcc
OUTPUT_OBJ:=$(BIN_UTILS)/bucomm.o $(BIN_UTILS)/filemode.o \
		$(OBJECT_PATH)/code_inject.o \
		$(OBJECT_PATH)/extract_elf.o \
		$(OBJECT_PATH)/read_elf.o \
		$(OBJECT_PATH)/get_section.o \
		$(OBJECT_PATH)/get_symbol.o \
		$(OBJECT_PATH)/get_eiftable.o \
		$(OBJECT_PATH)/file_handle.o \
		$(OBJECT_PATH)/update_vector_table_section.o \
		$(OBJECT_PATH)/update_vector_isr_and_text_section.o \
		$(OBJECT_PATH)/update_data_section.o \
		$(OBJECT_PATH)/update_inits_section.o \
		$(OBJECT_PATH)/update_print_info.o


OUTPUT:= code_inject



test: test.o
	gcc -o test ./obj/test.o $(LFLAGS) $(BIN_UTILS_LIB)
	

test.o:
	$(CC) $(CFLAGS) $(BFD_CFLAGS) -c $(SRC_PATH)/test.c -o obj/test.o
	

all: $(OUTPUT)
	cp ./bin/code_inject .

$(OUTPUT): $(OBJECTS) 
	$(CC) -o $(OUTPUT_PATH)/$@ $(OUTPUT_OBJ) $(LFLAGS) $(BIN_UTILS_LIB)

obj: $(OBJECTS)

get_section.o: 
	$(CC) -o $(OBJECT_PATH)/$@ -c $(BFD_CFLAGS) $(SRC_PATH)/$(@:.o=.c)

code_inject.o:
	$(CC) -o $(OBJECT_PATH)/$@ -c $(CFLAGS) $(SRC_PATH)/$(@:.o=.c)

extract_elf.o:
	$(CC) -o $(OBJECT_PATH)/$@ -c $(CFLAGS) $(SRC_PATH)/$(@:.o=.c)

read_elf.o:
	$(CC) -o $(OBJECT_PATH)/$@ -c $(CFLAGS) $(SRC_PATH)/$(@:.o=.c)

get_symbol.o:
	$(CC) -o $(OBJECT_PATH)/$@ -c $(CFLAGS) $(SRC_PATH)/$(@:.o=.c)

get_eiftable.o:
	$(CC) -o $(OBJECT_PATH)/$@ -c $(CFLAGS) $(SRC_PATH)/$(@:.o=.c)

file_handle.o:
	$(CC) -o $(OBJECT_PATH)/$@ -c $(CFLAGS) $(SRC_PATH)/$(@:.o=.c)

update_vector_table_section.o:
	$(CC) -o $(OBJECT_PATH)/$@ -c $(CFLAGS) $(SRC_PATH)/$(@:.o=.c)

update_vector_isr_and_text_section.o:
	$(CC) -o $(OBJECT_PATH)/$@ -c $(CFLAGS) $(SRC_PATH)/$(@:.o=.c)

update_data_section.o:
	$(CC) -o $(OBJECT_PATH)/$@ -c $(CFLAGS) $(SRC_PATH)/$(@:.o=.c)

update_inits_section.o:
	$(CC) -o $(OBJECT_PATH)/$@ -c $(CFLAGS) $(SRC_PATH)/$(@:.o=.c)

update_print_info.o:
	$(CC) -o $(OBJECT_PATH)/$@ -c $(CFLAGS) $(SRC_PATH)/$(@:.o=.c)

run: clean config all 
	$(OUTPUT_PATH)/$(OUTPUT) ./input/test.elf


run2:
	$(OUTPUT_PATH)/$(OUTPUT) ./input/test.elf

config:
	cp test_file/${INPUT_NAME}.elf input/test.elf
	arm-none-eabi-objdump -D input/test.elf > input/obj_test_D
	arm-none-eabi-objdump -d input/test.elf > input/obj_test_d
	arm-none-eabi-readelf -a input/test.elf > input/elf_test
	arm-none-eabi-objcopy -O binary input/test.elf input/test.bin		
	
	
clean:
	rm -f $(OUTPUT) output/* obj/* input/* debug/*

dep:
	gcc -M $(INCLUDE_PATH) $(SRCS) > .depend
