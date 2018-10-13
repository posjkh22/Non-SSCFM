
#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include "monitor.h"

#include <sys/time.h>

#define true 1
#define false 0

#include "CFE_INJECTION.h"

#define CFE_INJECTION_ON

extern int CFE_OCCUR_FLAG;

unsigned int runtime_signature = 0;


void init_monitor()
{
	return;
}

void enqueue_signature_with_return(int value)
{
	return;
}


/* target */
void update_signature(int* runtime_signature_1, int* runtime_signature_2, int value_1, int value_2)
{

	/* signature update */
	(*runtime_signature_1) = (unsigned int)value_1;
	(*runtime_signature_2) = (unsigned int)value_2;



	//printf(" [monitor][update] updated with %d\n", (unsigned int)i);


#ifdef CFE_INJECTION_ON
	CFE_INJECTION(CFE_INJECTION_NUMBER++, 4);
#endif

}

void verify_signature(int* compile_time_signature_1, int* compile_time_signature_2, int value)
{

	/*
	if((*compile_time_signature_1 == 0) && (*compile_time_signature_2) == 0)
	{
		return;
	}
	*/

	if((unsigned int)value != (*compile_time_signature_1) && (unsigned int)value != (*compile_time_signature_2))
	{
		printf(" [monitor][error] control-flow error occurs in %u, [%u, %u]\n", (unsigned int)value, *compile_time_signature_1, *compile_time_signature_2);
		
		
#ifdef CFE_INJECTION_ON
		FILE* detected = fopen("./detected.rst", "a");
		
		if(detected == NULL)
		{
			printf(" fopen error!\n");
		}
		
		fprintf(detected, "Found Error!\n");
		fclose(detected);
		exit(1);
#endif	
	
	}
	else
	{

		/*
			empty
		*/

		//printf(" [monitor][OK] No control-flow error occurs in %u\n", (unsigned int)i);
	}


#ifdef CFE_INJECTION_ON
	
	if(CFE_OCCUR_FLAG == 1)
	{
		FILE* non_detected = fopen("./Non-detected.rst", "a");
		
		if(non_detected == NULL)
		{
			printf(" fopen error!\n");
		}
		
		fprintf(non_detected, "Not Error detected!\n");
		fclose(non_detected);
		exit(1);
	}
#endif

}



void exit_with_remainder_process(int i)
{
	
	FILE* F = fopen("Not-detected.rst", "a");

	fprintf(F, "Not-detected\n");

	fclose(F);
}






