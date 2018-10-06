

#include "config.h"
#include "bfd.h"
#include "libiberty.h"
#include "bucomm.h"
#include "demangle.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "extract_elf.h"


bfd *bfd_file;

int get_section_from_elf(ElfInfo* elfinfo, int argc, char *argv[])
{
	char *target = "arm-none-eabi";
	char **target_list;
	char **matching;


	long storage_needed;	
	int i;
	
	/*	 	bfd init	*/
	if(argc < 2)
	{
		printf("Usage: code_probe [ELF file name]\n");
		return -1;
	}
	
	xmalloc_set_program_name(*argv);
	bfd_set_error_program_name(*argv);

	bfd_init();

	if(!bfd_set_default_target(target)){
		
		printf("Eroor in bfd_set_default_target\n");
		return -1;

	}

	if(get_file_size(argv[1]) < 1){
	
		fprintf(stderr, "File %s has some problem\n", argv[1]);
		return -1;

	}

	if((bfd_file = bfd_openr(argv[1], target)) == NULL){

		printf("Error:: open %s file\n", argv[1]);	
		return -1;

	}

	
	if(!bfd_check_format_matches(bfd_file, bfd_object, &matching)){

		fprintf(stderr, "Error: FILE format is not object\n");
		return -1;
	
	}


	asection* point;

	/* GET vector_table section information */
	point = bfd_get_section_by_name(bfd_file, ".isr_vector");
	elfinfo->elf_sections.vector_table.vma = point->vma;
	elfinfo->elf_sections.vector_table.offset = point->filepos;
	elfinfo->elf_sections.vector_table.size = point->size;

	/* GET vector_isr section information */
	point = bfd_get_section_by_name(bfd_file, ".isr_vector");
	elfinfo->elf_sections.vector_isr.vma = point->vma;
	elfinfo->elf_sections.vector_isr.offset = point->filepos;
	elfinfo->elf_sections.vector_isr.size = point->size;
	// THIS value would be updated in get_symbol.c

	/* GET .text section information */
	point = bfd_get_section_by_name(bfd_file, ".text");
	elfinfo->elf_sections.text.vma = point->vma;
	elfinfo->elf_sections.text.offset = point->filepos;
	elfinfo->elf_sections.text.size = point->size + 1;
	// I don't know why it needs +1 ( wrong value from bfd ?) 
	
	/* GET .data section information */
	point = bfd_get_section_by_name(bfd_file, ".data");
	elfinfo->elf_sections.data.vma = point->vma;
	elfinfo->elf_sections.data.offset = point->filepos;
	elfinfo->elf_sections.data.size = point->size;

	
	/* GET .bss section information */
	point = bfd_get_section_by_name(bfd_file, ".bss");
	elfinfo->elf_sections.bss.vma = point->vma;
	elfinfo->elf_sections.bss.offset = point->filepos;
	elfinfo->elf_sections.bss.size = point->size;

	/* GET .inits section information */
	point = bfd_get_section_by_name(bfd_file, ".inits");
	elfinfo->elf_sections.inits.vma = point->vma;
	elfinfo->elf_sections.inits.offset = point->filepos;
	elfinfo->elf_sections.inits.size = point->size;

}
