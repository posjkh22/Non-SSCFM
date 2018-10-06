
#include "file_handle.h"

/*	GENERATE UPDATED VECTOR ISR & TEXT SECTION */



int generate_updated_vector_isr_and_text_section(ElfInfo* elfinfo, eiftable *eiftable, required_code_set* required_code_set){


	int vector_isr_section_start_elf_offset = elfinfo->elf_sections.vector_isr.offset;
	int text_section_end_elf_offset 		= elfinfo->elf_sections.text.offset \
												+ elfinfo->elf_sections.text.size;

	/* #1 Seperate VECTOR ISR & TEXT SECTION from ELF */
	file_seperate_vector_isr_and_text_section_from_elf(  \
		vector_isr_section_start_elf_offset, \
		text_section_end_elf_offset);

	/* #2 Word update */
	word_update_vector_isr_and_text_section(elfinfo, eiftable);

	/* #3 Call instruction(bl) update */
	call_update_vector_isr_and_text_section(elfinfo, eiftable);

	/* #4 Seperate text section bin into before_target, target, after_target */
	file_divide_vector_isr_and_text_by_target(elfinfo, eiftable);

	/* #5 Generate timer code */
	file_generate_timer_code(elfinfo, required_code_set);
	
	/* #6 Target connect to timer code */
	update_target_function(elfinfo, eiftable, required_code_set);

	/* #7 Gather together */
	file_gather_vector_isr_and_text_section();
	
}

/* #1. #######################################################################################*/

int file_seperate_vector_isr_and_text_section_from_elf(int start_address, int end_address){

	FILE* in;
	FILE* out;

	int eif_start_addr = start_address;

	file_in_out_open_overwrite("input/test.elf","debug/pre_part_text.bin", &in, &out);
	file_in_out_code_cut(in, out, start_address, end_address);

	file_in_out_close(in, out);
}

/* #2. #######################################################################################*/

int word_update_vector_isr_and_text_section(ElfInfo* elfinfo, eiftable* eiftable){

	FILE* in;
	FILE* out;

	int word_update_bytes_from_shell_code = SHELLCODE_BYTES;
	int eif_boundary_start_vma = eiftable->_eif_boundary.text.boundary_start;

	file_in_out_open_overwrite("debug/pre_part_text.bin","debug/ppre_text_word.bin", &in, &out);
	file_word_update_with_reading_4_bytes( 						\
										elfinfo, eiftable, 		\
										in, out, 				\
										eif_boundary_start_vma, word_update_bytes_from_shell_code);
	
	file_in_out_close(in, out);
}

int file_word_update_with_reading_4_bytes( 						\
		ElfInfo* elfinfo, eiftable* eiftable,					\
		FILE* in, FILE* out, 									\
		int eif_boundary_start_vma, int word_update_bytes_from_shell_code)
{

	int buf;

	int text_section_start_vma = elfinfo->elf_sections.text.vma;

	int target_vma  = eiftable->target.vma;
	int target_size = eiftable->target.size;

	int text_section_end_vma = elfinfo->elf_sections.text.vma + elfinfo->elf_sections.text.size;

	int data_vma = elfinfo->elf_sections.data.vma;
	int data_size = elfinfo->elf_sections.data.size;

	int bss_vma = elfinfo->elf_sections.bss.vma;
	int bss_size = elfinfo->elf_sections.bss.size;

	printf("\n #### FOR DEBUG \n");
	printf(" -> TARGET  FUNC  VMA			: 0x%8x \n", target_vma);
	printf(" -> TEXT SECTION  VMA			: 0x%8x \n", text_section_start_vma);
	printf(" -> DATA SECTION  VMA			: 0x%8x \n", data_vma);
	printf(" -> DATA SECTION SIZE			: 0x%8x \n", data_size);
	printf(" ->  BSS SECTION  VMA			: 0x%8x \n", bss_vma);
	printf(" ->  BSS SECTION SIZE			: 0x%8x \n\n", bss_size);
	 
	/* CALL RELATED WORD UPDATE  */

	while(fread(&buf, 1, sizeof(buf), in) > 0){


		/* WORD NOT INCLUDING EIF BOUNDARY VMA: NO UPDATE */
		if( target_vma <= buf && buf <= eif_boundary_start_vma ){

			fwrite(&buf, 1, sizeof(buf),  out);
		}

		/* WORD INCLUDING EIF BOUNDARY VMA: UPDATE BY SHELL CODE BYTES */
		else if( eif_boundary_start_vma < buf && buf < text_section_end_vma){

			buf = update_word(buf, word_update_bytes_from_shell_code);
			fwrite(&buf, 1, sizeof(buf), out);
		}

		/* WORD INCLUDING BSS  BOUNDARY VMA: UPDATE BY REQUIRED TIMER WORD BUTES */
		else if( bss_vma <= buf && buf < bss_vma + bss_size ){

			buf = update_word(buf, TIMER_DATA_WORD_NUMBER * WORD_BYTES);
			fwrite(&buf, 1, sizeof(buf), out);
		}

		/* ELSE WORD : NO UPDATE */
		else {
			fwrite(&buf, 1, sizeof(buf),  out);
		}
	}

	return 0;
}

