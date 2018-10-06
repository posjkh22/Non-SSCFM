


#include "config.h"
#include "bfd.h"
#include "libiberty.h"
#include "bucomm.h"
#include "demangle.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
//#include "extract_elf.h"


bfd *bfd_file;

int main(int argc, char *argv[])
{
	//char *target = "elf64-x86-64";
	char *target = "x86-64";

	//char *target = "amd64";
	//char *target = "x86_64";
	//char *target = "X86-64";
	//char *target = "x64";
	//char *target = "arm-none-eabi";
	//char *target = "i386";
	//char *target = "Advanced Micro Devices X86-64";
	char **target_list;
	char **matching;

 	char** name = bfd_target_list();

	for(int i=0; i<6; i++)
	{	
		printf("%s\n", name[i]);
	}
	long storage_needed;	
	int i;
	
	/*	 	bfd init	*/
	if(argc < 2)
	{
		printf("Usage: code_probe [ELF file name]\n");
		return -1;
	}

	/*	
	xmalloc_set_program_name(*argv);
	bfd_set_error_program_name(*argv);
	*/
	bfd_init();

	
	/*
	if(!bfd_set_default_target(target)){
		
		printf("Error in bfd_set_default_target\n");
		return -1;

	}
	*/

	/*
	if(get_file_size(argv[1]) < 1){
	
		fprintf(stderr, "File %s has some problem\n", argv[1]);
		return -1;

	}
	*/

	/*
	if((bfd_file = bfd_openr(argv[1], target)) == NULL){

		printf("Error:: open %s file\n", argv[1]);	
		return -1;

	}


		
	if(!bfd_check_format_matches(bfd_file, bfd_object, &matching)){

		fprintf(stderr, "Error: FILE format is not object\n");
		return -1;
	
	}
	*/

	printf("bfd_open start..\n");
	//bfd_file = bfd_openr(argv[1], "elf-x86-64");
	//bfd_file = bfd_openr(argv[1], "x86-64");
	//bfd_file = bfd_openr(argv[1], "x86_64--linux");
	//bfd_file = bfd_openr(argv[1], "i386-linux");
	//bfd_file = bfd_openr(argv[1], "x86_64-linux");
	//bfd_file = bfd_openr(argv[1], "elf64-x86-64");
	bfd_file = bfd_openr(argv[1], "x86_64-pc-linux-gnu");
	
	
	printf("bfd_open finish..\n");
	if(bfd_file == NULL)
	{
		printf("bfd_file is null\n");
	}

	asection* point;
	
	/* GET .text section information */
	
	printf("bfd_get_section_by_name start..\n");
	point = bfd_get_section_by_name(bfd_file, ".text");
	printf("bfd_get_section_by_name finish..\n");

	if(point == NULL)
	{
		printf("point is null\n");
	}

	unsigned int text_vma_begin = point->vma;
	unsigned int text_vma_end = point->vma + point->size;

	printf("text_vma_begin: %x\n", text_vma_begin);




	/* GET vector_table section information */
	/*
	point = bfd_get_section_by_name(bfd_file, ".isr_vector");
	elfinfo->elf_sections.vector_table.vma = point->vma;
	elfinfo->elf_sections.vector_table.offset = point->filepos;
	elfinfo->elf_sections.vector_table.size = point->size;
	*/

	/* GET vector_isr section information */
	/*
	point = bfd_get_section_by_name(bfd_file, ".isr_vector");
	elfinfo->elf_sections.vector_isr.vma = point->vma;
	elfinfo->elf_sections.vector_isr.offset = point->filepos;
	elfinfo->elf_sections.vector_isr.size = point->size;
	*/
	// THIS value would be updated in get_symbol.c

	/* GET .text section information */
/*
	point = bfd_get_section_by_name(bfd_file, ".text");
	
	unsigned int text_vma_begin = point->vma;
	unsigned int text_vma_end = point->vma + point->size;

	printf("text_vma_begin: %x\n", text_vma_begin);
	printf("text_vma_end: %x\n", text_vma_end);
*/
	/*
	elfinfo->elf_sections.text.vma = point->vma;
	elfinfo->elf_sections.text.offset = point->filepos;
	elfinfo->elf_sections.text.size = point->size + 1;
	*/
	// I don't know why it needs +1 ( wrong value from bfd ?) 
	
	/* GET .data section information */
	/*
	point = bfd_get_section_by_name(bfd_file, ".data");
	elfinfo->elf_sections.data.vma = point->vma;
	elfinfo->elf_sections.data.offset = point->filepos;
	elfinfo->elf_sections.data.size = point->size;
	*/
	
	/* GET .bss section information */
	/*
	point = bfd_get_section_by_name(bfd_file, ".bss");
	elfinfo->elf_sections.bss.vma = point->vma;
	elfinfo->elf_sections.bss.offset = point->filepos;
	elfinfo->elf_sections.bss.size = point->size;
	*/

	/* GET .inits section information */
	/*
	point = bfd_get_section_by_name(bfd_file, ".inits");
	elfinfo->elf_sections.inits.vma = point->vma;
	elfinfo->elf_sections.inits.offset = point->filepos;
	elfinfo->elf_sections.inits.size = point->size;
	*/
}
