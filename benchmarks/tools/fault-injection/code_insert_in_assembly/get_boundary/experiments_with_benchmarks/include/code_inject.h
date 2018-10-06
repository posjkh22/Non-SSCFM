

#include <stdio.h>
#include <stdlib.h>
#include <string.h>


#define NAMESIZE 70

//#define DEBUG

typedef struct _sections{

	unsigned int vma;
	unsigned int offset;

}sections;


typedef struct _section_data{

	sections vector_table;
	sections vector_isr;
	sections text;
	sections data;

}section_data;


