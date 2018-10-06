
#ifndef GET_IFTABLE
#define GET_IFTABLE

#include "extract_elf.h"

//#define DEBUG

typedef struct _target{

	unsigned int vma;
	unsigned int size;
	unsigned int rcode_start_bl_offset;
	unsigned int rcode_end_bl_offset;
	
}ftarget;

typedef struct _ifentry {

	int entry_no;
	int vma;
	int byte_size;

}ifentry;

typedef struct _iftable {

	ftarget target;
	int ifentry_entry_num;
	ifentry *entry_arr;

}iftable;


typedef struct _boundary_element {

	int boundary_start;
	int boundary_end;

}boundary_element;

typedef struct _boundary {

	boundary_element text;

}eif_boundary;

typedef ifentry eifentry;

typedef struct _eiftable {
	
	ftarget target;
	int eifentry_entry_num;
	eifentry *entry_arr;
	eif_boundary _eif_boundary;

}eiftable;

eiftable* generate_iftable_from_elf(ElfInfo *elfinfo);
int set_iftable(iftable** _iftable, ElfInfo* elfinfo);
int set_iftable_entry(ElfInfo* elfinfo, iftable** _iftable);

int set_eiftable(eiftable** _eiftable);
int set_eiftable_entry(iftable* _iftable, eiftable** _eiftable);

int print_iftable_for_debug(iftable* _iftable);
int print_eiftable_for_debug(eiftable* _eiftable);

int sort_iftable_by_offset(iftable** _iftable);
int sort_eiftable_by_offset(eiftable** _eiftable);
int i_compare_offset(const void *a, const void *b);
int ei_compare_offset(const void *a, const void *b);


int search_iftable_by_sym_num(iftable* _iftable, int sym_num, int* eif_count);

#endif
