
#include <setjmp.h> 
#include <stdio.h>
  
jmp_buf pos;   
  
void proc()   
{   
	static int i = 0;   
	++i;  
	if(i<10) 
	{	
		longjmp(pos, i);   
	}
	return;   
}   
  
int main()   
{   
	int a;   
	a = setjmp(pos);   
	printf("%d\n", a);   
	proc();   
	return 0;   
}  


