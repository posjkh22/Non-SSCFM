
#include "file_handle.h"

int print_update_info(ElfInfo* elfinfo, eiftable* eiftable, required_code_set* required_code_set){

	printf("\n");	
	printf(" ## UPDATED ELF SECTION INFO\n");

	printf(" ->  vector_table_vma 	: %x ~ %x\n",  	elfinfo->elf_sections.vector_table.vma, elfinfo->elf_sections.vector_table.vma + elfinfo->elf_sections.vector_table.size);
	printf(" ->  vector_table_size 	: %x\n", 	elfinfo->elf_sections.vector_table.size);

	printf(" ->  vector_isr_vma 	: %x ~ %x\n", 	elfinfo->elf_sections.vector_isr.vma, elfinfo->elf_sections.vector_isr.vma + elfinfo->elf_sections.vector_isr.size);
	printf(" ->  vector_isr_size 	: %x\n", 	elfinfo->elf_sections.vector_isr.size);

	printf(" ->  text_vma 			: %x ~ %x\n", 	elfinfo->elf_sections.updated_text.vma, elfinfo->elf_sections.updated_text.vma + elfinfo->elf_sections.updated_text.size);
	printf(" ->  text_size 			: %x\n", 	elfinfo->elf_sections.updated_text.size);
 
	printf(" ->  data_vma 			: %x ~ %x\n", 	elfinfo->elf_sections.updated_data.vma, elfinfo->elf_sections.updated_data.vma + elfinfo->elf_sections.updated_data.size);
	printf(" ->  data_size 			: %x\n", 	elfinfo->elf_sections.updated_data.size);

	printf(" ->  bss_vma 			: %x ~ %x\n", 	elfinfo->elf_sections.updated_bss.vma, elfinfo->elf_sections.updated_bss.vma + elfinfo->elf_sections.updated_bss.size);
	printf(" ->  bss_size 			: %x\n", 	elfinfo->elf_sections.updated_bss.size);

	printf("\n");
	printf(" ->  UPDATE(TEXT): INCREASE by 0x%x\n",	elfinfo->elf_sections.updated_text.size - elfinfo->elf_sections.text.size);
	printf(" ->  UPDATE(DATA): INCREASE by 0x%x\n",	elfinfo->elf_sections.updated_data.size - elfinfo->elf_sections.data.size);

	printf("\n");
	printf(" ##  TARGET UPDATE INFO\n");
	printf(" ->  TARGET FUNCTION VMA 					: %x\n", eiftable->target.vma);
	printf(" ->  TARGET FUNCTIONSIZE (NOT AUTO) 		: %x -> %x\n", eiftable->target.size, eiftable->target.size + 0x10);

	printf(" ->  BRANCH INSTURCTION VMA TO TIMER_START 	: %x\n", eiftable->target.rcode_start_bl_offset + eiftable->target.vma);
	printf(" ->  BRANCH INSTRUCTION VMA TO TIMER_END   	: %x\n", eiftable->target.rcode_end_bl_offset + eiftable->target.vma);

	printf("\n");
	printf(" ##  INJECTION CODE INFO\n");
	printf(" ->  TIMER_START BYTES 		: %x\n", required_code_set->rstart.bytes);
	printf(" ->  TIMER_START VMA  	 	: %x\n", required_code_set->rstart.vma);
	printf(" ->  TIMER_END BYTES   		: %x\n", required_code_set->rend.bytes);
	printf(" ->  TIMER_END VMA     		: %x\n", required_code_set->rend.vma);
	printf(" ->  TIMER_SYSTICK BYTES   	: %x\n", required_code_set->systick.bytes);
	printf(" ->  TIMER_SYSTICK VMA     	: %x\n", required_code_set->systick.vma);

	printf("\n");

	printf(" ->  INCREASE BYTES: INJECTION CODE     		: 0x%x\n",	\
		required_code_set->rstart.bytes + required_code_set->rend.bytes + required_code_set->systick.bytes );
	printf(" ->  INCREASE BYTES: SHELL CODE  (NOT AUTO)     : 0x%x\n", SHELLCODE_BYTES);
	printf(" ->  INCREASE BYTES: DATA (NOT AUTO)     		: 0x%x\n\n", TIMER_DATA_BYTES);

	printf(" ->  INCREASE BYTES: DATA (NOT AUTO)     		: 0x%x\n",\
		required_code_set->rstart.bytes + required_code_set->rend.bytes + required_code_set->systick.bytes	\
		+ SHELLCODE_BYTES + TIMER_DATA_BYTES	\
		);

	printf("\n");
		


}

