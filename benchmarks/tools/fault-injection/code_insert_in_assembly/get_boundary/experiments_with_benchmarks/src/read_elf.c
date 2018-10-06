
#include "read_elf.h"
#define READ_MAX 0x1fffff

int read_elf(FILE **ofp, char **obuf, int argc, char *argv[]){

	int num;

	char* buf = (char*)malloc(sizeof(char) *READ_MAX);
	FILE* fp = fopen(argv[1], "rb");

	num = fread(buf, READ_MAX, 0xff, fp);

	*ofp = fp; 
	*obuf = buf;

	if(!fp)
		return -1;
	if(!buf)
		return -1;	
	
	return 0;

}
