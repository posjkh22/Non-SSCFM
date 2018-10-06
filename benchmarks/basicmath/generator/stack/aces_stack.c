
#include "aces_stack.h"
#include <stdio.h>

void InitStack(Stack *stack)
{
	stack->size = 0;	
	stack->top = NULL; 
}
 
int IsEmpty(Stack *stack)
{
	return stack->top == NULL;   
}
void push(Stack *stack, int data)
{
	Node *now = (Node *)malloc(sizeof(Node)); 
	now->data = data;
	now->next = stack->top;
	stack->top = now;   
	stack->size++;
	
//	printf(" [stack] push: %x\n", data);
}

int pop(Stack *stack)
{
	Node *now;
	int re;
	
	if (IsEmpty(stack))
	{
		return 0;
	}
	
	now = stack->top;
	re = now->data;

	stack->top = now->next;
	free(now);
	stack->size--;

//	printf(" [stack] pop: %x\n", re);

	return re;
}

Stack* copy_stack(Stack* stack)
{
	Stack* copied_stack = (Stack*)malloc(sizeof(Stack));
	InitStack(copied_stack);

	unsigned int *temp_arr = (unsigned int*)malloc(sizeof(unsigned int) * stack->size);
	Node* top =  stack->top;

	//printf("size: %d\n", stack->size);

	Node* currNode = top;
	for(int i=0; i<stack->size; i++)
	{
		unsigned int copied_data = currNode->data;

		//printf("data: %d\n", copied_data);
		currNode = currNode->next;

		temp_arr[stack->size-1-i] = copied_data;
	}

	for(int i=0; i<stack->size;i++)
	{
		push(copied_stack, temp_arr[i]);
		//printf("data: %d\n", temp_arr[i]);
	}

	free(temp_arr);

	return copied_stack;

}

void show_elements(Stack* stack)
{
	int size = stack->size;
	int i;

	Node* current = NULL;
	printf(" [stack] stack_elements: ");
	for(int i=0; i<size; i++)
	{
		current = stack->top;
		printf("%x ", current->data);

		current = current->next;
	}
	printf("\n");


}

void delete_stack(Stack* stack)
{

	while(!IsEmpty(stack))
	{
		pop(stack);
	}

	free(stack);
	return;
}

unsigned int top(Stack* stack)
{
	return  stack->top->data;
}
