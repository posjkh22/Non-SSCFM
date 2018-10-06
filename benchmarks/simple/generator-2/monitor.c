
#include "IPCFG_TYPE.h"


#ifdef ACES_LIST
#include "list/aces_list.h"
#endif

#ifdef ACES_AVLTREE
#include "tree/aces_avltree.h"
#endif

#ifdef ACES_HASH
#include "hash/aces_hash.h"
#endif


#include "stack/aces_stack.h"

#include "BBNode.h"
#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#include "monitor.h"

#include <sys/time.h>

#define true 1
#define false 0

struct BBNode;

//#define ACES_DEBUG
//#define ACES_MINIMAL_DEBUG
//#define MONITOR_PROCESS_DEBUG

//#define SIGNATURE_QUEUE_SIZE 100
//#define SIGNATURE_QUEUE_SIZE 500
//#define SIGNATURE_QUEUE_SIZE 1000
//#define SIGNATURE_QUEUE_SIZE 5000
//#define SIGNATURE_QUEUE_SIZE 500000 // 500,000 
#define SIGNATURE_QUEUE_SIZE 1000000 // 1,000,000
//#define SIGNATURE_QUEUE_SIZE 5000000 // 5,000,000 (error)

#define MONITOR_THREAD_OVERHEAD

#ifdef MONITOR_THREAD_OVERHEAD

struct timeval ipcfg_begTick;
struct timeval ipcfg_endTick;

struct timeval copy_begTick;
struct timeval copy_endTick;

struct timeval verify_begTick;
struct timeval verify_endTick;

struct timeval wait_begTick;
struct timeval wait_endTick;


unsigned int total_ipcfg_time = 0;
unsigned int total_copy_time = 0;
unsigned int total_verify_time = 0;
unsigned int total_wait_time = 0;

#ifdef MONITOR_THREAD_OVERHEAD_1

struct timeval dequeue_begTick;
struct timeval dequeue_endTick;

struct timeval verify_1_begTick;
struct timeval verify_1_endTick;

unsigned int total_dequeue_time = 0;
unsigned int total_verify_1_time = 0;

#endif

#endif

//#define SIGNATURE_QUEUE_SIZE 100
//#define SIGNATURE_QUEUE_SIZE 500
//#define SIGNATURE_QUEUE_SIZE 1000
//#define SIGNATURE_QUEUE_SIZE 5000
#define SIGNATURE_QUEUE_SIZE 500000 // 500,000 (error)
//#define SIGNATURE_QUEUE_SIZE 5000000 // 5,000,000 (error)



INTEGRATED_CFG* p_integrated_CFG = NULL;
ReturnPointStack* p_returnPointStack = NULL;
ReturnPointStack* p_app_returnPointStack = NULL;

unsigned int current_queue_size = 0;

unsigned int signature_queue[SIGNATURE_QUEUE_SIZE];
unsigned int leverage_signature = 99999;

unsigned int is_signature_queue_full = 0;

unsigned int is_queue_copy_finish = 0;
unsigned int is_monitor_initialized = 0;
unsigned int is_monitor_process_finish = 1;


/* is_monitor_finished : only for monitor thread */
unsigned int is_monitor_finished = 0;


pthread_t thread;

bool generate_return_point_stack()
{
		
	p_returnPointStack = (Stack* )malloc(sizeof(Stack));
	InitStack(p_returnPointStack);
	return true;
}



