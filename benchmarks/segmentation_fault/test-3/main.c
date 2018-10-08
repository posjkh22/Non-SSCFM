
#include <stdio.h>
#include <setjmp.h>
#include <signal.h>

static jmp_buf jbuf;
static void catch_segv()
{
	longjmp(jbuf, 2);
}

int main()
{
	int *p = NULL;
	signal(SIGSEGV, catch_segv);
	if (setjmp(jbuf) == 0) {
		printf("%d\n", *p);
	} else {
		printf("Ouch! I crashed-1!\n");
		printf("Ouch! I crashed-2!\n");
	}
	return 0;
}
