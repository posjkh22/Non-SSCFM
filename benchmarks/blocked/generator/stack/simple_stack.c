
#include "simple_stack.h"


void simple_InitStack()
{
	simple_stack_top = -1;
}

void simple_push(unsigned int data)
{
	simple_stack[++simple_stack_top] = data;
}


unsigned int simple_pop()
{
	return simple_stack[simple_stack_top--];
}
