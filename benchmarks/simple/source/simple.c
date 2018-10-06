
#include <stdio.h>

#define TIME_MEASUREMENTS

#ifdef TIME_MEASUREMENTS
#include <sys/time.h>
#endif

extern unsigned int is_signature_queue_full;

//#define NUM 5000000
//#define NUM 50000
#define NUM 5000
//#define NUM 100

//#define NUM 1
//#define NUM 10000

//#define SILENCE

int global_value1 =0;

int sub_func1_3()
{
	int a = 1+2;
#ifdef SILENCE
	printf(" [target function] sub_func1_2\n");
#endif

	int b, c, d, e, f;

	a=b+1;
	b=c+a;
	c=2;
	d=a+2;
	e=5;
	f=1;
	a=f+1;
	f=f+d;
	d=a+b;
	c=d+f;
	e=e+a;
	a=f+2;
	f=2+1;
	c++;
	d=a++;
	b=c;

	return 1;
}
int sub_func1_2()
{
	int a = 1+2;
#ifdef SILENCE
	printf(" [target function] sub_func1_2\n");
#endif
	int b, c, d, e, f;
	
	a=b+1;
	b=c+a;
	c=2;
	d=a+2;
	e=5;
	f=1;
	a=f+1;
	f=f+d;
	d=a+b;
	c=d+f;
	e=e+a;
	a=f+2;
	f=2+1;
	c++;
	d=a++;
	
	return 1;
}
int sub_func1_1()
{
	int a = 1+2;
#ifdef SILENCE
	printf(" [target function] sub_func1_1\n");
#endif
	int b, c, d, e, f;

	a=b+1;
	b=c+a;
	c=2;
	d=a+2;
	e=5;
	f=1;
	a=f+1;
	f=f+d;
	d=a+b;
	c=d+f;
	e=e+a;
	a=f+2;
	f=2+1;
	c++;
	d=a++;
	b=c;
	return 1;
}
int sub_func2_2()
{
	int a = 1+2;
#ifdef SILENCE
	printf(" [target function] sub_func2_2\n");
#endif
	int b, c, d, e, f;

	a=b+1;
	b=c+a;
	c=2;
	d=a+2;
	e=5;
	f=1;
	a=f+1;
	f=f+d;
	d=a+b;
	c=d+f;
	e=e+a;
	a=f+2;
	f=2+1;
	c++;
	d=a++;
	b=c;
	return 1;
}
int sub_func2_1()
{
	int a = 1+2;
#ifdef SILENCE
	printf(" [target function] sub_func2_1\n");
#endif
	int b, c, d, e, f;

	a=b+1;
	b=c+a;
	c=2;
	d=a+2;
	e=5;
	f=1;
	a=f+1;
	f=f+d;
	d=a+b;
	c=d+f;
	e=e+a;
	a=f+2;
	f=2+1;
	c++;
	d=a++;
	b=c;
	return 1;
}
int sub_func3_1()
{
	int a = 1+2;
#ifdef SILENCE
	printf(" [target function] sub_func3_1\n");
#endif
	int b, c, d, e, f;

	a=b+1;
	b=c+a;
	c=2;
	d=a+2;
	e=5;
	f=1;
	a=f+1;
	f=f+d;
	d=a+b;
	c=d+f;
	e=e+a;
	a=f+2;
	f=2+1;
	c++;
	d=a++;
	b=c;
	return 1;
}
int sub_func4_4()
{
	int a = 1+2;
#ifdef SILENCE
	printf(" [target function] sub_func4_4\n");
#endif
	int b, c, d, e, f;

	a=b+1;
	b=c+a;
	c=2;
	d=a+2;
	e=5;
	f=1;
	a=f+1;
	f=f+d;
	d=a+b;
	c=d+f;
	e=e+a;
	a=f+2;
	f=2+1;
	c++;
	d=a++;
	b=c;
	return 1;
}
int sub_func4_3()
{
	int a = 1+2;
#ifdef SILENCE
	printf(" [target function] sub_func4_3\n");
#endif
	int b, c, d, e, f;

	a=b+1;
	b=c+a;
	c=2;
	d=a+2;
	e=5;
	f=1;
	a=f+1;
	f=f+d;
	d=a+b;
	c=d+f;
	e=e+a;
	a=f+2;
	f=2+1;
	c++;
	d=a++;
	b=c;
	return 1;
}
int sub_func4_2()
{
	int a = 1+2;
#ifdef SILENCE
	printf(" [target function] sub_func4_2\n");
#endif
	int b, c, d, e, f;

	a=b+1;
	b=c+a;
	c=2;
	d=a+2;
	e=5;
	f=1;
	a=f+1;
	f=f+d;
	d=a+b;
	c=d+f;
	e=e+a;
	a=f+2;
	f=2+1;
	c++;
	d=a++;
	b=c;
	return 1;
}
int sub_func4_1()
{
	int a = 1+2;
#ifdef SILENCE
	printf(" [target function] sub_func4_1\n");
#endif
	int b, c, d, e, f;

	a=b+1;
	b=c+a;
	c=2;
	d=a+2;
	e=5;
	f=1;
	a=f+1;
	f=f+d;
	d=a+b;
	c=d+f;
	e=e+a;
	a=f+2;
	f=2+1;
	c++;
	d=a++;
	b=c;
	return 1;
}
int sub_func5_1()
{
	int a = 1+2;
#ifdef SILENCE
	printf(" [target function] sub_func5_1\n");
#endif
	int b, c, d, e, f;

	a=b+1;
	b=c+a;
	c=2;
	d=a+2;
	e=5;
	f=1;
	a=f+1;
	f=f+d;
	d=a+b;
	c=d+f;
	e=e+a;
	a=f+2;
	f=2+1;
	c++;
	d=a++;
	b=c;
	return 1;
}
int sub_func5_2()
{
	int a = 1+2;
#ifdef SILENCE
	printf(" [target function] sub_func5_2\n");
#endif
	int b, c, d, e, f;

	a=b+1;
	b=c+a;
	c=2;
	d=a+2;
	e=5;
	f=1;
	a=f+1;
	f=f+d;
	d=a+b;
	c=d+f;
	e=e+a;
	a=f+2;
	f=2+1;
	c++;
	d=a++;
	b=c;
	return 1;
}
int sub_func5_3()
{
	int a = 1+2;
#ifdef SILENCE
	printf(" [target function] sub_func5_3\n");
#endif
	int b, c, d, e, f;

	a=b+1;
	b=c+a;
	c=2;
	d=a+2;
	e=5;
	f=1;
	a=f+1;
	f=f+d;
	d=a+b;
	c=d+f;
	e=e+a;
	a=f+2;
	f=2+1;
	c++;
	d=a++;
	b=c;
	return 1;
}
int sub_func5_4()
{
	int a = 1+2;
#ifdef SILENCE
	printf(" [target function] sub_func5_4\n");
#endif
	int b, c, d, e, f;

	a=b+1;
	b=c+a;
	c=2;
	d=a+2;
	e=5;
	f=1;
	a=f+1;
	f=f+d;
	d=a+b;
	c=d+f;
	e=e+a;
	a=f+2;
	f=2+1;
	c++;
	d=a++;
	b=c;
	return 1;
}
int sub_func5_5()
{
	int a = 1+2;
#ifdef SILENCE
	printf(" [target function] sub_func5_5\n");
#endif
	int b, c, d, e, f;

	a=b+1;
	b=c+a;
	c=2;
	d=a+2;
	e=5;
	f=1;
	a=f+1;
	f=f+d;
	d=a+b;
	c=d+f;
	e=e+a;
	a=f+2;
	f=2+1;
	c++;
	d=a++;
	b=c;
	return 1;
}
int sub_func6_1()
{
	int a = 1+2;
#ifdef SILENCE
	printf(" [target function] sub_func6_1\n");
#endif
	int b, c, d, e, f;

	a=b+1;
	b=c+a;
	c=2;
	d=a+2;
	e=5;
	f=1;
	a=f+1;
	f=f+d;
	d=a+b;
	c=d+f;
	e=e+a;
	a=f+2;
	f=2+1;
	c++;
	d=a++;
	b=c;
	return 1;
}




