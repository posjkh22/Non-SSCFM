
#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>


#define DATA_SIZE 100


typedef struct
{
	int* copied_signature_queue;
	int copied_signature_queue_size;
}monitor_dat;

pthread_t thread;

int signature_queue[DATA_SIZE];
int signature_queue_size = 0;

int next_flag = 0;


void* thread_routine(void* arg)
{	
	static int thread_num=0;
	pid_t pid;
	pthread_t tid;
	pid = getpid();
	tid = pthread_self();

	monitor_dat* mon_dat = (monitor_dat*)arg;
	int* copied_signature_queue = (mon_dat)->copied_signature_queue;
	int* copied_signature_queue_size = (mon_dat)->copied_signature_queue_size;

	printf("thread_routine start: %u(%u)\n", (unsigned int)tid, (unsigned int)pid);
	
	int i; 
	int j;
	int iter=10000000;

	int sum=0;
	for(i=0; i< *copied_signature_queue_size;i++)
	{
		sum += copied_signature_queue[i];
		for(j=0; j<iter;j++);
	}

	printf("->sum: %d\n", sum);
	printf("thread_routine finish: %u(%u)\n", (unsigned int)tid, (unsigned int)pid);

	free(copied_signature_queue_size);
	free(copied_signature_queue);
	free(mon_dat);
}



void monitor_do()
{

	/* copy */
	int* copied_signature_queue = (int*)malloc(sizeof(int) * signature_queue_size);
	int* copied_signature_queue_size = (int*)malloc(sizeof(int));
	*copied_signature_queue_size = signature_queue_size;

	int i;
	for(i=0; i<signature_queue_size;i++)
	{
		copied_signature_queue[i] = signature_queue[i];
	}
	monitor_dat* mon_dat = (monitor_dat*)malloc(sizeof(monitor_dat));
	mon_dat->copied_signature_queue = copied_signature_queue;
	mon_dat->copied_signature_queue_size = copied_signature_queue_size;



	/* mon-thread gen */
	pthread_create(&thread, NULL, thread_routine, (void*)mon_dat);

}

void enque_signature(int i)
{
	signature_queue[signature_queue_size] = i;
	signature_queue_size++;

	if(signature_queue_size == DATA_SIZE)
	{
		monitor_do();
		signature_queue_size = 0;
	}
}


int main()
{
	
	int k=0;
	for(int i=0; i<1000; i++)
	{
		enque_signature(i);
	}


	while(1);
	printf("end main\n");
	return 0;
	
}
