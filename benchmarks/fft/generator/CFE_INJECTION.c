
#include "CFE_INJECTION.h"
#include "CFE_RANDOM.h"
//#define CFE_JUMP "jmp 0x400b10 ;"
//#define CFE_JUMP "jmp 0x402ec5 ;"
//#define CFE_JUMP "jmp 0x402ea0 ;"	// checkPoint
//#define CFE_JUMP "jmp 0x400bf0 ;"  // main

//#define CFE_JUMP "jmp 0x400e86;"
//#define CFE_JUMP "jmp 0x400e72;"

#include <time.h>
#include <stdlib.h>
#include <stdio.h>

int CFE_OCCUR_FLAG = 0;

/*

[Total number of basic blocks ]

WS:	77
DS:	91
FFT:107
DJ:	59
PT:	212
SHA:66
BM:	110
SS:	166
CRC:29

*/   

int CFE_INJECTION_NUMBER = 0;

void CFE_INJECTION(int i, int type)
{
	
	srand(time(NULL));

	static int flag = 0;
	static int rand_value = 0;

	//printf("CFE_INJECT\n");

	if(CFE_OCCUR_FLAG == 1)
	{	
		//printf(" CFE_OCCURS_FLAG ON: pass CFE INJECTION\n");
		return;
	}

	if(flag == 0)
	{
		rand_value = rand() % 1300000-1;
	
		flag = 1;
	}
	
	if(rand_value == i)
	{
		printf(" CFE_OCCURS: %d", i);
		CFE_OCCUR_FLAG = 1;

		if(type == 0)
		{
			printf(" (Return basicblock)\n");
		}
		else if(type == 1)
		{
			printf(" (Call basicblock)\n");
		}
		else if(type == 2)
		{
			printf(" (Branch basicblock)\n");
		}
		
		else if(type == 3)
		{
			printf(" (PRGRAM EXIT basicblock)\n");
		}
		
		else
		{
			printf(" (undefined basicblock type)\n");
		}
		
		/* 1. jmp to special address */
		//asm ("jmp 0x4035d5;");

		/* 2. jmp to main */
		//main(); // (0)
		//asm (CFE_JUMP);

		//main();
		//IsPowerOfTwo();

		//asm ("jmp 0x400ca9;");
		//asm ("jmp 0x400e1a;");
		//asm ("jmp 0x400e8b;");
		//asm ("jmp 0x400e7c;");
		//asm ("jmp 0x400e86;");
		asm (CFE_JUMP);
		
		
		//asm ("jmp 0x4035d5;");

	}

	/*
	void* current_address = &&current_address_label;
current_address_label:

	printf(" current address: %x\n", current_address);
	*/

	//goto (&&current_address_label - 0x10);

	/*
	asm ("jmp 0x4035d5;");
	*/

}
