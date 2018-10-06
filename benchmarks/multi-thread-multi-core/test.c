
#include <stdio.h>
#include <sys/time.h>
#include <pthread.h>

pthread_t monitor_thread;
	
struct timeval app_begTick;
struct timeval app_endTick;
struct timeval mon_begTick;
struct timeval mon_endTick;

void* MonitorInit(void* arg)
{
	gettimeofday(&mon_begTick, NULL);

	int i;
	int mon_num = 500000000;
	for(i=0; i < mon_num; i++);

	gettimeofday(&mon_endTick, NULL);
	printf(" [mon] Monitor Execution Time: %ld\n", (mon_endTick.tv_sec - mon_begTick.tv_sec) * 1000000 + (mon_endTick.tv_usec - mon_begTick.tv_usec));
}

void MonitorGen()
{
	pthread_create(&monitor_thread, NULL, MonitorInit, NULL);
	
}

int main()
{
	gettimeofday(&app_begTick, NULL);

	int mon_thread_num = 20;
	for(;mon_thread_num >0; mon_thread_num--)
	{
		MonitorGen();
	}
	//MonitorInit(NULL);

	int i;
	int app_num = 50000000;
	for(i=0; i < app_num; i++);

	gettimeofday(&app_endTick, NULL);
	printf(" [app] App Execution Time: %ld\n", (app_endTick.tv_sec - app_begTick.tv_sec) * 1000000 + (app_endTick.tv_usec - app_begTick.tv_usec));

	//while(1);
}
