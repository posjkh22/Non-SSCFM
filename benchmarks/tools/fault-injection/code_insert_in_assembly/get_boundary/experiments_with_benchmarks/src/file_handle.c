
#include "file_handle.h"


/*  #0. CREATE_ROCDE ##################################################################################*/

required_code_set* create_rcode(){
	
	required_code_set* req;

	(req) = (required_code_set*)malloc(sizeof(required_code_set));
	(req)->rcode_number = 2; // default & basic (start ~ end)

	return req;
}


/* #1. FILE OPEN & CLOSE ##############################################################################*/

int file_in_out_open_overwrite(char* in_name, char* out_name, FILE** in, FILE** out){

	(*in ) = fopen(in_name, "r");
	(*out) = fopen(out_name, "w");

	return 0;
}

int file_in_out_open_append(char* in_name, char* out_name, FILE** in, FILE** out){

	(*in ) = fopen(in_name, "r");
	(*out) = fopen(out_name, "a");

	return 0;
}

int file_in_out_close(FILE* in, FILE* out){

	fclose(in);
	fclose(out);

}


/* #2. FILE SEPERATION ###############################################################################*/


int file_split_vector_isr_part(int start_address, int end_address){

	FILE* in;
	FILE* out; 

	file_in_out_open_overwrite("test.elf","part_vector_isr.bin", &in, &out);
	file_in_out_code_cut(in, out, start_address, end_address);
	
	file_in_out_close(in, out);
}

int file_split_text_before_target(int start_addr, int end_addr){

	FILE* in;
	FILE* out;

	file_in_out_open_overwrite("debug/ppre_text.bin", "debug/ppre_text_bt.bin", &in, &out);
	file_copy_from_to(in, out, start_addr, end_addr);
	file_in_out_close(in, out);

}

int file_split_text_target(int start_addr, int end_addr){

	FILE* in;
	FILE* out;

	file_in_out_open_overwrite("debug/ppre_text.bin", "debug/ppre_text_t.bin", &in, &out);
	file_copy_from_to(in, out, start_addr, end_addr);
	file_in_out_close(in, out);

}

int file_split_text_after_target(int start_addr, int end_addr){

	FILE* in;
	FILE* out;

	file_in_out_open_overwrite("debug/ppre_text.bin", "debug/ppre_text_at.bin", &in, &out);
	file_copy_from_to(in, out, start_addr, end_addr);
	file_in_out_close(in, out);

}



/* #3. FILE GATHERING #################################################################################*/

int file_read_and_append(FILE *in, FILE *out){

	short buf;

	while(fread(&buf, 1, sizeof(buf), in) > 0){
	
		fwrite(&buf, 1, sizeof(buf),  out);
	}
}

int file_gather(){

	file_stack_vector_table_section();
	file_stack_vector_isr_and_text_section();
	file_stack_data_section();

}

/* FILE STACK SECTIONS */

int file_stack_vector_table_section(){	

	FILE* in;
	FILE* out; 

	file_in_out_open_append("debug/part_vector_table.bin","output/updated_test.bin", &in, &out);
	file_read_and_append (in, out);
	file_in_out_close(in, out);

}

int file_stack_vector_isr_and_text_section(){	

	FILE* in;
	FILE* out; 

	file_in_out_open_append("debug/part_updated_text.bin","output/updated_test.bin", &in, &out);
	file_read_and_append (in, out);
	file_in_out_close(in, out);
}

int file_stack_data_section(){	

	FILE* in;
	FILE* out; 

	file_in_out_open_append("debug/part_data.bin","output/updated_test.bin", &in, &out);
	file_read_and_append (in, out);
	file_in_out_close(in, out);
}


/* FILE STACK TEXT SECTION */

int file_stack_text_before_target(){	

	FILE* in;
	FILE* out; 

	file_in_out_open_append("debug/ppre_text_bt.bin","debug/part_updated_text-1.bin", &in, &out);
	file_read_and_append (in, out);
	file_in_out_close(in, out);
}


int file_stack_text_in_target(){	

	FILE* in;
	FILE* out; 

	file_in_out_open_append("debug/ppre_text_tt.bin","debug/part_updated_text-1.bin", &in, &out);
	file_read_and_append (in, out);
	file_in_out_close(in, out);
}

int file_stack_text_after_target(){	

	FILE* in;
	FILE* out; 

	file_in_out_open_append("debug/ppre_text_at.bin","debug/part_updated_text-1.bin", &in, &out);
	file_read_and_append (in, out);
	file_in_out_close(in, out);
}

int file_stack_text_timer_start(){	

	FILE* in;
	FILE* out; 

	file_in_out_open_append("debug/timer_start.bin","debug/part_updated_text-1.bin", &in, &out);
	file_read_and_append (in, out);
	file_in_out_close(in, out);
}

int file_stack_text_timer_end(){	

	FILE* in;
	FILE* out; 

	file_in_out_open_append("debug/timer_end.bin","debug/part_updated_text-1.bin", &in, &out);
	file_read_and_append (in, out);
	file_in_out_close(in, out);

}

int file_stack_text_timer_systick(){	

	FILE* in;
	FILE* out; 

	file_in_out_open_append("debug/timer_systick.bin","debug/part_updated_text-1.bin", &in, &out);
	file_read_and_append (in, out);
	file_in_out_close(in, out);

}



/* #4. FILE COPY ######################################################################################*/

/* JUST COPY */
int file_copy(FILE *in, FILE *out){

	int buf;

	while(fread(&buf, 1, sizeof(buf), in) > 0){

		fwrite(&buf, 1, sizeof(buf),  out);

	}
}

