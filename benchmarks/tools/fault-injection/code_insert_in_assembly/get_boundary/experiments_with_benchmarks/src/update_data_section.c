
#include "file_handle.h"

int generate_splited_data_bin(ElfInfo* elfinfo, eiftable *eiftable){

	int data_section_start_elf_offset 	= elfinfo->elf_sections.data.offset;
	int data_section_end_elf_offset		= elfinfo->elf_sections.data.offset \
										+ elfinfo->elf_sections.data.size;

	file_split_data_part(data_section_start_elf_offset, 
							data_section_end_elf_offset);
	update_splited_data_part(elfinfo, eiftable);

}


int file_split_data_part(int start_address, int end_address){

	FILE* in;
	FILE* out;

	file_in_out_open_overwrite("input/test.elf","debug/pre_part_data.bin", &in, &out);
	file_in_out_code_cut(in, out, start_address, end_address);
	
	file_in_out_close(in, out);
}


int update_splited_data_part(ElfInfo* elfinfo, eiftable* eiftable){

	FILE* in;
	FILE* out;

	int eif_start_addr = eiftable->_eif_boundary.text.boundary_start;

	file_in_out_open_overwrite("debug/pre_part_data.bin","debug/part_data.bin", &in, &out);
	file_update_data(in, out, elfinfo);
	
	file_in_out_close(in, out);
}



int file_update_data(FILE* in, FILE* out, ElfInfo* elfinfo){

	int increase = TIMER_DATA_BYTES;

	file_copy(in, out);
	update_data(in, out);

	elfinfo->elf_sections.updated_data.vma  = elfinfo->elf_sections.data.vma;
	elfinfo->elf_sections.updated_data.size = elfinfo->elf_sections.data.size + increase;

	elfinfo->elf_sections.updated_bss.vma  = elfinfo->elf_sections.bss.vma + increase;
	elfinfo->elf_sections.updated_bss.size = elfinfo->elf_sections.bss.size;
}

int update_data(FILE* in, FILE* out){


	int time_val = 0;
	int laps_time = 0;
//	int _d_ = TRACE_PRINTF_REQUIRED_WORD;

	int a = 0x6c6c6548;
	int b = 0x00a0216f;

	int buf;

	buf = time_val;
	fwrite(&buf, 1, sizeof(buf), out);


	buf = laps_time;
	fwrite(&buf, 1, sizeof(buf), out);

//	buf = _d_;
//	fwrite(&buf, 1, sizeof(buf), out);

/*	
	buf = a;
	fwrite(&buf, 1, sizeof(buf), out);

	buf = b;
	fwrite(&buf, 1, sizeof(buf), out);
*/
}

