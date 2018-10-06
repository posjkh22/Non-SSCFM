

#define SIMPLE_STACK_MAXSIZE

unsigned int simple_stack[SIMPLE_STACK_MAXSIZE];
unsigned int simple_stack_top = 0;

void simple_InitStack();
void simple_push(unsigned int data);
unsigned int simple_pop();