/* monitor */
void monitor_process(unsigned int* copied_signature_queue, unsigned int copied_signature_queue_size)
{
#ifdef ACES_MINIMAL_DEBUG
	printf(" [monitor] Monitor process starts..\n");
#endif
	
	static unsigned int monitor_process_num = 0;

	/* BBNode */
	static BBNode* currentBasicBlock = NULL;

#ifdef ACES_LIST	
	currentBasicBlock = search(p_integrated_CFG, leverage_signature);
#endif

#ifdef ACES_AVLTREE
	currentBasicBlock = search(p_integrated_CFG->root, leverage_signature);
#endif

#ifdef ACES_HASH
	currentBasicBlock = search(p_integrated_CFG, leverage_signature);
#endif

	if(currentBasicBlock == NULL)
	{
		printf(" [ERROR] leverage_signature is not found!\n");
	}
	else
	{
#ifdef MONITOR_PROCESS_DEBUG
		printf(" [monitor] leverage_signature is found[%d]: %x\n", ++monitor_process_num, leverage_signature);
#endif
	}


	/* dequeue and verification */
	for(int i=0; i< copied_signature_queue_size; i++)
	{
#ifdef MONITOR_THREAD_OVERHEAD_1
	gettimeofday(&dequeue_begTick, NULL);
#endif
		unsigned int node_id = dequeue_signature(copied_signature_queue, i);

#ifdef MONITOR_THREAD_OVERHEAD_1
	gettimeofday(&dequeue_endTick, NULL);
	printf(" [mon] Copy Time: %ld, ", (copy_endTick.tv_sec - copy_begTick.tv_sec) * 1000 + (copy_endTick.tv_usec - copy_begTick.tv_usec) / 1000);
	total_dequeue_time += ((dequeue_endTick.tv_sec - dequeue_begTick.tv_sec) * 1000 + (dequeue_endTick.tv_usec - dequeue_begTick.tv_usec) / 1000);
	printf(" [mon] Total Dequeue Time: %ld\n", total_dequeue_time);
#endif

#ifdef MONITOR_THREAD_OVERHEAD_1
	gettimeofday(&verify_1_begTick, NULL);
#endif
		signature_verification(node_id, &currentBasicBlock);

#ifdef MONITOR_THREAD_OVERHEAD_1
	gettimeofday(&verify_1_endTick, NULL);
	printf(" [mon] Copy Time: %ld, ", (copy_endTick.tv_sec - copy_begTick.tv_sec) * 1000 + (copy_endTick.tv_usec - copy_begTick.tv_usec) / 1000);
	total_verify_1_time += ((verify_1_endTick.tv_sec - verify_1_begTick.tv_sec) * 1000 + (verify_1_endTick.tv_usec - verify_1_begTick.tv_usec) / 1000);
	printf(" [mon] Total Verification_1 Time: %ld\n", total_verify_1_time);
#endif

	}
	
	/* update leverage_signature */
	leverage_signature = copied_signature_queue[copied_signature_queue_size-1];

#ifdef ACES_MINIMAL_DEBUG
	printf(" [monitor] Monitor process has finished!\n");
#endif
	is_monitor_process_finish = 1;

}



void monitor_data_copy(int* copied_signature_queue, int copied_signature_queue_size)
{

#ifdef ACES_MINIMAL_DEBUG
	printf(" [monitor] monitor_data_copy starts..\n");
#endif
	for(int i=0; i< copied_signature_queue_size; i++)
	{
		copied_signature_queue[i] = signature_queue[i];
	}

#ifdef ACES_MINIMAL_DEBUG
	printf(" [monitor] monitor_data_copy has finished!\n");
#endif

}

/* monitor */
void* monitor_routine()
{	
	unsigned int copied_signature_queue[SIGNATURE_QUEUE_SIZE]; 

#ifdef MONITOR_THREAD_OVERHEAD
	gettimeofday(&copy_begTick, NULL);
#endif

	/* data copy to remove dependancy */
	unsigned int copied_signature_queue_size = current_queue_size;
	monitor_data_copy(copied_signature_queue, copied_signature_queue_size);
	ReturnPointStack* p_mon_returnPointstack = copy_stack(p_app_returnPointStack);


#ifdef MONITOR_THREAD_OVERHEAD
	gettimeofday(&copy_endTick, NULL);
	printf(" [mon] Copy Time: %ld, ", (copy_endTick.tv_sec - copy_begTick.tv_sec) * 1000 + (copy_endTick.tv_usec - copy_begTick.tv_usec) / 1000);
	total_copy_time += ((copy_endTick.tv_sec - copy_begTick.tv_sec) * 1000 + (copy_endTick.tv_usec - copy_begTick.tv_usec) / 1000);
	printf(" [mon] Total Copy Time: %ld\n", total_copy_time);
#endif

#ifdef ACES_MINIMAL_DEBUG
	printf(" [monitor] copied_signature_queue_size: %d\n", copied_signature_queue_size);
#endif
	is_queue_copy_finish =1;

#ifdef MONITOR_THREAD_OVERHEAD
	gettimeofday(&verify_begTick, NULL);
#endif
	monitor_process(copied_signature_queue, copied_signature_queue_size);

#ifdef MONITOR_THREAD_OVERHEAD
	gettimeofday(&verify_endTick, NULL);
	printf(" [mon] Verification Time: %ld, ", (verify_endTick.tv_sec - verify_begTick.tv_sec) * 1000 + (verify_endTick.tv_usec - verify_begTick.tv_usec) / 1000);
	total_verify_time += ((verify_endTick.tv_sec - verify_begTick.tv_sec) * 1000 + (verify_endTick.tv_usec - verify_begTick.tv_usec) / 1000);
	printf(" [mon] Total Verification Time: %ld\n", total_verify_time);
#endif

}