int update_word(int word, int update_bytes){

	return (word + update_bytes);
}

/* #3. #######################################################################################*/

int call_update_vector_isr_and_text_section(ElfInfo* elfinfo, eiftable* eiftable){

	FILE* in;
	FILE* out;

	int call_update_bytes_from_shell_code = SHELLCODE_BYTES;
	int eif_boundary_start_vma = eiftable->_eif_boundary.text.boundary_start;


	file_in_out_open_overwrite("debug/ppre_text_word.bin","debug/ppre_text.bin", &in, &out);
	file_call_update_with_reading_2_bytes(elfinfo, eiftable, in, out, 	\
								eif_boundary_start_vma, call_update_bytes_from_shell_code);

	file_in_out_close(in, out);
}


int file_call_update_with_reading_2_bytes(     							\
		ElfInfo* elfinfo, eiftable* eiftable, 							\
		FILE* in, FILE* out, 											\
		int eif_boundary_start_vma, int call_update_bytes_from_shell_code){


	short buf;

	int bl_ins;
	int bl_flag;
	
	int rel;
	int call_result_vma;

	int current_vma;
	int current_pc;

	int text_section_start_vma = elfinfo->elf_sections.text.vma;
	int vector_isr_section_start_vma   = elfinfo->elf_sections.vector_isr.vma;
	

	int target_vma  = eiftable->target.vma;
	int target_size = eiftable->target.size; 

	int text_section_end_vma = elfinfo->elf_sections.text.vma + elfinfo->elf_sections.text.size;

	bl_flag = 0;
	bl_ins  = 0;

	current_vma = elfinfo->elf_sections.vector_isr.vma;

	#define BL_HALF_BYTES 					(BL_INSTRUCTION_BYTES / 2) /* INSTRUCTION MIDDLE */
	#define CALL_UPDATE_BYTES_NOT_IN_TARGET (call_update_bytes_from_shell_code / 2)
	#define CALL_UPDATE_BYTES_IN_TARGET 	(call_update_bytes_from_shell_code / 4)


	printf("\n\n ## INTER BOUNDARY BRANCH UPDATE \n\n");

	/* BRANCH INSTRUCTION(BL) UPDATE  */

	while(fread(&buf, 1, sizeof(buf), in) > 0){

		/* FIND BL POSSIBLE INSTRUCTION STEP 1 */
		if( (( buf >> 11) & 0x1f) == 0x1e){
			bl_ins |= ((buf << 16));
			bl_flag = 1;

			fwrite(&buf, 1, sizeof(buf),  out);
			current_vma += sizeof(buf);

		} 

		/* FIND POSSIBLE BL INSTRUCTION STEP 2 */
		else if( bl_flag == 1){

			bl_ins |= (buf & 0xffff);
	
			current_pc = current_vma + BL_HALF_BYTES;

			/* BL INSTRUCTION FOR SURE */
			if(check_bl_instruction(elfinfo, bl_ins, current_pc, &call_result_vma) == 1){

				/* NOT IN TARGET (BEFORE TARGET) */
				if( current_vma - (BL_HALF_BYTES) < target_vma ){

					/* BEFORE TARGET INTRA BOUNDARY BRANCH */
					if( (vector_isr_section_start_vma <= call_result_vma) && (call_result_vma <= target_vma) ){

							fwrite(&buf, 1, sizeof(buf),  out);
					}

					/* BEFORE TARGET INTER BOUNDARY BRANCH */
					else{
							
							buf = update_word(buf, CALL_UPDATE_BYTES_NOT_IN_TARGET);
							fwrite(&buf, 1, sizeof(buf),  out);
							printf(" ## bl_inst: %8x", bl_ins);
							printf(" ## bl_target_vma: %8x", call_result_vma);
							printf(" ## pc: %8x", current_pc);
							printf(" ## [BEFORE TARGET]	 bl_inst update +8 : %4x\n", buf & 0xffff);

					}
				}

				/* IN TARGET */
				else if( ( target_vma <= current_vma - (BL_HALF_BYTES) ) \
					&& ( (current_vma - (BL_HALF_BYTES) < target_vma + target_size) )){

					/* IN TARGET PRIORIOR BRANCH */
					if( (vector_isr_section_start_vma <= call_result_vma) && (call_result_vma < target_vma) ){

							buf = update_word(buf, -1 * CALL_UPDATE_BYTES_IN_TARGET);
							fwrite(&buf, 1, sizeof(buf),  out);
							printf(" ## bl_inst: %8x", bl_ins);
							printf(" ## bl_target_vma: %8x", call_result_vma);
							printf(" ## pc: %8x", current_pc);
							printf(" ## [IN TARGET]	     bl_inst update -4 : %4x\n", buf & 0xffff);

					}
					
					/* IN TARGET TO TARGET : recursive */	
					else if( ( (target_vma <= call_result_vma) && (call_result_vma < target_vma + target_size)  ) ){

					
							fwrite(&buf, 1, sizeof(buf),  out);
					}

					/* IN TARGET POSTERIOR BRANCH */
					else{
							
							buf = update_word(buf, CALL_UPDATE_BYTES_IN_TARGET);
							fwrite(&buf, 1, sizeof(buf),  out);
							printf(" ## bl_inst: %8x", bl_ins);
							printf(" ## bl_target_vma: %8x", call_result_vma);
							printf(" ## pc: %8x", current_pc);
							printf(" ## [IN TARGET]	 bl_inst update +4 : %4x\n", buf & 0xffff);

					}		

				}

				/* NOT IN TARGET (AFTER TARGET) */
				else if( target_vma + target_size <= current_vma - (BL_HALF_BYTES) ){

					/* AFTER TARGET TO BEFOR TARGET( including target ): INTER BOUNDARY BRANCH */
					if( (vector_isr_section_start_vma < call_result_vma) && (call_result_vma <= target_vma) ){

							buf = update_word(buf, -1 * CALL_UPDATE_BYTES_NOT_IN_TARGET);
							fwrite(&buf, 1, sizeof(buf),  out);
							printf(" ## bl_inst: %8x", bl_ins);
							printf(" ## bl_target_vma: %8x", call_result_vma);
							printf(" ## pc: %8x", current_pc);
							printf(" ## [AFTER TARGET]	 bl_inst update -8 : %4x\n", buf & 0xffff);
					}

					/* AFTER TARGET INTRA BOUNDARY BRANCH */
					else{

							fwrite(&buf, 1, sizeof(buf),  out);

					}



				}

				/* ERROR : NO CASE */
				else{

					printf(" [ERROR] BLANCH UPDATE ERROR: OUT OF BOUND\n");
					printf(" ## bl_inst: %8x", bl_ins);
					printf(" ## bl_target_vma: %8x", call_result_vma);
					printf(" ## pc: %8x", current_pc);
					printf(" ## [AFTER TARGET]	 bl_inst update -- : %4x\n", buf & 0xffff);

				} 

				current_vma += sizeof(buf);
				bl_flag = 0;
				bl_ins = 0;
			}
			
			/* IF FUNCTION NOT EXTRACTED FROM ELF SYMBOL: SIZE ZERO */
			else if(check_bl_instruction(elfinfo, bl_ins, current_pc, &call_result_vma) == -1){

				printf(" ## [DEBUG] bl_inst: 0x%8x ", bl_ins);
				printf(" ## bl_target_vma: 0x%8x ", call_result_vma);
				printf(" ## pc: 0x%8x \n", current_pc);

				fwrite(&buf, 1, sizeof(buf),  out);
				current_vma += sizeof(buf);
				bl_flag = 0;
				bl_ins = 0;
			}

			/* NOT BRANCH INSTRUCTION(BL) */
			else {
				fwrite(&buf, 1, sizeof(buf),  out);
				current_vma += sizeof(buf);
				bl_flag = 0;
				bl_ins = 0;
			}
		}

		/* NOT BRANCH INSTRUCTION(BL) */
		else {

			fwrite(&buf, 1, sizeof(buf),  out);
			current_vma += sizeof(buf);
			bl_flag = 0;
			bl_ins = 0;
		}

	}
	

	return 0;

}