int func1()
{
#ifdef SILENCE
	printf(" [target function] func_1\n");
#endif
	int a = 1+2;
	sub_func1_1();
	int b, c, d, e, f;

	a=b+1;
	b=c+a;
	c=2;
	d=a+2;
	e=5;
	f=1;
	a=f+1;
	f=f+d;
	d=a+b;
	c=d+f;
	e=e+a;
	a=f+2;
	f=2+1;
	c++;
	d=a++;
	b=c;
	sub_func1_2();

	a=b+1;
	b=c+a;
	c=2;
	d=a+2;
	e=5;
	f=1;
	a=f+1;
	f=f+d;
	d=a+b;
	c=d+f;
	e=e+a;
	a=f+2;
	f=2+1;
	c++;
	d=a++;
	b=c;
	sub_func1_3();

	a=b+1;
	b=c+a;
	c=2;
	d=a+2;
	e=5;
	f=1;
	a=f+1;
	f=f+d;
	d=a+b;
	c=d+f;
	e=e+a;
	a=f+2;
	f=2+1;
	c++;
	d=a++;
	b=c;
	return 1;
}

int func2()
{
#ifdef SILENCE
	printf(" [target function] func_2\n");
#endif
	int a = 1+2;
	sub_func2_1();
	int b, c, d, e, f;

	a=b+1;
	b=c+a;
	c=2;
	d=a+2;
	e=5;
	f=1;
	a=f+1;
	f=f+d;
	d=a+b;
	c=d+f;
	e=e+a;
	a=f+2;
	f=2+1;
	c++;
	d=a++;
	b=c;
	sub_func2_2();

	a=b+1;
	b=c+a;
	c=2;
	d=a+2;
	e=5;
	f=1;
	a=f+1;
	f=f+d;
	d=a+b;
	c=d+f;
	e=e+a;
	a=f+2;
	f=2+1;
	c++;
	d=a++;
	b=c;
	return 2;
}