/* monitor */
void initialize_monitor()
{

#ifdef ACES_MINIMAL_DEBUG
	printf(" [monitor] monitor_init!\n");
#endif	
	
#ifdef MONITOR_THREAD_OVERHEAD
	gettimeofday(&ipcfg_begTick, NULL);
#endif


	p_app_returnPointStack = (Stack* )malloc(sizeof(Stack));
	InitStack(p_app_returnPointStack);

	initialize_monitor_routine(1);

#ifdef MONITOR_THREAD_OVERHEAD
	gettimeofday(&ipcfg_endTick, NULL);
	printf(" [mon] GenIPCFG Time: %ld\n", (ipcfg_endTick.tv_sec - ipcfg_begTick.tv_sec) * 1000 + (ipcfg_endTick.tv_usec - ipcfg_begTick.tv_usec) / 1000);
#endif

	//sleep(1);
	/*
	   monitor initialize!!
	*/
	is_monitor_initialized = 1;
	
#ifdef ACES_MINIMAL_DEBUG
	printf(" [monitor] monitor_init has finished!\n");
#endif	
	
	while(1)
	{
#ifdef MONITOR_THREAD_OVERHEAD
	gettimeofday(&wait_begTick, NULL);
#endif
		while(!is_signature_queue_full);

#ifdef MONITOR_THREAD_OVERHEAD
	gettimeofday(&wait_endTick, NULL);
	printf(" [mon] Wait Time: %ld, ", (wait_endTick.tv_sec - wait_begTick.tv_sec) * 1000 + (wait_endTick.tv_usec - wait_begTick.tv_usec) / 1000);
	total_wait_time += ((wait_endTick.tv_sec - wait_begTick.tv_sec) * 1000 + (wait_endTick.tv_usec - wait_begTick.tv_usec) / 1000);
	printf(" [mon] Total Wait Time: %ld\n", total_wait_time);
#endif

		monitor_routine();

		/* overhead -> How about just EXIT ? */
		/*
		if(is_monitor_finished == 1)
		{
			break;
		}
		*/
	}
	
}


//////////////////////////////////////////////////////////////////////
/* 							init_monitor		 					*/
//////////////////////////////////////////////////////////////////////


/* target */
void init_monitor()
{
	
	pthread_create(&thread, NULL, initialize_monitor, NULL);
	
	while(!is_monitor_initialized);
}


/* target */
void enqueue_signature(int i)
{
#ifdef ACES_DEBUG
	printf(" [target][%dth] enqueue: 0x%x\n",current_queue_size ,i);
#endif
	signature_queue[current_queue_size] = i;
	current_queue_size++;
		
	if(current_queue_size == SIGNATURE_QUEUE_SIZE)
	{
	
		while(!is_monitor_process_finish);
		is_monitor_process_finish = 0;
		
		is_signature_queue_full = 1;

		while(!is_queue_copy_finish);
		
		is_signature_queue_full = 0;
		is_queue_copy_finish = 0;
	
		current_queue_size = 0;
		
		current_queue_size = 0;
	}
}

void enqueue_signature_with_call(int i)
{
#ifdef ACES_DEBUG
	printf(" [target][%dth] enqueue: 0x%x\n",current_queue_size ,i);
#endif
	signature_queue[current_queue_size] = i;
	current_queue_size++;
	
	/* app_returnPointStack */
	// i: node_id
	push(p_returnPointStack, i);
		
	if(current_queue_size == SIGNATURE_QUEUE_SIZE)
	{
	
		while(!is_monitor_process_finish);
		is_monitor_process_finish = 0;
		
		is_signature_queue_full = 1;

		while(!is_queue_copy_finish);
		
		is_signature_queue_full = 0;
		is_queue_copy_finish = 0;
	
		current_queue_size = 0;
		
		current_queue_size = 0;
	}
}



