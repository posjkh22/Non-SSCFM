
#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>

#define ARR_SIZE 100000000

void copy(int init_arr[], int copy_arr[], unsigned long long int size);

void init(int init_arr[])
{
	unsigned long long int i;
	for(i=0; i<ARR_SIZE; i++)
	{
		init_arr[i] = i;
	}
}


int main()
{
	struct timeval init_begTick;
	struct timeval init_endTick;
	struct timeval copy_begTick;
	struct timeval copy_endTick;
	
	int *init_arr = (int*)malloc(sizeof(int)* ARR_SIZE);
	int *copy_arr = (int*)malloc(sizeof(int)* ARR_SIZE);

	gettimeofday(&init_begTick, NULL);
	init(init_arr);
	gettimeofday(&init_endTick, NULL);
	printf(" [target] init Time: %ld\n", (init_endTick.tv_sec - init_begTick.tv_sec) * 1000 + (init_endTick.tv_usec - init_begTick.tv_usec) / 1000);
	
	gettimeofday(&copy_begTick, NULL);
	copy(init_arr, copy_arr, ARR_SIZE);
	gettimeofday(&copy_endTick, NULL);
	printf(" [target] copy Time: %ld\n", (copy_endTick.tv_sec - copy_begTick.tv_sec) * 1000 + (copy_endTick.tv_usec - copy_begTick.tv_usec) / 1000);

	return 0;
}
