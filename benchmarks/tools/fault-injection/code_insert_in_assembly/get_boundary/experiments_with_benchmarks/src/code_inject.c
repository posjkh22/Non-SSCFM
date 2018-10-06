#include "code_inject.h"
#include "extract_elf.h"
#include "get_eiftable.h"
#include "file_handle.h"


int main(int argc, char* argv[]){

	elf_data _elf_data;
	eiftable* eiftable;
	required_code_set* rcode_set;
	ElfInfo* elfinfo;

	/* EXTRACT SECTION & SYMBOL DATA FROM ELF */
	Extract_elf(&elfinfo, argc, argv);	

	/* DETERMINE TARGET RELATED BOUNDARY */
	eiftable  = generate_iftable_from_elf(elfinfo);

/*
	rcode_set =  create_rcode();

	#ifdef MORE_ADVANCED
	pre_research_elf(elfinfo, eiftable, rcode_set);
	#endif
	
	generate_updated_vector_isr_and_text_section(elfinfo, eiftable, rcode_set);

	generate_splited_data_bin(elfinfo, eiftable);

	generate_splited_vector_table_bin(elfinfo, eiftable, rcode_set);

	update_inits_section(elfinfo);

	file_gather();
	
	print_update_info(elfinfo, eiftable, rcode_set);
*/

	#ifdef BRANCH_TEST
	printf(" BRANCH TESTING \n");
	
	int inst  = 0xf000fe5e;
	int pc = 0x0800154c;
	int target;


	debug_check_bl_instruction(inst, pc, &target);

	printf(" [DEBUG] Target: %x\n", target);
	printf(" [DEBUG] pc    : %x\n", pc);

	
	inst = 0xf000fe38;
	pc = 0x080015c4;

	debug_check_bl_instruction(inst, pc, &target);

	printf(" [DEBUG] Target: %x\n", target);
	printf(" [DEBUG] pc    : %x\n", pc);
	#endif

	return 0;

}
