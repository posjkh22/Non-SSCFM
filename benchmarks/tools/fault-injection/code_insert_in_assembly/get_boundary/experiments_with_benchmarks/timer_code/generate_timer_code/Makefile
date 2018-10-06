
all: build
	gcc -o ./bin/generate_timer_code obj/test.o obj/file_handle.o

build:
	gcc -o obj/test.o -c src/test.c
	gcc -o obj/file_handle.o -c src/file_handle.c

run: config all
	cp input/test.bin bin/
	./bin/generate_timer_code 
	cp output/timer_end target/

config:
	cp input_elf/code_injection_test_b.elf input_elf/test.elf
	arm-none-eabi-objdump -D ./input_elf/test.elf > input/obj_test_D
	arm-none-eabi-objdump -d ./input_elf/test.elf > input/obj_test_d
	arm-none-eabi-objcopy -O binary input_elf/test.elf input/test.bin

clean:
	rm -f bin/* obj/* input/* output/*
