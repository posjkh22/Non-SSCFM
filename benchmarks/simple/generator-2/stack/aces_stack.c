
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
	
	return re;
}

Stack* copy_stack(Stack* stack)
{
	Stack* copied_stack = (Stack*)malloc(sizeof(Stack));

	unsigned int *temp_arr = (unsigned int*)malloc(sizeof(unsigned int) * stack->size);
	Node* top =  stack->top;

	printf("size: %d\n", stack->size);

	Node* currNode = top;
	for(int i=0; i<stack->size; i++)
	{

		unsigned int copied_data = currNode->data;

		printf("data: %d\n", copied_data);
		currNode = currNode->next;

		temp_arr[stack->size-1-i] = copied_data;
	}

	for(int i=0; i<stack->size;i++)
	{
		push(copied_stack, temp_arr[i]);
		printf("data: %d\n", temp_arr[i]);
	}

	return copied_stack;

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
