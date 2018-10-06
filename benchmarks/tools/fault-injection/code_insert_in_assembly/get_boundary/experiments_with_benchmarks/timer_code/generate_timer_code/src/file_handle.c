
//#include "file_handle.h"

#include <stdio.h>

/*#######################################################################################*/


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


/*#######################################################################################*/


int file_in_out_close(FILE* in, FILE* out){

	fclose(in);
	fclose(out);

}

/*#######################################################################################*/



int read_and_append(FILE *in, FILE *out){

	short buf;

	while(fread(&buf, 1, sizeof(buf), in) > 0){
	
		fwrite(&buf, 1, sizeof(buf),  out);
	}
}


/*#######################################################################################*/



int cut_out_code_systick(int start_address, int end_address){

	FILE* in;
	FILE* out;

	file_in_out_open_overwrite("bin/test.bin","output/timer_systick", &in, &out);
	file_in_out_code_cut(in, out, start_address, end_address);
	
	file_in_out_close(in, out);

}

int cut_out_code_start(int start_address, int end_address){

	FILE* in;
	FILE* out;

	file_in_out_open_overwrite("bin/test.bin","output/timer_start", &in, &out);
	file_in_out_code_cut(in, out, start_address, end_address);
	
	file_in_out_close(in, out);

}

int cut_out_code_end(int start_address, int end_address){

	FILE* in;
	FILE* out;

	file_in_out_open_overwrite("bin/test.bin","output/timer_end", &in, &out);
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


/*#######################################################################################*/