/* COPY BY BYTES */
int file_copy_from_to(FILE *in, FILE *out, int from, int to){

	/* Input file, from 'ELF offset from' */
	fseek(in, from, SEEK_SET);

	file_copy_n_byte(in, out, to-from+1);

	return 0;
}

int file_copy_n_byte(FILE *in, FILE *out, unsigned int n){

	short buf;

	int it = n/sizeof(buf);

	for( ; it > 0; it--){
		fread(&buf, 1, sizeof(buf), in);
		fwrite(&buf, 1, sizeof(buf), out);

	if( it == 0)
		break;

	}

	return 0;
}


/* #5. CREATE TIMER BINARY CODE #######################################################################*/


/* TIMER SYSTICK */
int cut_out_code_systick(int start_address, int end_address){

	FILE* in;
	FILE* out;

	file_in_out_open_overwrite("input_elf/test.bin","output/timer_systick", &in, &out);
	file_in_out_code_cut(in, out, start_address, end_address);
	
	file_in_out_close(in, out);

}

/* TIMER START */
int cut_out_code_start(int start_address, int end_address){

	FILE* in;
	FILE* out;

	file_in_out_open_overwrite("input_elf/test.bin","output/timer_start", &in, &out);
	file_in_out_code_cut(in, out, start_address, end_address);
	
	file_in_out_close(in, out);

}

/* TIMER END */
int cut_out_code_end(int start_address, int end_address){

	FILE* in;
	FILE* out;

	file_in_out_open_overwrite("input_elf/test.bin","output/timer_end", &in, &out);
	file_in_out_code_cut(in, out, start_address, end_address);
	
	file_in_out_close(in, out);

}


int file_in_out_code_cut(FILE* in, FILE* out, int start_address, int end_address){

	short buf;
	short _buf;

	int size = (end_address - start_address)/sizeof(buf);

	fseek(in, start_address, SEEK_SET);
	
	while(fread(&buf, 1, sizeof(buf), in) > 0){
		
		fwrite(&buf, 1, sizeof(buf),  out);

		size--;

		if(size == 0)
			break;

	}

	return 0;

}


#ifdef MORE_ADVANCED

int pre_research_elf_text(ElfInfo* elfinfo, eiftable* eiftable){
	
	FILE* in;

	in = fopen("test.elf", "r");
	pre_research_target_function(elfinfo, eiftable, in);

	fclose(in);

}

int pre_research_target_function(ElfInfo* elfinfo, eiftable* eiftable, FILE* in){


	
	short buf;

	int bl_ins;
	int bl_flag;
	
	int rel;
	int target_address;

	int current_vma;

	int text_section_start_vma = elfinfo->elf_sections.text.vma;
	int text_section_end_vma = elfinfo->elf_sections.text.vma + elfinfo->elf_sections.text.size;

	int target_vma = eiftable->target.vma;



	bl_flag = 0;
	bl_ins  = 0;

	current_vma = elfinfo->elf_sections.vector_isr.vma;
	
	int start_elf_offset = elfinfo->elf_sections.vector_isr.offset;


	printf("\n\n ## PRE-RESEARCH TARGET TEST\n\n");

	fseek(in, start_elf_offset, SEEK_SET);

	int sym_func_no = 0;
	int found_target_bl = 0;
	
	while(fread(&buf, 1, sizeof(buf), in) > 0){


		if( (( buf >> 11) & 0x1f) == 0x1e){
			bl_ins |= ((buf << 16));
			bl_flag = 1;

			current_vma += sizeof(buf);

		} 

		else if( bl_flag == 1){

			bl_ins |= (buf & 0xffff);
	
	
			if(check_bl_instruction(bl_ins, &rel) == 1){

				target_address = current_vma + rel + 2;


				if( target_address == eiftable->target.vma ){

					found_target_bl = current_vma;

					printf(" #### BRACH TO TARGET DETECTED! \n"); 
					printf(" ## bl_instruction detected: %x\n", bl_ins);
					printf(" ## bl_target_address: %x\n", target_address);
					printf(" ## bl_rel: %x\n", rel);
					printf(" ## pc: %x\n", current_vma + 2);

				}

				current_vma += sizeof(buf);
				bl_flag = 0;
				
				bl_ins = 0;
			}
			else {
				current_vma += sizeof(buf);
				bl_flag = 0;

				bl_ins = 0;
			}



		}

		else {

			current_vma += sizeof(buf);
			bl_flag = 0;
			
			bl_ins = 0;
		}

		if( current_vma == text_section_end_vma ){
		
				/* 

				need to be array!
				
				*/
			
			printf(" DEBUG: FUNC_COUNT %d\n", elfinfo->func_count);
			for(sym_func_no = 0; sym_func_no < elfinfo->func_count ; sym_func_no++){
				if( (elfinfo->func_table[sym_func_no].func_addr < found_target_bl ) && ( found_target_bl < elfinfo->func_table[sym_func_no].func_addr + elfinfo->func_table[sym_func_no].func_size ) ){
							
						break;
				}
			}
			printf(" ## TARGET INCLUDED NO %x\n", sym_func_no);
			
			printf(" ## TARGET INCLUDED NAME %s\n", elfinfo->func_table[sym_func_no].func_name);
			printf(" ## TARGET INCLUDED IN %x\n", elfinfo->func_table[sym_func_no].func_addr);
			printf(" ## TARGET INCLUDED IN %x\n", elfinfo->func_table[sym_func_no].func_size);
	
			break;
		}
	}
	
	printf("\n\n ## PRE RESEARCH TARGET END\n\n");

}

#endif


