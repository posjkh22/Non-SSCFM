
#include <stdio.h>
#include <time.h>

#include "../benchmark_meta_data.h"

int main()
{

	FILE* f = fopen("./CFE_RANDOM.h", "r");
	
	if(f != NULL)
	{
		printf(" [1] File is open!\n");
	}

	char inst1[20];
	char inst2[20];
	char inst3[20];
	char inst4[20];
	char inst5[20];

	printf(" [2] Read format of file.\n");
	fscanf(f, "%s %s %s %s %s", inst1, inst2, inst3, inst4, inst5);
	fclose(f);

	
	srand(time(NULL));
	
	int random = rand() % ( TO - FROM ) + FROM;
	printf(" [3] Generate random acces point: %x\n", random);


	char new_inst4_1[] = "0x";
	char new_inst4_2[20];

	sprintf(new_inst4_2, "%x", random);


	f = fopen("../CFE_RANDOM.h", "w");

	if(f != NULL)
	{
		printf(" [4] file is open &");
	}

	printf("Regenerate CFE_RANDOM.h file!\n");
	fprintf(f, "%s %s %s %s%s %s", inst1, inst2, inst3, new_inst4_1, new_inst4_2, inst5);
	fclose(f);



	f = fopen("../CFE_RANDOM.h", "r");
	
	char buff[50];
	fgets(buff, sizeof(buff), f);
	printf(" [5] Verification: %s\n", buff);



}