/* monitor: dequeue and verification */


/* dequeue */
unsigned int dequeue_signature(unsigned int* copied_signature_queue, unsigned int deque_pointer)
{
	unsigned int return_node_id;
	return_node_id = copied_signature_queue[deque_pointer];
	
#ifdef ACES_DEBUG
	printf(" [monitor] dequeue: 0x%x\n", return_node_id);
#endif
	return return_node_id;
}



/* signature verification */
/*
	1. if_has_connection_move
	2. search(aces_list)
*/   
void signature_verification(
		unsigned int node_id, 
		BBNode** currentBasicBlock) 
{

	BBNode* t_BBNode = (*currentBasicBlock);

	if(if_has_connection_move(
				p_integrated_CFG, 
				node_id, 
				currentBasicBlock) == true)
	{

#ifdef ACES_DEBUG
		printf(" [monitor] verification: node(0x%x) to node(0x%x) is OK!\n", t_BBNode->node_id, node_id);
#endif
		return;
	}
	
	else
	{
		printf(" [Monitor] Found Error!\n");
		exit(-1);
		//currentBasicBlock = search(p_integrated_CFG, 0x00000001);

		return;
	}
}

/* if_has_connection_move */
/*
   1.search_and_change_currentBB
*/   

bool if_has_connection_move(
		INTEGRATED_CFG* p_integrated_CFG, 
		unsigned int node_id, 
		BBNode** currentBasicBlock)
{

	/*
		connectionType

		- 0: RETURN
		- 1: BRANCH
		- 2: COND_BRANCH
		- 3: CALL
		- 4: MAIN RETURN

	*/

	/* RETURN */
	if((*currentBasicBlock)->connectionType == 0)
	{
#ifdef ACES_DEBUG
		printf("  -BasicBlockType: RETURN(0), input_node_id: 0x%x, current_node_id: 0x%x, connectionArr[0]: 0x%x\n", node_id, (*currentBasicBlock)->node_id, (*currentBasicBlock)->connectionArr[0]);
#endif
		//unsigned int returnPoint = 	pop(p_returnPointStack);

		/*
			RETURN Basicblock could have many connectionNode.
		*/

		unsigned int returnPoint = pop(p_returnPointStack);

		if(returnPoint != node_id)
		{
			return false;
		}

		else
		{
			search_and_change_currentBB(
					node_id, 
					currentBasicBlock);
		}
		/*

		int connectionNum = (*currentBasicBlock)->connectionNum;
		int isConnected = 0;
		for(int i =0; i < connectionNum; i++)
		{
			if((*currentBasicBlock)->connectionArr[i] == node_id)
			{	
				isConnected = 1;
			}
		}

		if(isConnected != 1)
		{
			return false;
		}


		else
		{
			search_and_change_currentBB(
					node_id, 
					currentBasicBlock);
		}

		*/
	}

	/* CALL */
	else if((*currentBasicBlock)->connectionType == 3)
	{
#ifdef ACES_DEBUG
		printf("  -BasicBlockType: CALL(3), input_node_id: 0x%x, current_node_id: 0x%x, connectionArr[0]: 0x%x\n", node_id, (*currentBasicBlock)->node_id, (*currentBasicBlock)->connectionArr[0]);
#endif
		/*
			CALL has 2 connections
			connectionArr[0] is the node to jump (entry block of callee function)
			connectionArr[1...] is the node to return (next basicblock after callee function returns)

		*/
		if((*currentBasicBlock)->connectionArr[0] != node_id)
		{
			return false;
		}
		
		else
		{
			push(p_returnPointStack, (*currentBasicBlock)->connectionArr[1]);

			search_and_change_currentBB(
					node_id, 
					currentBasicBlock);
		}
	}

	/* BRANCH */
	else if((*currentBasicBlock)->connectionType == 1)
	{

#ifdef ACES_DEBUG
		printf("  -BasicBlockType: BRANCH(1), input_node_id: 0x%x, current_node_id: 0x%x, connectionArr[0]: 0x%x\n", node_id, (*currentBasicBlock)->node_id, (*currentBasicBlock)->connectionArr[0]);
#endif
		if((*currentBasicBlock)->connectionArr[0] != node_id)
		{
			return false;
		}
		else
		{
			search_and_change_currentBB(
					node_id, 
					currentBasicBlock);
		}
	}
	
	/* COND_BRANCH */
	else if((*currentBasicBlock)->connectionType == 2)
	{
#ifdef ACES_DEBUG
		printf("  -BasicBlockType: COND_BRANCH(2), input_node_id: 0x%x, current_node_id: 0x%x, connectionArr[0]: 0x%x\n", node_id, (*currentBasicBlock)->node_id, (*currentBasicBlock)->connectionArr[0]);
		printf("  -BasicBlockType: COND_BRANCH(2), input_node_id: 0x%x, current_node_id: 0x%x, connectionArr[1]: 0x%x\n", node_id, (*currentBasicBlock)->node_id, (*currentBasicBlock)->connectionArr[1]);
#endif
		if((*currentBasicBlock)->connectionArr[0] != node_id)
		{
			if((*currentBasicBlock)->connectionArr[1] != node_id)
			{
				return false;
			}
			
			else
			{
				search_and_change_currentBB(
						node_id, 
						currentBasicBlock);
			}
		}

		else
		{
			search_and_change_currentBB(
					node_id, 
					currentBasicBlock);
		}
	}

	/* EXIT */

	else if((*currentBasicBlock)->connectionType == 4)
	{
		
		is_signature_queue_full = 1;
		printf(" [monitor] monitor has finished, no error is detected \n");
		exit(0);
		/*
		   How about just exit?
		is_monitor_finished = 1;

		*/
		
		return true;
	}
	

	else
	{
		printf("  [ERROR] undefined connectionType \n");
		
		return false;
	}
	return true;

}