/* RETURN  1 : BL INSTRUCTION & GET CALL_RESULT_VMA 		*/
/* RETURN -1 : BL INSTRUCTION BUT NOT IN FUNCTION SYMBOL 	*/
/* RETURN  0 : NOT BL INSTRUCTION							*/

int check_bl_instruction(ElfInfo* elfinfo, unsigned int ins, int current_vma, int* target_vma){

	int rel;

	int upper_ins = ins >> 27;
	int lower_ins = (ins & 0xd000) >> 12;

	int s     = (ins >> 26) & 0x1;
	int j1    = (ins >> 13) & 0x1;
	int j2    = (ins >> 11) & 0x1;;
	int imm10 = (ins >> 16) & 0x3ff;
	int imm11 = (ins) & 0x7ff;

	int i1    = (~(j1 ^ s)) & 0x1;
	int i2    = (~(j2 ^ s)) & 0x1;

	int i;


	rel = 0;

	rel |= (imm11 << 1);
	rel |= (imm10 << 12);
	rel |= (i2 << 22);
	rel |= (i1 << 23);
	rel |= ( s << 24);

	rel &= 0x1ffffff;

	if( s == 0x1){
		
		rel |= (0x7f << 25);
	}

	(*target_vma) = current_vma + rel; 


	if( (upper_ins == 0x1e) && (lower_ins == 0xd)){
		
		for( i = 0; i < elfinfo->func_count; i++){

			if(elfinfo->func_table[i].func_addr == (*target_vma)){
			
				return 1;
			}

		}
		
		return -1;

	}

	else{

		return 0;
	}

}