int func3()
{
#ifdef SILENCE
	printf(" [target function] func_3\n");
#endif
	int a = 1+2;
	int b, c, d, e, f;

	a=b+1;
	b=c+a;
	c=2;
	d=a+2;
	e=5;
	f=1;
	a=f+1;
	f=f+d;
	d=a+b;
	c=d+f;
	e=e+a;
	a=f+2;
	f=2+1;
	c++;
	d=a++;
	b=c;
	sub_func3_1();

	a=b+1;
	b=c+a;
	c=2;
	d=a+2;
	e=5;
	f=1;
	a=f+1;
	f=f+d;
	d=a+b;
	c=d+f;
	e=e+a;
	a=f+2;
	f=2+1;
	c++;
	d=a++;
	b=c;
	return 3;
}

int func4()
{
#ifdef SILENCE
	printf(" [target function] func_4\n");
#endif
	int a = 1+2;
	sub_func4_1();
	int b, c, d, e, f;

	a=b+1;
	b=c+a;
	c=2;
	d=a+2;
	e=5;
	f=1;
	a=f+1;
	f=f+d;
	d=a+b;
	c=d+f;
	e=e+a;
	a=f+2;
	f=2+1;
	c++;
	d=a++;
	b=c;
	sub_func4_2();

	a=b+1;
	b=c+a;
	c=2;
	d=a+2;
	e=5;
	f=1;
	a=f+1;
	f=f+d;
	d=a+b;
	c=d+f;
	e=e+a;
	a=f+2;
	f=2+1;
	c++;
	d=a++;
	b=c;
	sub_func4_3();

	a=b+1;
	b=c+a;
	c=2;
	d=a+2;
	e=5;
	f=1;
	a=f+1;
	f=f+d;
	d=a+b;
	c=d+f;
	e=e+a;
	a=f+2;
	f=2+1;
	c++;
	d=a++;
	b=c;
	sub_func4_4();

	a=b+1;
	b=c+a;
	c=2;
	d=a+2;
	e=5;
	f=1;
	a=f+1;
	f=f+d;
	d=a+b;
	c=d+f;
	e=e+a;
	a=f+2;
	f=2+1;
	c++;
	d=a++;
	b=c;
	return 4;
}

