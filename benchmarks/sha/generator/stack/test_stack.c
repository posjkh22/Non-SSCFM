
#include "aces_stack.h"

int main()
{
	int i;
	Stack stack;
			 
	InitStack(&stack);

	for (i = 1; i <= 5; i++)
	{
		push(&stack, i);
	}
	Stack *stack2 = copy_stack(&stack);

	printf("original\n");
	while (!IsEmpty(&stack))
	{
		printf("%d ", pop(&stack));
	}
	printf("\n");
	
	printf("copied\n");
	while (!IsEmpty(stack2))
	{
		printf("%d ", pop(stack2));
	}
	printf("\n");

	return 0;
}
