
#include <stdio.h>

#define TIME_MEASUREMENTS

#ifdef TIME_MEASUREMENTS
#include <sys/time.h>
#endif

extern unsigned int is_signature_queue_full;

#define NUM 100

#define SILENCE

int sub_func1_3()
{
	int a = 1+2;
#ifdef SILENCE
	printf(" [target function] sub_func1_2\n");
#endif
	return 1;
}
int sub_func1_2()
{
	int a = 1+2;
#ifdef SILENCE
	printf(" [target function] sub_func1_2\n");
#endif
	return 1;
}
int sub_func1_1()
{
	int a = 1+2;
#ifdef SILENCE
	printf(" [target function] sub_func1_1\n");
#endif
	return 1;
}
int sub_func2_2()
{
	int a = 1+2;
#ifdef SILENCE
	printf(" [target function] sub_func2_2\n");
#endif
	return 1;
}
int sub_func2_1()
{
	int a = 1+2;
#ifdef SILENCE
	printf(" [target function] sub_func2_1\n");
#endif
	return 1;
}
int sub_func3_1()
{
	int a = 1+2;
#ifdef SILENCE
	printf(" [target function] sub_func3_1\n");
#endif
	return 1;
}
int sub_func4_4()
{
	int a = 1+2;
#ifdef SILENCE
	printf(" [target function] sub_func4_4\n");
#endif
	return 1;
}
int sub_func4_3()
{
	int a = 1+2;
#ifdef SILENCE
	printf(" [target function] sub_func4_3\n");
#endif
	return 1;
}
int sub_func4_2()
{
	int a = 1+2;
#ifdef SILENCE
	printf(" [target function] sub_func4_2\n");
#endif
	return 1;
}
int sub_func4_1()
{
	int a = 1+2;
#ifdef SILENCE
	printf(" [target function] sub_func4_1\n");
#endif
	return 1;
}
int sub_func5_1()
{
	int a = 1+2;
#ifdef SILENCE
	printf(" [target function] sub_func5_1\n");
#endif
	return 1;
}
int sub_func5_2()
{
	int a = 1+2;
#ifdef SILENCE
	printf(" [target function] sub_func5_2\n");
#endif
	return 1;
}
int sub_func5_3()
{
	int a = 1+2;
#ifdef SILENCE
	printf(" [target function] sub_func5_3\n");
#endif
	return 1;
}
int sub_func5_4()
{
	int a = 1+2;
#ifdef SILENCE
	printf(" [target function] sub_func5_4\n");
#endif
	return 1;
}
int sub_func5_5()
{
	int a = 1+2;
#ifdef SILENCE
	printf(" [target function] sub_func5_5\n");
#endif
	return 1;
}
int sub_func6_1()
{
	int a = 1+2;
#ifdef SILENCE
	printf(" [target function] sub_func6_1\n");
#endif
	return 1;
}




int func1()
{
#ifdef SILENCE
	printf(" [target function] func_1\n");
#endif
	int a = 1+2;
	sub_func1_1();
	sub_func1_2();
	sub_func1_3();
	return 1;
}

int func2()
{
#ifdef SILENCE
	printf(" [target function] func_2\n");
#endif
	int a = 1+2;
	sub_func2_1();
	sub_func2_2();
	return 2;
}

int func3()
{
#ifdef SILENCE
	printf(" [target function] func_3\n");
#endif
	int a = 1+2;
	sub_func3_1();
	return 3;
}

int func4()
{
#ifdef SILENCE
	printf(" [target function] func_4\n");
#endif
	int a = 1+2;
	sub_func4_1();
	sub_func4_2();
	sub_func4_3();
	sub_func4_4();
	return 4;
}

int func5()
{
#ifdef SILENCE
	printf(" [target function] func_5\n");
#endif
	int a = 1+2;
	sub_func5_1();
	sub_func5_2();
	sub_func5_3();
	sub_func5_4();
	sub_func5_5();
	return 5;
}

int func6()
{
#ifdef SILENCE
	printf(" [target function] func_6\n");
#endif
	int a = 1+2;
	sub_func6_1();
	return 6;
}


int main()
{

	struct timeval begTick;
	struct timeval endTick;
	gettimeofday(&begTick, NULL);
	int i;
	for(i=0; i<NUM; i++)
	{
#ifdef SILENCE
		printf(" [target function] main\n");
#endif
		int a = 1+2;
		func1();
		func2();
		func3();
		func4();
		func5();
		func6();
	}

	printf(" [target finished!]\n");
	gettimeofday(&endTick, NULL);
	printf(" [target] Execution Time: %ld\n", (endTick.tv_sec - begTick.tv_sec) * 1000 + (endTick.tv_usec - begTick.tv_usec) / 1000);
	is_signature_queue_full =1;
	
	/* waiting for monitor thread */
	//while(1);
}
	