int func5()
{
#ifdef SILENCE
	printf(" [target function] func_5\n");
#endif
	int a = 1+2;
	sub_func5_1();
	int b, c, d, e, f;

	a=b+1;
	b=c+a;
	c=2;
	d=a+2;
	e=5;
	f=1;
	a=f+1;
	f=f+d;
	d=a+b;
	c=d+f;
	e=e+a;
	a=f+2;
	f=2+1;
	c++;
	d=a++;
	b=c;
	sub_func5_2();

	a=b+1;
	b=c+a;
	c=2;
	d=a+2;
	e=5;
	f=1;
	a=f+1;
	f=f+d;
	d=a+b;
	c=d+f;
	e=e+a;
	a=f+2;
	f=2+1;
	c++;
	d=a++;
	b=c;
	sub_func5_3();

	a=b+1;
	b=c+a;
	c=2;
	d=a+2;
	e=5;
	f=1;
	a=f+1;
	f=f+d;
	d=a+b;
	c=d+f;
	e=e+a;
	a=f+2;
	f=2+1;
	c++;
	d=a++;
	b=c;
	sub_func5_4();

	a=b+1;
	b=c+a;
	c=2;
	d=a+2;
	e=5;
	f=1;
	a=f+1;
	f=f+d;
	d=a+b;
	c=d+f;
	e=e+a;
	a=f+2;
	f=2+1;
	c++;
	d=a++;
	b=c;
	sub_func5_5();

	a=b+1;
	b=c+a;
	c=2;
	d=a+2;
	e=5;
	f=1;
	a=f+1;
	f=f+d;
	d=a+b;
	c=d+f;
	e=e+a;
	a=f+2;
	f=2+1;
	c++;
	d=a++;
	b=c;
	return 5;
}

int func6()
{
#ifdef SILENCE
	printf(" [target function] func_6\n");
#endif
	int a = 1+2;
	sub_func6_1();
	int b, c, d, e, f;

	a=b+1;
	b=c+a;
	c=2;
	d=a+2;
	e=5;
	f=1;
	a=f+1;
	f=f+d;
	d=a+b;
	c=d+f;
	e=e+a;
	a=f+2;
	f=2+1;
	c++;
	d=a++;
	b=c;
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
		int b, c, d, e, f;

		a=b+1;
		b=c+a;
		c=2;
		d=a+2;
		e=5;
		f=1;
		a=f+1;
		f=f+d;
		d=a+b;
		c=d+f;
		e=e+a;
		a=f+2;
		f=2+1;
		c++;
		d=a++;
		b=c;
			
		func1();

		a=b+1;
		b=c+a;
		c=2;
		d=a+2;
		e=5;
		f=1;
		a=f+1;
		f=f+d;
		d=a+b;
		c=d+f;
		e=e+a;
		a=f+2;
		f=2+1;
		c++;
		d=a++;
		b=c;
			
		func2();

		a=b+1;
		b=c+a;
		c=2;
		d=a+2;
		e=5;
		f=1;
		a=f+1;
		f=f+d;
		d=a+b;
		c=d+f;
		e=e+a;
		a=f+2;
		f=2+1;
		c++;
		d=a++;
		b=c;
			
		func3();

		a=b+1;
		b=c+a;
		c=2;
		d=a+2;
		e=5;
		f=1;
		a=f+1;
		f=f+d;
		d=a+b;
		c=d+f;
		e=e+a;
		a=f+2;
		f=2+1;
		c++;
		d=a++;
		b=c;
			
		func4();

		a=b+1;
		b=c+a;
		c=2;
		d=a+2;
		e=5;
		f=1;
		a=f+1;
		f=f+d;
		d=a+b;
		c=d+f;
		e=e+a;
		a=f+2;
		f=2+1;
		c++;
		d=a++;
		b=c;
			
		func5();

		a=b+1;
		b=c+a;
		c=2;
		d=a+2;
		e=5;
		f=1;
		a=f+1;
		f=f+d;
		d=a+b;
		c=d+f;
		e=e+a;
		a=f+2;
		f=2+1;
		c++;
		d=a++;
		b=c;
			
		func6();

		a=b+1;
		b=c+a;
		c=2;
		d=a+2;
		e=5;
		f=1;
		a=f+1;
		f=f+d;
		d=a+b;
		c=d+f;
		e=e+a;
		a=f+2;
		f=2+1;
		c++;
		d=a++;
		b=c;
	}

	printf(" [target finished!]\n");
	gettimeofday(&endTick, NULL);
	printf(" [target] Execution Time: %ld\n", (endTick.tv_sec - begTick.tv_sec) * 1000000 + (endTick.tv_usec - begTick.tv_usec));
	is_signature_queue_full =1;
	
	/* waiting for monitor thread */
	//while(1);
}
	
