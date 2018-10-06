#include "extract_elf.h"

int Extract_elf(ElfInfo **elfinfo, int argc, char* argv[]){

	FILE *fp;
	char *buf;
	
	FILE *init;
	FILE *result;

	unsigned int shoff, phoff;
	unsigned short shnum, shentsize, shstrndx;
	unsigned short phnum, phentsize;	
	unsigned int e_shstrtab, e_symtab, e_strtab;
	unsigned int size_shstrtab, size_symtab, size_strtab;


	*elfinfo = (ElfInfo*)malloc(sizeof(ElfInfo));	


	/* READ DATA FROM ELF */

	if(read_elf(&fp, &buf, argc, argv))
	{
		perror(" read_elf error !\n");
		exit(-1);
	}

	phoff = buf_int_data(28);
	phnum = buf_short_data(44);
	phentsize = buf_short_data(42);

	shoff = buf_int_data(32);
	shnum = buf_short_data(48);
	shentsize = buf_short_data(46);
	shstrndx = buf_short_data(50);

	/* this offset could vary according to linker script */
	e_shstrtab = buf_int_data(shoff + (shstrndx * shentsize + 16 ));
	e_symtab = buf_int_data(shoff + ((shstrndx+1) * shentsize + 16 ));
	e_strtab = buf_int_data(shoff + ((shstrndx+2) * shentsize + 16 ));				
	
	//e_shstrtab = buf_int_data(shoff + ((shstrndx) * shentsize + 16 ));
	//e_symtab = buf_int_data(shoff + ((shstrndx-2) * shentsize + 16 ));
	//e_strtab = buf_int_data(shoff + ((shstrndx-1) * shentsize + 16 ));				

	size_shstrtab = buf_int_data(shoff + (shstrndx * shentsize + 20 ));
	size_symtab = buf_int_data(shoff + ((shstrndx+1) * shentsize + 20 ));
	size_strtab = buf_int_data(shoff + ((shstrndx+2) * shentsize + 20 ));				
	
	//size_shstrtab = buf_int_data(shoff + ((shstrndx) * shentsize + 20 ));
	//size_symtab = buf_int_data(shoff + ((shstrndx-2) * shentsize + 20 ));
	//size_strtab = buf_int_data(shoff + ((shstrndx-1) * shentsize + 20 ));				

	
	/* GET SECTION FROM ELF */
	get_section_from_elf(*elfinfo, argc, argv);	

	/* GET USR FUNCTION FROM ELF */

	get_symbol_from_elf(elfinfo, buf);


	/** PRINT obtained USR function from SYMTAB **/

	#ifdef DEBUG
	int tmp_count = 0;
	for( ; tmp_count < get_func_count() ; tmp_count++ ){

		printf(" number	: %d\n", get_func_num(tmp_count));
		printf(" name	: %s\n", get_func_name(tmp_count));
		printf(" offset : %x\n", get_func_offset(tmp_count));
		printf(" vma   	: %x\n", get_func_addr(tmp_count));

	}
	#endif
	

}


