/* NIST Secure Hash Algorithm */

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <time.h>
#include "sha.h"
#include <sys/time.h>

extern unsigned int is_signature_queue_full;

int main(int argc, char **argv)
{
    FILE *fin;
	
	struct timeval begTick;
	struct timeval endTick;
	gettimeofday(&begTick, NULL);
    
	SHA_INFO sha_info;

	
	fin = fopen("input_small.asc", "rb");
	sha_stream(&sha_info, fin);
	sha_print(&sha_info);
	fclose(fin);

	printf(" [target finished!]\n");
	gettimeofday(&endTick, NULL);
	printf(" [target] Execution Time: %ld\n", (endTick.tv_sec - begTick.tv_sec) * 1000000 + (endTick.tv_usec - begTick.tv_usec));
	is_signature_queue_full =1;
	
    
		return(0);
}