int debug_check_bl_instruction(unsigned int ins, int current_vma, int* target_vma){

	int rel;

	int upper_ins = ins >> 27;
	int lower_ins = (ins & 0xd000) >> 12;

	int s     = (ins >> 26) & 0x1;
	int j1    = (ins >> 13) & 0x1;
	int j2    = (ins >> 11) & 0x1;;
	int imm10 = (ins >> 16) & 0x3ff;
	int imm11 = (ins) & 0x7ff;

	int i1    = (~(j1 ^ s)) & 0x1;
	int i2    = (~(j2 ^ s)) & 0x1;

	int i;


	rel = 0;

	rel |= (imm11 << 1);
	rel |= (imm10 << 12);
	rel |= (i2 << 22);
	rel |= (i1 << 23);
	rel |= ( s << 24);

	rel &= 0x1ffffff;

	if( s == 0x1){
		
		rel |= (0x7f << 25);
	}

	(*target_vma) = current_vma + rel; 


	if( (upper_ins == 0x1e) && (lower_ins == 0xd)){
		
		return 1;

	}

	else{

		return 0;
	}

}


/* #4. #######################################################################################*/

int file_divide_vector_isr_and_text_by_target(ElfInfo* elfinfo, eiftable* eiftable){

	int start_vma;
	int end_vma;

	/* FROM VECTOR ISR TO TARGET START	*/	
	start_vma = 0;
	end_vma   = TARGET_VMA - elfinfo->elf_sections.vector_isr.vma; 
	file_split_text_before_target(start_vma, end_vma);

	/* FROM TARGET START TO TARGET END	*/
	start_vma = TARGET_VMA - elfinfo->elf_sections.vector_isr.vma;
	end_vma   = TARGET_VMA - elfinfo->elf_sections.vector_isr.vma + TARGET_SIZE;
	file_split_text_target(start_vma, end_vma);

	/* FROM TARGET END TO TEXT END 		*/
	start_vma = TARGET_VMA - elfinfo->elf_sections.vector_isr.vma + TARGET_SIZE;
	end_vma   = elfinfo->elf_sections.vector_isr.size + elfinfo->elf_sections.text.size;
	file_split_text_after_target(start_vma, end_vma);

}

/* #5. #######################################################################################*/


int file_generate_timer_code(ElfInfo* elfinfo, required_code_set* required_code_set){


	int required_func_bytes_size;

	/* UPDATE TEXT SIZE BY SHELLCODE */
	update_text_section_vma_by_shellcode(elfinfo, SHELLCODE_BYTES);

	int updated_text_end_vma = elfinfo->elf_sections.updated_text.vma + elfinfo->elf_sections.updated_text.size;

	/* 
		1) SET TIMER CODE START & END VMA 
		2) GENERATE TIMER_CODE.bin FROM TIMER_CODE
		3) ANALYZE BYTES OF TIMER CODE
	*/

	/* 1. TIMER_START */
	required_code_set->rstart.vma = updated_text_end_vma;							
	file_update_timer_start(elfinfo);
	analyze_required_function("debug/timer_start.bin", &required_func_bytes_size);
	required_code_set->rstart.bytes = required_func_bytes_size;

	updated_text_end_vma += required_code_set->rstart.bytes;


	/* 2. TIMER_END */
	required_code_set->rend.vma = updated_text_end_vma; /* it must before update_timer_end */
	file_update_timer_end(elfinfo, required_code_set);
	analyze_required_function("debug/timer_end.bin", &required_func_bytes_size);
	required_code_set->rend.bytes = required_func_bytes_size;

	updated_text_end_vma += required_code_set->rend.bytes;

	
	/* 3. TIMER_SYSTICK */
	required_code_set->systick.vma = updated_text_end_vma;
	file_update_timer_systick(elfinfo);
	analyze_required_function("debug/timer_systick.bin", &required_func_bytes_size);
	required_code_set->systick.bytes = required_func_bytes_size;

	updated_text_end_vma += required_code_set->systick.bytes;

	/* UPDATE TEXT SIZE BY TIMER CODE */
	update_text_section_vma_by_injection_code(elfinfo, updated_text_end_vma);
	printf("\n ## TIMER CODE GENERATED! \n -> UPDATED TEXT SECTION END VMA			: 0x%8x \n", updated_text_end_vma);


}

int update_text_section_vma_by_shellcode(ElfInfo* elfinfo, int shellcode_bytes){

	/* only size increase */
	elfinfo->elf_sections.updated_text.vma = elfinfo->elf_sections.text.vma; 
	elfinfo->elf_sections.updated_text.size = elfinfo->elf_sections.text.size + shellcode_bytes; 
	elfinfo->elf_sections.updated_text.offset = elfinfo->elf_sections.text.offset; 

}

int update_text_section_vma_by_injection_code(ElfInfo* elfinfo, int updated_text_section_end_vma){

	/* only size increase */
	elfinfo->elf_sections.updated_text.vma = elfinfo->elf_sections.text.vma; 
	elfinfo->elf_sections.updated_text.size = updated_text_section_end_vma - elfinfo->elf_sections.text.vma; 
	elfinfo->elf_sections.updated_text.offset = elfinfo->elf_sections.text.offset; 

}

