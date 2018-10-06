
#include "get_eiftable.h"

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

#define section_bss_vma 			((elfinfo)->elf_sections.bss.vma)
#define section_bss_offset 			((elfinfo)->elf_sections.bss.offset)
#define section_bss_size 			((elfinfo)->elf_sections.bss.size)

/*

typedef struct _eiftable {
	
	ftarget target;
	int eifentry_entry_num;
	eifentry *entry_arr;
	eif_boundary _eif_boundary;

}eiftable;

*/


/* GENERATE TARGET FUNCTION RELATED INFO */


eiftable* generate_iftable_from_elf(ElfInfo *elfinfo){

	iftable* _iftable;
	eiftable* _eiftable;

	int eif_count;


	/* create iftable & set entries */
	set_iftable(&_iftable, elfinfo);
	set_iftable_entry(elfinfo, &_iftable);

	/* create eiftable */
	set_eiftable(&_eiftable);

	#ifdef DEBUG
	print_iftable_for_debug(_iftable);
	#endif

	/* pre-processing (sort) */
	sort_iftable_by_offset(&_iftable);

	#ifdef DEBUG
	print_iftable_for_debug(_iftable);
	#endif

	/* pre-processing (find_boundary) */
	
	int target_sym_no = (elfinfo)->target_function_no;
	search_iftable_by_sym_num(_iftable, target_sym_no, &((_eiftable)->eifentry_entry_num));



	#ifdef DEBUG
	//printf(" ## EIF ENTRY NUMBER: %d\n", (_eiftable)->eifentry_size);
	#endif

	/* pre-processing (sever) - set eiftable entries */
	set_eiftable_entry(_iftable, &_eiftable);

	/* pre-processing (re-sort) */
	sort_eiftable_by_offset(&_eiftable);

	set_eif_boundary(_eiftable, elfinfo);	

	printf("\n");
	printf(" ## TARGET FUNCTION VMA: %x (%s)\n", elfinfo->func_table[target_sym_no].func_addr, elfinfo->func_table[target_sym_no].func_name);
	printf(" ## EIF BOUNDARY FROM : %x\n", (_eiftable)->_eif_boundary.text.boundary_start);
	printf(" ## EIF BOUNDARY TO   : %x\n", (_eiftable)->_eif_boundary.text.boundary_end);
	
	FILE* out = fopen("bounds", "w");
	fprintf(out, "%x\n",(_eiftable)->_eif_boundary.text.boundary_start);
	fprintf(out, "%x\n", (_eiftable)->_eif_boundary.text.boundary_end);

	fclose(out);

	/* eiftable */
	/*
	printf("\n ## EIFTABLE AS BELOW\n");
	print_eiftable_for_debug(_eiftable);

	printf("\n");
	printf(" ## ELF SECTION INFO WITH FOUR CATEGORIES (BEFORE UPDATE) \n");

	printf(" -> vector_table_vma 	: %x ~ %x\n",	\
				section_vector_table_vma, section_vector_table_vma + section_vector_table_size);
	printf(" -> vector_table_size 	: %x\n", 	section_vector_table_size);

	printf(" -> vector_isr_vma 		: %x ~ %x\n",	\
				section_vector_isr_vma, section_vector_isr_vma + section_vector_isr_size);
	printf(" -> vector_isr_size 	: %x\n", 	section_vector_isr_size);

	printf(" -> text_vma 			: %x ~ %x\n",	\
				section_text_vma, section_text_vma + section_text_size);
	printf(" -> text_size 			: %x\n", 	section_text_size);
 
	printf(" -> data_vma 			: %x ~ %x\n",	\
				section_data_vma, section_data_vma + section_data_size);
	printf(" -> data_size 			: %x\n", 	section_data_size);

	printf(" -> bss_vma 			: %x ~ %x\n",	\
				section_bss_vma, section_bss_vma + section_bss_size);
	printf(" -> bss_size 			: %x\n", 	section_bss_size);
	*/

	#ifdef DEBUG
	printf(" -> vector_table_vma 	: %x\n", 		section_vector_table_vma);
	printf(" -> vector_table_offset : %x\n", 	section_vector_table_offset);
	printf(" -> vector_table_size 	: %x\n", 	section_vector_table_size);

	printf(" -> vector_isr_vma 		: %x\n", 	section_vector_isr_vma);
	printf(" -> vector_isr_offset 	: %x\n", section_vector_isr_offset);
	printf(" -> vector_isr_size 	: %x\n", 	section_vector_isr_size);

	printf(" -> text_vma 			: %x\n", 		section_text_vma);
	printf(" -> text_offset 		: %x\n", 	section_text_offset);
	printf(" -> text_size 			: %x\n", 	section_text_size);
 
	printf(" -> data_vma 			: %x\n", 		section_data_vma);
	printf(" -> data_offset 		: %x\n", 	section_data_offset);
	printf(" -> data_size 			: %x\n", 	section_data_size);

	printf(" -> bss_vma 			: %x\n", 		section_bss_vma);
	printf(" -> bss_offset	 		: %x\n", 	section_bss_offset);
	printf(" -> bss_size 			: %x\n", 	section_bss_size);
	#endif

	return _eiftable;

}


