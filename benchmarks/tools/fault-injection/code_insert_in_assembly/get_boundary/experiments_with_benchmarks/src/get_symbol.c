#include "get_symbol.h"

int get_symbol_from_elf(ElfInfo **elfinfo, char* buf){


	int ep;
	int i;
	int sym_count;
	int tmp;

	unsigned int shoff, phoff;
	unsigned short shnum, shentsize, shstrndx;
	unsigned short phnum, phentsize;	
	unsigned int e_shstrtab, e_symtab, e_strtab;
	unsigned int size_shstrtab, size_symtab, size_strtab;
	unsigned char string_name[NAMESIZE] = {0, };	

	phoff = buf_int_data(28);
	phnum = buf_short_data(44);
	phentsize = buf_short_data(42);

	shoff = buf_int_data(32);
	shnum = buf_short_data(48);
	shentsize = buf_short_data(46);
	shstrndx = buf_short_data(50);

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



	/* DETERMINE THE NUMBER OF FUNC SYMBOLS FROM SYMTAB */

	for(ep = e_symtab, i = 0, tmp = 0, sym_count = 0; !(ep == (e_symtab + size_symtab)) ; ep+=16, i++ ){	
		
		tmp = buf[ep+12];		
		if(((tmp&0xf) == 2) && (buf[ep+8] != 0)) {			
			sym_count++;
		}		
	}
	set_func_count(sym_count);		

	/*	SET FUNC_NUMBER FROM SYMBOL NUMBER	*/
	printf(" ## THE NUMBER OF FUNCTION (FROM SYMTAB): %d\n", sym_count);

	(*elfinfo)->func_table = (FUNC_TABLE*)malloc(sizeof(FUNC_TABLE) * sym_count);


	/* EXTRACT FUNC SYMBOL DATA FROM SYMTAB */

	#ifdef DEBUG
	printf("\n ** FIND FUNCTION FROM SYMBOL TABLE **\n");
	#endif

	for(ep = e_symtab, i = 0; !(ep == (e_symtab + size_symtab)); ep+=16){	
		
		tmp = buf[ep+12];		
		sprintf(string_name, "%s", &buf[e_strtab + buf_int_data(ep)]);

		//if( ((num>>4) == 1) && ((num&0xf) == 2) && (buf[ep+8] != 0) && (string_name[0] != '_') ) {
		//if( ((num>>4) == 1) && ((num&0xf) == 2) && (buf[ep+8] != 0)) {
		if(((tmp&0xf) == 2) && (buf[ep+8] != 0)){
			set_func_name(i, string_name);
			set_func_addr(i, buf_int_data(ep+4));	
			set_func_size(i, buf_int_data(ep+8));
			set_func_num(i);
			i++;
		}
	}

	/* DETERMINE SIZE OF VECTOR_TABLE (FROM _START VMA) */
	for(i = 0; i < get_func_count() ; i++){
		if(!strcmp(get_func_name(i),"_start"))
			break;
	}  	
	
	int _start_vma = get_func_addr(i);

	printf(" ## VECTOR_TABLE SIZE:%x\n", get_func_addr(i));



	/* 	FIND TARGET	*/
	for(i = 0; i < get_func_count() ; i++){
		if(!strcmp(get_func_name(i),"_Z22simple_target_functionv"))
			break;
	}  	
	(*elfinfo)->target_function_no = i;

	printf(" ## TARGET FUNCTION OFFSET FROM ELF:%x\n", get_func_addr(i));


	/* UPDATE & SET VECOTOR_TABLE DATA (INITIALLY DONE AT GET_SECTION.C */
	(*elfinfo)->elf_sections.vector_table.size = _start_vma - (*elfinfo)->elf_sections.vector_table.vma;
	
	/* UPDATE & SET VECTOR_ISR DATA (INITIALLY DONE AT GET_SECTION.C */
	(*elfinfo)->elf_sections.vector_isr.vma = _start_vma;
	(*elfinfo)->elf_sections.vector_isr.offset = (*elfinfo)->elf_sections.vector_table.offset + (*elfinfo)->elf_sections.vector_table.size;
	(*elfinfo)->elf_sections.vector_isr.size = (*elfinfo)->elf_sections.text.vma - (*elfinfo)->elf_sections.vector_isr.vma;


}








