
#include <stdlib.h>
#include "aces_list.h" 

#define TEST_CASE 570

struct BBNode;
struct list;
typedef list INTEGRATED_CFG;

INTEGRATED_CFG* generate_path_tree();
void add_basicblock(INTEGRATED_CFG* ,unsigned int, unsigned int, unsigned int, unsigned int);
void generate_return_point_stack();

extern INTEGRATED_CFG* p_integrated_CFG;
extern unsigned int leverage_signature;


void initialize_monitor_routine(unsigned int node_id)
{
	generate_return_point_stack();
	p_integrated_CFG = generate_path_tree();

	for(int i=0; i< TEST_CASE; i++)
	{
		add_basicblock(p_integrated_CFG, i, 1, 1, i+1);
	}

	return;
}


INTEGRATED_CFG* generate_path_tree()
{
	p_integrated_CFG = (INTEGRATED_CFG* )malloc(sizeof(INTEGRATED_CFG));
	init(p_integrated_CFG);
	
	BBNode* p_bb_init = (BBNode*)malloc(sizeof(BBNode));
	p_bb_init->node_id = leverage_signature;
	p_bb_init->connectionType = 1;
	p_bb_init->connectionNum = 1;
	p_bb_init->connectionArr = (unsigned int*)malloc(sizeof(unsigned int) * p_bb_init->connectionNum);
	p_bb_init->connectionArr[0] = 0;

	insert(p_integrated_CFG, p_bb_init);

	return p_integrated_CFG;
}









