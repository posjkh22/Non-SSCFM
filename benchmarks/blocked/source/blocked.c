
#include <stdio.h>
#include <sys/time.h>

extern unsigned int is_signature_queue_full;


void calculation_type_A()
{

	int cal = 0;
	for(int i=0; i<30; i++)
	{
		cal += i;
		cal *= 2;
		cal -= 1;
	}

}

void calculation_type_B()
{

	int cal = 1;
	for(int i=1; i<50; i++)
	{
		cal *= i;
		cal += 2;
	}

}

int main()
{
	struct timeval begTick;
	struct timeval endTick;
	gettimeofday(&begTick, NULL);
	
	
	int count = 50;

	for(int i=0; i<count; i++)
	{

		char buffer[20];

		
		calculation_type_A();
		FILE* fp = fopen("hello.txt", "r");	
		calculation_type_B();
		
		for(int j=0; j<50; j++)
		{	
			calculation_type_B();
			fgets(buffer, sizeof(buffer), fp);
		
			calculation_type_A();
			FILE* fp2 = fopen("write.txt", "a");	
			calculation_type_B();
			
			fputs(buffer, fp2);
			calculation_type_A();
			fclose(fp2);
			calculation_type_B();
		}
		//printf(" %s\n", buffer);

		
		calculation_type_A();
		fclose(fp);
	
	}	
	
	printf(" [target finished!]\n");
	gettimeofday(&endTick, NULL);
	printf(" [target] Execution Time: %ld\n", (endTick.tv_sec - begTick.tv_sec) * 1000000 + (endTick.tv_usec - begTick.tv_usec));
	is_signature_queue_full =1;

	return 0;
}
