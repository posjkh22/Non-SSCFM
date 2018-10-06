
#include <stdio.h>
//#include "file_handle.h"

int main(){

	int start_offset = 0x3214;
	int end_offset   = 0x3230;
	cut_out_code_systick(start_offset, end_offset);

	start_offset = 0x326c;
	end_offset   = 0x328c;
	cut_out_code_start(start_offset, end_offset);

	start_offset = 0x328c;
	end_offset   = 0x32ac;
	cut_out_code_end(start_offset, end_offset);

	return 0;

} 
