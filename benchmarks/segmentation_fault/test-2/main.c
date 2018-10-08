

#include <signal.h>
#include <stdio.h>

#define __USE_GNU
//#include <ucontext.h>
#include <sys/ucontext.h>

int *p = NULL;
int n = 100;

void sighandler(int signo, siginfo_t *si, ucontext_t* context)
{
	printf("Handler executed for signal %d\n", signo);
	context->uc_mcontext.gregs[REG_RAX] = &n;
}

int main(int argc,char ** argv)
{
	signal(SIGSEGV, sighandler);
	printf("%d\n", *p); // ... movl (%rax), %esi ...
	return 0;
}


