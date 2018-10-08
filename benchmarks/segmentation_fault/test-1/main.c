
#include<signal.h>
#include<stdio.h>

int main(int argc,char ** argv)
{
	char *p=NULL;
	signal(SIGSEGV,SIG_IGN); //Ignoring the Signal
	printf("%d",*p);
	printf("Stack Overflow"); //This has to be printed. Right?
	return 0;
}