/* seach_and_change_currentBB */
bool search_and_change_currentBB(
		unsigned int node_id, 
		BBNode** currentBasicBlock)
{

#ifdef ACES_LIST
	BBNode* next_bb = search(p_integrated_CFG, node_id);	
#endif

#ifdef ACES_AVLTREE
	BBNode* next_bb = search(p_integrated_CFG->root, node_id);	
#endif

#ifdef ACES_HASH
	BBNode* next_bb = search(p_integrated_CFG, node_id);
#endif

	*currentBasicBlock = next_bb;


	/* MAIN RETURN */

/*	if((*currentBasicBlock)->connectionType == 4)
	{
		BBNode* t_bb = (*currentBasicBlock);
		(*currentBasicBlock) = search(p_integrated_CFG, 0x00000001);
*/	
		/*	
		delete_stack(p_returnPointStack);
		InitStack(p_returnPointStack);
		*/
//	}

	return true;
}


/////////////////////////////////////////////////////////////////////////////////////////////////////



void add_basicblock(
	INTEGRATED_CFG* p_integrated_CFG,
	unsigned int node_id,
	unsigned int connectionType,
	unsigned int connectionNum,
	unsigned int connection_node_id)
{


#ifdef ACES_LIST
	BBNode* p_bb = search(p_integrated_CFG, node_id);
#endif

#ifdef ACES_AVLTREE
	BBNode* p_bb = search(p_integrated_CFG->root, node_id);
#endif

#ifdef ACES_HASH
	BBNode* p_bb = search(p_integrated_CFG, node_id);
#endif	

	/* if first input, */
	if(p_bb == NULL)
	{
		p_bb = (BBNode* )malloc(sizeof(BBNode));
		p_bb->node_id = node_id;
		p_bb->connectionType = connectionType;
		p_bb->connectionNum = connectionNum;
		p_bb->connectionArr = (unsigned int*)malloc(sizeof(unsigned int) * connectionNum);
		p_bb->currentNum = 0;
		p_bb->connectionArr[p_bb->currentNum] = connection_node_id;
		p_bb->currentNum++;
	
#ifdef ACES_LIST
//		printf("list\n");
		insert(p_integrated_CFG, p_bb);
#endif

#ifdef ACES_AVLTREE
//		printf("avltree\n");
		p_integrated_CFG->root = insert(p_integrated_CFG->root, p_bb);
#endif

#ifdef ACES_HASH
		insert(p_integrated_CFG, p_bb);
#endif
	

	}

	else
	{
		p_bb->connectionArr[p_bb->currentNum] = connection_node_id;
		p_bb->currentNum++;
	}
	
}


/////////////////////////////////////////////////////////////////////////////////////////////////////