int analyze_required_function(char* bin_code, int* required_func_bytes_size){

	FILE* in;
	short buf;
	int bytes = 0;

	in = fopen(bin_code, "r");
	
	while(fread(&buf, 1, sizeof(buf), in) > 0){
		bytes +=sizeof(buf);
	}

	(*required_func_bytes_size) = bytes;

}

int file_update_timer_start(ElfInfo* elfinfo){


	FILE* in;
	FILE* out;

	file_in_out_open_overwrite("timer_code/timer_start","debug/timer_start.bin", &in, &out);
	update_timer_start_with_reading_4bytes(in, out, elfinfo);
	
	file_in_out_close(in, out);

}

int update_timer_start_with_reading_4bytes(FILE* in, FILE* out, ElfInfo* elfinfo){

	int buf;
	
	printf("\n ## TIMER START UPDATE INFO\n"); 

	while(fread(&buf, 1, sizeof(buf), in) > 0){
		
		/* caution region */

		if( buf == 0xaaaaaaaa ){
			
			buf = elfinfo->elf_sections.data.vma + elfinfo->elf_sections.data.size;
			fwrite(&buf, 1, sizeof(buf),  out);
			printf(" -> TIME VALUE VMA						: 0x%8x \n", buf);
			break;
		}

		else if( buf == 0xbbbbbbbb ){
	
			buf = elfinfo->elf_sections.data.vma + elfinfo->elf_sections.data.size + 4;
			fwrite(&buf, 1, sizeof(buf),  out);
			printf(" -> LAPSE TIME VMA						: 0x%8x \n", buf);
		}

		else {

			fwrite(&buf, 1, sizeof(buf),  out);

		}

	}

}

int file_update_timer_end(ElfInfo* elfinfo, required_code_set* req){

	FILE* in;
	FILE* out;

	file_in_out_open_overwrite("timer_code/timer_end","debug/timer_end.bin", &in, &out);
	update_timer_end_with_reading_4bytes(in, out, elfinfo, req);
	
	file_in_out_close(in, out);

}

int update_timer_end_with_reading_4bytes(FILE* in, FILE* out, ElfInfo* elfinfo, required_code_set* req){

	int buf;
	
	int _buf;

	int i;	

	int trace_printf_vma;
	int rel_vma;
	int bl_to_trace_printf_inst;

	int timer_end_vma = req->rend.vma;
	int current_vma = timer_end_vma;

	int debug_bl_result;

	printf("\n ## TIMER END UPDATE INFO\n"); 

	while(fread(&buf, 1, sizeof(buf), in) > 0){
		
		/* TIMER VARIABLE 1 : timer_val */
		if( buf == 0xaaaaaaaa ){
	
			_buf = elfinfo->elf_sections.data.vma + elfinfo->elf_sections.data.size;
			fwrite(&_buf, 1, sizeof(_buf),  out);
			printf(" -> TIME VALUE VMA						: 0x%8x \n", _buf);
		}

		/* TIMER VARIABLE 2 : lapse_time */
		else if( buf == 0xbbbbbbbb ){

			_buf = elfinfo->elf_sections.data.vma + elfinfo->elf_sections.data.size + WORD_BYTES * 1;
			fwrite(&_buf, 1, sizeof(_buf),  out);
			printf(" -> LAPSE TIME VMA						: 0x%8x \n", _buf);
			break;
		}

		/* TIMER VARIABLE 3 : %d (required for trace_printf) */
		else if( buf == 0xcccccccc ){

			_buf = elfinfo->elf_sections.data.vma + elfinfo->elf_sections.data.size + WORD_BYTES * 2;
			fwrite(&_buf, 1, sizeof(_buf),  out);
			printf(" -> TRACE_PRINTF VALUE VMA				: 0x%8x \n", _buf);
			break; /* FOR problem of save after xxd & xxd -r */
			
		}

		/* BRANCH INSTRUCTION TO trace_printf */
		else if( buf == 0xdddddddd ){

			for( i = 0; i < elfinfo->func_count; i++){
				
				if( !strcmp(elfinfo->func_table[i].func_name, "trace_printf")){
					
					trace_printf_vma = elfinfo->func_table[i].func_addr;
					printf(" -> TRACE_PRINTF VMA(ACTUAL)			: 0x%8x \n", trace_printf_vma);					
					printf(" -> TIMER_END VMA						: 0x%8x \n", timer_end_vma);
					printf(" -> BRANCH_INST VMA: 					: 0x%8x \n", current_vma);
					
				}

			}
							


			rel_vma = trace_printf_vma - (current_vma + BL_INSTRUCTION_BYTES);
			bl_to_trace_printf_inst = generate_bl_inst_from_rel_vma(rel_vma);
	
			if( debug_check_bl_instruction(bl_to_trace_printf_inst, \
					current_vma + BL_INSTRUCTION_BYTES, &debug_bl_result) != 1){

				printf(" [ERROR] BL_INST TO TARCE_PRINTF \n");
			}
			else{

				printf(" [DEBUG: NO ERROR] BL_INST TO TARCE_PRINTF \n");

			}

			printf(" -> BL_INST TO TRACE_PRINTF				: 0x%8x\n", bl_to_trace_printf_inst);
			printf(" -> BRANCH RESULT TO TRACE_PRINTF VMA 	: 0x%8x\n", debug_bl_result);
			
			_buf = bl_to_trace_printf_inst;
			fwrite(&_buf, 1, sizeof(_buf),  out);
		}
	
		/* FOR problem of save after xxd & xxd -r */
		else if( buf == 0x0a ){

			break;
		}

		else {

			fwrite(&buf, 1, sizeof(buf),  out);

		}
		
		current_vma += sizeof(buf);
	}
}

