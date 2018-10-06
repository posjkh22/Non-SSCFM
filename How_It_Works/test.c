
#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>


#define DATA_SIZE 100


pthread_t thread;

int data_arr[DATA_SIZE];
int next_flag = 0;


void* thread_routine(void* arg)
{	
	pid_t pid;
	pthread_t tid;
	pid = getpid();
	tid = pthread_self();

	int* copied_data_arr = (int*)malloc(sizeof(data_arr));

	for(int i=0; i<sizeof(data_arr)/sizeof(int); i++)
	{
		copied_data_arr[i] = data_arr[i];
		
	}

	next_flag =1;

	printf("thread_routine: %u(%u), ", (unsigned int)tid, (unsigned int)pid);
	
	printf("%d", copied_data_arr[0]);

	/*
	for(int i=0; i<sizeof(data_arr)/sizeof(int); i++)
	{
		printf("%d ", copied_data_arr[i]);
	}
	*/
	printf("\nEND_MONITOR_THREAD\n\n\n");



}


int queue_size = 0;



void monitor_do()
{
	pthread_create(&thread, NULL, thread_routine, NULL);

	while(1)
	{
		if(next_flag == 1)
		{
			next_flag = 0;

			break;
		}
	}

}

void enque_signature(int i)
{
	data_arr[queue_size] = i;
	queue_size++;

	if(queue_size == DATA_SIZE)
	{
		monitor_do();
		queue_size = 0;
	}
}


int main()
{
	
	int k=0;
	for(int i=0; i<10000; i++)
	{
		enque_signature(i);
	}

	pthread_join(thread, NULL);

	printf("end main\n");
	return 0;
	
}
