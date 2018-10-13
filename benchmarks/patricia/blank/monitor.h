
#ifndef ACES_MONITOR
#define ACES_MONITOR

typedef int bool;


#include "IPCFG_TYPE.h"
//#define ACES_AVLTREE
//#define ACES_LIST


#ifdef ACES_LIST
typedef list			INTEGRATED_CFG;
#endif

#ifdef ACES_AVLTREE
typedef avl_tree 		INTEGRATED_CFG;
#endif

#ifdef ACES_HASH
typedef Hash			INTEGRATED_CFG;
#endif


typedef Stack			ReturnPointStack;

void signature_verification(unsigned int node_id, BBNode** currentBasicBlock, ReturnPointStack*);
void initialize_monitor_routine(unsigned int node_id);
bool if_has_connection_move(INTEGRATED_CFG* p_integrated_CFG, unsigned int node_id, BBNode** currentBasicBlock, ReturnPointStack*);
bool search_and_change_currentBB(unsigned int node_id, BBNode** currentBasicBlock);
unsigned int dequeue_signature(unsigned int* copied_signature_queue, unsigned int deque_pointer);


#endif
