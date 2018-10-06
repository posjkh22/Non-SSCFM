#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#ifndef EXTRACT_ELF
#define EXTRACT_ELF

//#define DEBUG


/*	ELF PART	*/

#define VECTOR_TABLE_SIZE 93 // NEED TO IMPROVE

#define FUNC_NUMBER 213

#define NAMESIZE 70


typedef struct _elf_section{

	unsigned int vma;
	unsigned int offset;
	unsigned int size;

}elf_section;

typedef struct _elf_data{

	elf_section vector_table;
	elf_section vector_isr;
	elf_section text;
	elf_section updated_text;
	elf_section data;
	elf_section updated_data;
	elf_section bss;
	elf_section updated_bss;
	elf_section inits;


}elf_data;

typedef struct func_table{
	
	unsigned char func_name[NAMESIZE];
	unsigned int func_num;
	unsigned int func_addr;
	unsigned int func_stack;	
	unsigned int func_size;

}FUNC_TABLE;

typedef struct elfINFO_{

	FUNC_TABLE *func_table;

	unsigned int vector_table_size;
	unsigned int target_function_no;
	unsigned int func_count;
	
	elf_data elf_sections;

}ElfInfo;


#define get_text_vma() text_vma
#define get_isr_vector_vma() vector_vma
#define get_elf_text_offset() text_offset 


#define buf_int_data(i) (*((int*)(buf+i)))
#define buf_short_data(i) (*((short*)(buf+i)))
#define buf_char_data(i) (*((char*)(buf+i)))

#define set_func_name(i,x) (strcpy((*elfinfo)->func_table[i].func_name, x))
#define set_func_num(i) ((*elfinfo)->func_table[i].func_num = i)
#define set_func_addr(i,x) ((*elfinfo)->func_table[i].func_addr = x -1 )
#define set_func_size(i,x) ((*elfinfo)->func_table[i].func_size = x)
#define set_func_stack(i,x) ((*elfinfo)->func_table[i].func_stack = x)
#define set_func_call_state(i,x) ((*elfinfo)->func_table[i].call_state = x)
#define set_func_sub_func_num(i,x) ((*elfinfo)->func_table[i].sub_func_num = x)

#define get_func_name(i) ((*elfinfo)->func_table[i].func_name)
#define get_func_num(i) ((*elfinfo)->func_table[i].func_num)
#define get_func_addr(i) ((*elfinfo)->func_table[i].func_addr)
#define get_func_offset(i) (get_func_addr(i) - 0x08000001 + 0x0010000)
#define get_func_size(i) ((*elfinfo)->func_table[i].func_size)
#define get_func_stack(i) ((*elfinfo)->func_table[i].func_stack)
#define get_func_call_state(i) ((*elfinfo)->func_table[i].call_state)
#define get_func_sub_func_num(i) ((*elfinfo)->func_table[i].sub_func_num)

#define set_main_num(i) ((*elfinfo)->main_num = i)
#define set_start_num(i) ((*elfinfo)->start_num = i)
#define get_main_num() ((*elfinfo)->main_num)
#define get_start_num() ((*elfinfo)->start_num)

#define set_isr_table(j, i) ((*elfinfo)->isr_table[j] = (i-16))
#define get_isr_table(i) ((*elfinfo)->isr_table[i])

#define set_func_count(x)((*elfinfo)->func_count = x)
#define set_isr_count(x) ((*elfinfo)->isr_count = x)
#define get_func_count() ((*elfinfo)->func_count)
#define get_isr_count() ((*elfinfo)->isr_count)

/*
#define get_isr_func_name(i) ((*elfinfo)->isr_table[i].name)
#define get_isr_func_addr(i) ((*elfinfo)->isr_table[i].addr)
#define get_isr_func_irqn(i) ((*elfinfo)->isr_table[i].irqn)
#define get_isr_func_num(i) ((*elfinfo)->isr_table[i].func_num)

#define get_sub_func_addr(i,j) ((*elfinfo)->func_table[i].sub_func_addr_arr[j])
#define get_sub_func_num(i) ((*elfinfo)->func_table[i].sub_func_num)
#define get_func_call_state(i) ((*elfinfo)->func_table[i].call_state)


#define get_isr_conf_pg() ((*elfinfo)->isr_config.pg)	
#define set_isr_conf_pg(x) ((*elfinfo)->isr_config.pg = x)		

#define get_isr_conf_priority(i) ((*elfinfo)->isr_config.pt[i].priority)
#define set_isr_conf_priority(i, pr) ((*elfinfo)->isr_config.pt[i].priority = pr)

#define get_isr_conf_irqn(i) ((*elfinfo)->isr_config.pt[i].irqn)
#define set_isr_conf_irqn(i, irqn) ((*elfinfo)->isr_config.pt[i].irqn = irqn)

#define get_isr_conf_count() ((*elfinfo)->isr_config.isr_count)
*/

int Extract_elf(ElfInfo **elfinfo, int argc, char *argv[]);

#endif