int file_update_timer_systick(ElfInfo* elfinfo){

	FILE* in;
	FILE* out;

	file_in_out_open_overwrite("timer_code/timer_systick","debug/timer_systick.bin", &in, &out);
	update_timer_systick_with_reading_4bytes(in, out, elfinfo);
	
	file_in_out_close(in, out);

}

int update_timer_systick_with_reading_4bytes(FILE* in, FILE* out, ElfInfo* elfinfo){

	int buf;

	printf("\n ## TIMER SYSTICK UPDATE INFO\n"); 
	
	while(fread(&buf, 1, sizeof(buf), in) > 0){
		
		/* caution region */
		if( buf == 0xaaaaaaaa ){
	
			buf = elfinfo->elf_sections.data.vma + elfinfo->elf_sections.data.size;
			fwrite(&buf, 1, sizeof(buf),  out);
			printf(" -> TIME VALUE VMA						: 0x%8x \n", buf);
			break;
		}

		else if( buf == 0xbbbbbbbb ){

			buf = elfinfo->elf_sections.data.vma + elfinfo->elf_sections.data.size + 4;
			fwrite(&buf, 1, sizeof(buf),  out);
			printf(" -> LAPSE TIME VMA						: 0x%8x \n", buf);
		}

		else {

			fwrite(&buf, 1, sizeof(buf),  out);

		}

	}

}



/* #6-1. #######################################################################################*/


int update_target_function(ElfInfo* elfinfo, eiftable* eiftable, required_code_set* required_code_set){

	/* DETERMIN SHELL CODE LOCATION */
	pre_regenerate_target(elfinfo, eiftable);

	/* UPDATE BRANCH INSTRUCTION OF SHELL CODE */
	regenerate_target(elfinfo, eiftable, required_code_set);

}

int pre_regenerate_target(ElfInfo *elfinfo, eiftable* eiftable){

	FILE* in;
	FILE* out;
		
	file_in_out_open_overwrite("debug/ppre_text_t.bin","debug/_ppre_text_tt.bin", &in, &out);

	file_in_out_code_injection(in, out, eiftable);
	
	file_in_out_close(in, out);

}

