
#include <stdio.h>
#include <time.h>

int main(int argc, char* argv[])
{

	srand(time(NULL));

	int point_to_insert;
	int line_of_assembly = 0;
	int sign = 0;

	FILE* in = fopen(argv[1], "r");
	FILE* out = fopen("out.s", "w");

	char buff[300];
	int size;
	int read =1;
   
	/* get line of assembly */
	while(NULL != fgets(buff, sizeof(buff), in))
	{
		line_of_assembly++;
	}	
	fclose(in);
	
	/* set point_to_insert */
	point_to_insert = line_of_assembly/3;
	printf("point_to_insert: %d\n", point_to_insert);	

	sign = (rand()%2==0) ? 1: -1;

	//point_to_insert += (sign * ( rand() % (line_of_assembly/10) ));


	in = fopen(argv[1], "r");


	int curr_line_num = 0;
	int insert_flag = 0;
	char instruction_buff[300];

    while(NULL != fgets(buff, sizeof(buff), in))  // 최대 80칸짜리 한줄 읽기
	{
		
		if(insert_flag == 1)
		{
			//fscanf(in, "%s\n", instruction_buff);
			strcpy(instruction_buff, buff);
			instruction_buff[5] = '\0';
			printf("get: %s\n", instruction_buff);
			if(!strcmp(instruction_buff, "	movl"))
			{
				fputs("	jmp 0x191919\n", out);
				insert_flag =0;
			}
			//getchar();
		}
		
		fputs(buff, out);  // 한줄 출력
		curr_line_num++;

		if(curr_line_num == point_to_insert)
		{
			insert_flag = 1;
			//fputs("hello", out);
		}

	}





	fclose(in);
	fclose(out);
}
