
#ifndef FILE_HANDLE
#define FILE_HANDLE

#include <stdio.h>
#include <stdlib.h>
#include "extract_elf.h"
#include "get_eiftable.h"


typedef struct _rcode_info{

	unsigned int bytes;
	unsigned int vma;
	unsigned int offset;

}rcode;

/*
typedef strcut _data{

	int time_val_vma;
	int laps_time_vma;

}rdata;

*/
typedef struct _required_code_set{

	rcode rstart;
	rcode rend;
	rcode systick;
	int rcode_number;
//	rdata rdata;
	
}required_code_set;


#define SHELLCODE_BYTES 			0x10
#define TIMER_DATA_WORD_NUMBER 		2
#define WORD_BYTES 					4
#define TIMER_DATA_BYTES 			(WORD_BYTES * TIMER_DATA_WORD_NUMBER)
#define TRACE_PRINTF_REQUIRED_WORD	0x64250000

#define BL_INSTRUCTION_BYTES		4

#define upper_byte_in_2bytes(in) (((in)& 0xff00) >> 8)
#define lower_byte_in_2bytes(in) ( (in)& 0x00ff)

#define SWAP32(l)( ((((l) & 0xff000000) >> 24) | (((l) & 0x00ff0000) >> 8)  | (((l) & 0x0000ff00) << 8)  | (((l) & 0x000000ff) << 24)))  
#define SWAP16(s) ( (((s) & 0xff) << 8 ) | (((s) >> 8) & 0xff) )


#define section_vector_table_vma 	((elfinfo)->elf_sections.vector_table.vma)
#define section_vector_table_offset ((elfinfo)->elf_sections.vector_table.offset)
#define section_vector_table_size 	((elfinfo)->elf_sections.vector_table.size)

#define section_vector_isr_vma 		((elfinfo)->elf_sections.vector_isr.vma)
#define section_vector_isr_offset 	((elfinfo)->elf_sections.vector_isr.offset)
#define section_vector_isr_size 	((elfinfo)->elf_sections.vector_isr.size)

#define section_text_vma 			((elfinfo)->elf_sections.text.vma)
#define section_text_offset 		((elfinfo)->elf_sections.text.offset)
#define section_text_size 			((elfinfo)->elf_sections.text.size)

#define section_data_vma 			((elfinfo)->elf_sections.data.vma)
#define section_data_offset 		((elfinfo)->elf_sections.data.offset)
#define section_data_size 			((elfinfo)->elf_sections.data.size)

#define BINARY_SIZE 				(section_vector_table_size + section_vector_isr_size + section_text_size + section_data_size) 
#define TEXT_END_SIZE 				(section_vector_table_size + section_vector_isr_size + section_text_size) 

#define TEXT_END_VMA				(section_text_vma + section_text_size)

#define TARGET_VMA 					eiftable->target.vma
#define TARGET_OFFSET				eiftable->target.vma - elfinfo->elf_sections.text.vma
#define TARGET_SIZE					eiftable->target.size


required_code_set* create_rcode();


#endif