int file_in_out_code_injection(FILE* in, FILE* out, eiftable* eiftable){

	short buf;
	short _buf;

	int rcode_start_bl_offset 	= 0;
	int rcode_end_bl_offset		= 0; 
	int instruction_offset 		= 0;
	
	while(fread(&buf, 1, sizeof(buf), in) > 0){
		
		/* TIMER_START UPDATE */
		if( upper_byte_in_2bytes(buf) == 0xb5 ){
	
			/* RCODE_START */ 	

			/* EXISTING push */
			fwrite(&buf, 1, sizeof(buf),  out);
			instruction_offset += sizeof(buf);

			/* PUSH {r1-7} */		
			buf = 0xb4ff;
			fwrite(&buf, 1, sizeof(buf), out);
			instruction_offset += sizeof(buf);

			/* BRANCH(BL) TO TIMER START */
			rcode_start_bl_offset = instruction_offset;
			buf = 0xaaaa;
			fwrite(&buf, 1, sizeof(buf), out);
			instruction_offset += sizeof(buf);
			buf	= 0xcccc;
			fwrite(&buf, 1, sizeof(buf), out);
			instruction_offset += sizeof(buf);

			/* POP {r1-7} */
			buf	= 0xbcff;
			fwrite(&buf, 1, sizeof(buf), out);
			instruction_offset += sizeof(buf);
			
		}

	
		/* PUSH WITH NO LR
		else if( upper_byte_in_2bytes(buf) == 0xb4 ){
			fwrite(&buf, 1, sizeof(buf),  out);
			printf(" PUSH with no lr \n");
		}
		*/

		
		/* TIMER_END UPDATE */
		else if( upper_byte_in_2bytes(buf) == 0xbd ){


			_buf = buf;

			/* PUSH {r1-7} */		
			buf = 0xb4ff;
			fwrite(&buf, 1, sizeof(buf), out);
			instruction_offset += sizeof(buf);

			/* BRANCH(BL) TO TIMER END */
			rcode_end_bl_offset = instruction_offset;

			buf = 0xbbbb;
			fwrite(&buf, 1, sizeof(buf), out);
			instruction_offset += sizeof(buf);
			buf	= 0xdddd;
			fwrite(&buf, 1, sizeof(buf), out);
			instruction_offset += sizeof(buf);

			/* POP {r1-7} */
			buf	= 0xbcff;
			fwrite(&buf, 1, sizeof(buf), out);
			instruction_offset += sizeof(buf);
		
			/* EXISTING pop */
			fwrite(&_buf, 1, sizeof(_buf),  out);
			instruction_offset += sizeof(buf);
		}

		/* CASE : add pc, #8 	*/
		/* NEED TO CONSIDER 	*/

		#ifdef CONSIDER
		else if( (upper_byte_in_2bytes(buf) == 0xb0) && (((lower_byte_in_2bytes(buf) >> 7) & 0x1) == 0) ){
	
			_buf = buf;

			/* push {r1-7} */		
			buf = 0xb4ff;
			fwrite(&buf, 1, sizeof(buf), out);
			instruction_offset += sizeof(buf);

			/* bl to target */
			rcode_end_bl_offset = instruction_offset;

			buf = 0xbbbb;
			fwrite(&buf, 1, sizeof(buf), out);
			instruction_offset += sizeof(buf);
			buf	= 0xdddd;
			fwrite(&buf, 1, sizeof(buf), out);
			instruction_offset += sizeof(buf);

			/* pop {r1-7} */
			buf	= 0xbcff;
			fwrite(&buf, 1, sizeof(buf), out);
			instruction_offset += sizeof(buf);
		
			/* existing pop */
			fwrite(&_buf, 1, sizeof(_buf),  out);
			instruction_offset += sizeof(buf);
	
		}
		#endif

		/* IN TARGET LDR UPDATE */
		else if( ((upper_byte_in_2bytes(buf) >> 4) == 0x04) && ((((upper_byte_in_2bytes(buf)) & 0xf) >> 3) == 0x1) ){


			/* 
				UPPDER SHELLCODE_BYTES = SHELLCODE_BYTES / 2 = 8
				LDR INSTRUCTION HAS '00' -> IN_TARGET_LDR_UPDATE_BYTES = 2
			*/

			#define IN_TARGET_LDR_UPDATE_BYTES (SHELLCODE_BYTES /8)
	
			buf = buf + IN_TARGET_LDR_UPDATE_BYTES;

			fwrite(&buf, 1, sizeof(buf),  out);
			instruction_offset += sizeof(buf);
		}
		
		else {
			fwrite(&buf, 1, sizeof(buf),  out);
			instruction_offset += sizeof(buf);
			}

	}

	eiftable->target.rcode_start_bl_offset = rcode_start_bl_offset;
	eiftable->target.rcode_end_bl_offset = rcode_end_bl_offset;

	return 0;

}

/* #6-2. #######################################################################################*/

int regenerate_target(ElfInfo* elfinfo, eiftable* eiftable, required_code_set* req){

	
	FILE* in;
	FILE* out;
		
	file_in_out_open_overwrite("debug/_ppre_text_tt.bin","debug/ppre_text_tt.bin", &in, &out);

	file_in_out_code_bl_update(in, out, eiftable, req);
	
	file_in_out_close(in, out);

}

