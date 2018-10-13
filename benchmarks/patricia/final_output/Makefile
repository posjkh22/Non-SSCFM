
FINAL_OUTPUT_BINARY=final_output_binary
GENERATOR=../generator

default:
	cp -f $(GENERATOR)/$(FINAL_OUTPUT_BINARY) .
	objdump -D $(FINAL_OUTPUT_BINARY) > obj_$(FINAL_OUTPUT_BINARY)
	readelf -a $(FINAL_OUTPUT_BINARY) > elf_$(FINAL_OUTPUT_BINARY)


clean:
	rm -f obj* elf* $(FINAL_OUTPUT_BINARY)
