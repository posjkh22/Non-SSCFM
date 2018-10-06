
#include "file_handle.h"


/* CONNECT TIMER HANDLER WITH VECTOR TABLE */

int generate_splited_vector_table_bin(ElfInfo* elfinfo, eiftable* eiftable, required_code_set* req){

	int vector_table_start_elf_offset 	= elfinfo->elf_sections.vector_table.offset; 
	int vector_table_end_elf_offset	 	= elfinfo->elf_sections.vector_table.offset 
										+ elfinfo->elf_sections.vector_table.size;
	
	file_split_vector_table_part(   \
			vector_table_start_elf_offset,   \
			vector_table_end_elf_offset);

	update_vector_table(elfinfo, eiftable, req);

}

int file_split_vector_table_part(int start_address, int end_address){

	FILE* in;
	FILE* out; 

	file_in_out_open_overwrite("input/test.elf","debug/pre_vector_table.bin", &in, &out);
	file_in_out_code_cut(in, out, start_address, end_address);
	
	file_in_out_close(in, out);
}

int update_vector_table(ElfInfo* elfinfo, eiftable* eiftable, required_code_set* req){


	FILE* in;
	FILE* out;

	int addition_bytes = 16;
	int eif_start_addr = eiftable->_eif_boundary.text.boundary_start;


	file_in_out_open_overwrite("debug/pre_vector_table.bin","debug/part_vector_table.bin", &in, &out);
	file_vector_update_with_read_4_bytes(elfinfo, eiftable, req, in, out);
	
	file_in_out_close(in, out);

}

int file_vector_update_with_read_4_bytes(ElfInfo* elfinfo, eiftable* eiftable, required_code_set* req, FILE* in, FILE* out){


	int buf;

	int current_offset = 0;

	int systick_vma = req->systick.vma;

	while(fread(&buf, 1, sizeof(buf), in) > 0){

		/* SYSTICK IRQN */
		if( current_offset == 0x3c ){ 

			printf("\n ## VECTOR TABLE UPDATED!: %x\n", systick_vma);
			buf = systick_vma + 1;
			fwrite(&buf, 1, sizeof(buf),  out);
			current_offset += sizeof(buf);

		} 
		else {

			fwrite(&buf, 1, sizeof(buf),  out);
			current_offset += sizeof(buf);
		}

	}
	

	return 0;

}