int file_in_out_code_bl_update(FILE* in, FILE* out, eiftable* eiftable, required_code_set* req){

	short buf;

	int upper_check = 0;
	int lower_check = 0;

	int rcode_start_bl_offset = eiftable->target.rcode_start_bl_offset;
	int rcode_end_bl_offset   = eiftable->target.rcode_end_bl_offset;

	int rcode_start_bl_vma = eiftable->target.vma + rcode_start_bl_offset;	
	int rcode_end_bl_vma   = eiftable->target.vma + rcode_end_bl_offset;	

	int req_start_vma = req->rstart.vma;
	int req_end_vma = req->rend.vma;

	int rel_start_vma = req_start_vma - (rcode_start_bl_vma + BL_INSTRUCTION_BYTES);
	int rel_end_vma   = req_end_vma   - (rcode_end_bl_vma   + BL_INSTRUCTION_BYTES);  

	int bl_result_vma_start;
	int bl_result_vma_end;

	int bl_inst_to_timer_start = generate_bl_inst_from_rel_vma(rel_start_vma);
	int bl_inst_to_timer_end   = generate_bl_inst_from_rel_vma(rel_end_vma);


	debug_check_bl_instruction(bl_inst_to_timer_start, 	\
			rcode_start_bl_vma + BL_INSTRUCTION_BYTES, &bl_result_vma_start);
	debug_check_bl_instruction(bl_inst_to_timer_end, 	\
			rcode_end_bl_vma + BL_INSTRUCTION_BYTES, &bl_result_vma_end);


	/* 1. INFO TABLE FROM PRE_REGENERATE_TARGET */

	printf("\n ## TARGET BRANCH RELATED INFO \n"); 	

	printf(" -> BL RESULT VMA (TO TIMER_START VMA)				: 0x%8x 					UPDATED BRANCH TO TIMER_START		: 0x%8x \n", bl_result_vma_start, bl_inst_to_timer_start);	
	printf(" -> BL RESULT VMA (TO TIMER_START VMA)				: 0x%8x 					UPDATED BRANCH TO TIMER_START		: 0x%8x \n", bl_result_vma_end, bl_inst_to_timer_end);	

	printf(" -> ACTUAL TIMER_START VMA FROM TIMER CODE UPDATE	: 0x%8x \n", req_start_vma);
	printf(" -> ACTUAL TIMER_END   VMA FROM TIMER CODE UPDATE	: 0x%8x \n", req_end_vma);

	printf(" -> UPDATED BRANCH INST TO TIMER_START				: 0x%8x \n", bl_inst_to_timer_start);
	printf(" -> UPDATED BRANCH INST TO TIMER_END				: 0x%8x \n", bl_inst_to_timer_end);

	printf(" -> TIMER_START BRANCH INSTRUCTION VMA				: 0x%8x 	\
			 	PC : 0x%8x \n", rcode_start_bl_vma, rcode_start_bl_vma + BL_INSTRUCTION_BYTES);
	printf(" -> TIMER_END   BRANCH INSTRUCTION VMA				: 0x%8x 	\
			 	PC : 0x%8x \n", rcode_end_bl_vma,   rcode_end_bl_vma   + BL_INSTRUCTION_BYTES);



	/* 2. CONNECT WITH TIMER CODE IN BRANCH */

	short rcode_start_bl_upper = bl_inst_to_timer_start >> 16; 
	short rcode_start_bl_lower = bl_inst_to_timer_start & 0xffff;

	short rcode_end_bl_upper = bl_inst_to_timer_end >> 16;
	short rcode_end_bl_lower = bl_inst_to_timer_end & 0xffff;

	
	while(fread(&buf, 1, sizeof(buf), in) > 0){
		
		/* RCODE BRANCH(0xaaaacccc) TO START_CODE */
		if( (upper_byte_in_2bytes(buf) == 0xaa) && (lower_byte_in_2bytes(buf) == 0xaa) ){
		
			upper_check = 1;

		}

		else if( (upper_byte_in_2bytes(buf) == 0xcc) && (lower_byte_in_2bytes(buf) == 0xcc) ){


			if(upper_check == 1){

				buf = rcode_start_bl_upper;
				fwrite(&buf, 1, sizeof(buf), out);
			
				buf = rcode_start_bl_lower;
				fwrite(&buf, 1, sizeof(buf), out);
				upper_check = 0;

			}
			
			else{	
				/* existing instruction */
				fwrite(&buf, 1, sizeof(buf),  out);

			}
		}


		/* RCODE BRANCH(0xbbbbdddd) TO END_CODE */
		else if( (upper_byte_in_2bytes(buf) == 0xbb) && (lower_byte_in_2bytes(buf) == 0xbb) ){
		
			lower_check = 1;
	
		}

		else if( (upper_byte_in_2bytes(buf) == 0xdd) && (lower_byte_in_2bytes(buf) == 0xdd) ){

			if(lower_check == 1){

				buf = rcode_end_bl_upper;
				fwrite(&buf, 1, sizeof(buf), out);
			
				buf = rcode_end_bl_lower;
				fwrite(&buf, 1, sizeof(buf), out);
				lower_check = 0;

			}
		
			else{
				/* existing instruction */
				fwrite(&buf, 1, sizeof(buf),  out);
			}

		}

		/* NOT BRANCH INST IN TARGET */
		else {
		
			upper_check = 0;
			lower_check = 0;
			fwrite(&buf, 1, sizeof(buf),  out);
		}

	}

	return 0;

}


/* GENERATE_BL_INST_FROM_REL_VMA */

int generate_bl_inst_from_rel_vma(int rel){

	int imm10 = 0;
	int imm11 = 0;
	int upper_in_upper = 0;	
	int upper_in_lower = 0;	
	int j1;
	int j2;
	int updated_bl_instruction = 0;

	int s;

	if( rel >= 0){
		s = 0;
	}

	else {
		s = 1;
	}


	imm10 = (rel & 0x003ff000) >> 12;
	imm11 = (rel & 0x00000ffe) >>  1;

	j1 = 	((( ~(((rel & 0x00800000) >> 23) & 0x1) ^ s) << 2)) & 0x7;
	j2 = 	  ( ~( ((rel & 0x00400000) >> 22) & 0x1) ^ s) & 0x1;

	upper_in_lower = 0x1a | j1 | j2;
	upper_in_upper = 0x1e;
	
	updated_bl_instruction |= (upper_in_upper << 27); 
	updated_bl_instruction |= (s << 26);
	updated_bl_instruction |= (imm10 << 16); 
	updated_bl_instruction |= (upper_in_lower << 11); 
	updated_bl_instruction |= (imm11); 


	return updated_bl_instruction;
}


/* #7. #######################################################################################*/

int file_gather_vector_isr_and_text_section(){

	file_stack_text_before_target();
	file_stack_text_in_target();
	file_stack_text_after_target();
	file_stack_text_timer_start();
	file_stack_text_timer_end();
	file_stack_text_timer_systick();	
}

