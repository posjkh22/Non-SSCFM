
#include "file_handle.h"

int update_inits_section(ElfInfo* elfinfo){

	
	FILE* in;
	FILE* out; 

	file_in_out_open_overwrite("debug/part_updated_text-1.bin","debug/part_updated_text.bin", &in, &out);

	update_inits_section_accordingto_updated_data(elfinfo, in, out);
	
	file_in_out_close(in, out);


}

int update_inits_section_accordingto_updated_data(ElfInfo* elfinfo, FILE* in, FILE* out){ 

	int buf;

	int target_offset = (elfinfo->elf_sections.inits.vma - elfinfo->elf_sections.vector_isr.vma)/sizeof(buf);
	int current = 0;

	int count = 0;
	
	while(fread(&buf, 1, sizeof(buf), in) > 0){

		if(target_offset == current){

			printf("\n ## INITS SECTION UPDATE\n\n");

			buf = elfinfo->elf_sections.updated_text.vma + elfinfo->elf_sections.updated_text.size;
			fwrite(&buf, 1, sizeof(buf),  out);
			printf(" -> DATA START VMA(FLASH): %0x\n", buf);
			
			buf = elfinfo->elf_sections.updated_data.vma;			
			fwrite(&buf, 1, sizeof(buf),  out);
			printf(" -> DATA START VMA(SRAM): %0x\n", buf);

			buf = elfinfo->elf_sections.updated_data.vma + elfinfo->elf_sections.updated_data.size;			
			fwrite(&buf, 1, sizeof(buf),  out);
			printf(" -> DATA END VMA(SRAM)  : %0x\n", buf);

			buf = elfinfo->elf_sections.updated_text.vma + elfinfo->elf_sections.updated_text.size;
			fwrite(&buf, 1, sizeof(buf),  out);

			buf = 0x10000000;
			fwrite(&buf, 1, sizeof(buf),  out);
			
			buf = 0x10000000;
			fwrite(&buf, 1, sizeof(buf),  out);

			buf = elfinfo->elf_sections.updated_bss.vma;
			fwrite(&buf, 1, sizeof(buf),  out);
			printf(" -> BSS START VMA(SRAM)	: %0x\n", buf);

			buf = elfinfo->elf_sections.updated_bss.vma + elfinfo->elf_sections.updated_bss.size;
			fwrite(&buf, 1, sizeof(buf),  out);
			printf(" -> BSS END VMA(SRAM) 	: %0x\n", buf);

			buf = 0x10000000;
			fwrite(&buf, 1, sizeof(buf),  out);

			buf = 0x10000000;
			fwrite(&buf, 1, sizeof(buf),  out);

			count = 9;
			
			current++;
		}

		else {

			if( count == 0){

				count = 0;
				fwrite(&buf, 1, sizeof(buf),  out);
				current++;
				

			}
			
			else{

				count--;
				continue;
			}

		}


	}

	return 0;









}