int set_iftable(iftable** _iftable, ElfInfo* elfinfo){

	int iftable_entry_num = elfinfo->func_count;

	(*_iftable) = (iftable*)malloc(sizeof(iftable));
	
	(*_iftable)->target.vma = elfinfo->func_table[elfinfo->target_function_no].func_addr;	// default
	(*_iftable)->target.size = elfinfo->func_table[elfinfo->target_function_no].func_size;	// default
	(*_iftable)->ifentry_entry_num = iftable_entry_num;

}


int set_eiftable(eiftable** _eiftable){

	(*_eiftable) = (eiftable*)malloc(sizeof(eiftable));
	

}




int set_iftable_entry(ElfInfo* elfinfo, iftable** _iftable){

	int i;
	
	(*_iftable)->entry_arr = (ifentry*)malloc(sizeof(ifentry) * (*_iftable)->ifentry_entry_num + 1); 
	
	for(i = 0; i < (*_iftable)->ifentry_entry_num ; i++){
	
		(*_iftable)->entry_arr[i].entry_no = elfinfo->func_table[i].func_num;
		(*_iftable)->entry_arr[i].vma = elfinfo->func_table[i].func_addr;
		(*_iftable)->entry_arr[i].byte_size = elfinfo->func_table[i].func_size;

	}

}

int set_eiftable_entry(iftable* _iftable, eiftable** _eiftable){

	int i;
		
	(*_eiftable)->entry_arr = (eifentry*)malloc(sizeof(eifentry) * (*_eiftable)->eifentry_entry_num + 1);
	(*_eiftable)->target.vma = _iftable->target.vma;
	(*_eiftable)->target.size = _iftable->target.size;
	
	for(i = 0; i < (*_eiftable)->eifentry_entry_num; i++){
	
		(*_eiftable)->entry_arr[i].entry_no = (_iftable)->entry_arr[i].entry_no;
		(*_eiftable)->entry_arr[i].vma = (_iftable)->entry_arr[i].vma;
		(*_eiftable)->entry_arr[i].byte_size = (_iftable)->entry_arr[i].byte_size;


	}
}



int print_iftable_for_debug(iftable* _iftable){

	int i;

	for(i = 0;  i < (_iftable)->ifentry_entry_num ; i++){
	
		printf(" -> entry_num: %d, entry_offset: %x, byte_size: %x\n", (_iftable)->entry_arr[i].entry_no, (_iftable)->entry_arr[i].vma, (_iftable)->entry_arr[i].byte_size);  

	}
}

int print_eiftable_for_debug(eiftable* _eiftable){

	int i;

	for(i = 0;  i < (_eiftable)->eifentry_entry_num ; i++){
	
		printf(" -> entry_num: %d, entry_offset: %x, byte_size: %x\n", (_eiftable)->entry_arr[i].entry_no, (_eiftable)->entry_arr[i].vma, (_eiftable)->entry_arr[i].byte_size);  

	}
}

int i_compare_offset(const void *a, const void *b){

	int offset_a = ((ifentry*)a)->vma;
	int offset_b = ((ifentry*)b)->vma;

	if(offset_a > offset_b) return -1;
	else if(offset_a == offset_b) return 0;
	else return 1;

}

int ei_compare_offset(const void *a, const void *b){

	int offset_a = ((eifentry*)a)->vma;
	int offset_b = ((eifentry*)b)->vma;

	if(offset_a < offset_b) return -1;
	else if(offset_a == offset_b) return 0;
	else return 1;

}

int sort_iftable_by_offset(iftable** _iftable){

	printf(" iftable entry number : %d \n",(*_iftable)->ifentry_entry_num);

	qsort((*_iftable)->entry_arr, (*_iftable)->ifentry_entry_num, sizeof(ifentry), i_compare_offset); 

}

int sort_eiftable_by_offset(eiftable** _eiftable){

	printf(" eiftable entry number : %d \n",(*_eiftable)->eifentry_entry_num);

	qsort((*_eiftable)->entry_arr, (*_eiftable)->eifentry_entry_num, sizeof(eifentry), ei_compare_offset); 


}

int search_iftable_by_sym_num(iftable* _iftable, int sym_num, int* eif_count){

	int i;

	for(i = 0; i <(_iftable)->ifentry_entry_num ; i++){
	
		if(sym_num == (_iftable)->entry_arr[i].entry_no){

			(*eif_count) = i;
			break;
		}

	}

}


int set_eif_boundary(eiftable* _eiftable, ElfInfo* elfinfo){

	_eiftable->_eif_boundary.text.boundary_start = _eiftable->entry_arr[0].vma;
	_eiftable->_eif_boundary.text.boundary_end   = elfinfo->elf_sections.text.vma + elfinfo->elf_sections.text.size;

}


