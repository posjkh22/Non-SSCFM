#include <stdlib.h>
#include "fine_initialize_monitor.h" 

#ifdef ACES_LIST
#include "list/aces_list.h" 

#endif
#ifdef ACES_AVLTREE
#include "tree/aces_avltree.h" 

#endif
#ifdef ACES_HASH
#include "hash/aces_hash.h" 

#endif
struct BBNode;
#ifdef ACES_LIST
struct list;

typedef list INTEGRATED_CFG;
#endif

#ifdef ACES_AVLTREE
struct avl_tree;

typedef avl_tree INTEGRATED_CFG;
#endif

#ifdef ACES_HASH
struct Hash;

typedef Hash INTEGRATED_CFG;
#endif

extern INTEGRATED_CFG* p_integrated_CFG;
extern unsigned int leverage_signature;

INTEGRATED_CFG* generate_path_tree();
void add_basicblock(INTEGRATED_CFG* ,unsigned int, unsigned int, unsigned int, unsigned int);
void initialize_monitor_routine(unsigned int node_id)
{
	p_integrated_CFG = generate_path_tree();
	add_basicblock(p_integrated_CFG, 0x10001, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x10001, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x20001, 1, 0x1, 0x20002);
	add_basicblock(p_integrated_CFG, 0x20002, 2, 0x2, 0x20003);
	add_basicblock(p_integrated_CFG, 0x20002, 2, 0x2, 0x20005);
	add_basicblock(p_integrated_CFG, 0x20003, 1, 0x1, 0x20004);
	add_basicblock(p_integrated_CFG, 0x20004, 1, 0x1, 0x2000f);
	add_basicblock(p_integrated_CFG, 0x20005, 1, 0x1, 0x20006);
	add_basicblock(p_integrated_CFG, 0x20006, 1, 0x1, 0x20007);
	add_basicblock(p_integrated_CFG, 0x20007, 2, 0x2, 0x20008);
	add_basicblock(p_integrated_CFG, 0x20007, 2, 0x2, 0x20009);
	add_basicblock(p_integrated_CFG, 0x20008, 1, 0x1, 0x20006);
	add_basicblock(p_integrated_CFG, 0x20009, 1, 0x1, 0x2000a);
	add_basicblock(p_integrated_CFG, 0x2000a, 2, 0x2, 0x2000b);
	add_basicblock(p_integrated_CFG, 0x2000a, 2, 0x2, 0x2000d);
	add_basicblock(p_integrated_CFG, 0x2000b, 1, 0x1, 0x2000c);
	add_basicblock(p_integrated_CFG, 0x2000c, 1, 0x1, 0x2000d);
	add_basicblock(p_integrated_CFG, 0x2000d, 1, 0x1, 0x2000e);
	add_basicblock(p_integrated_CFG, 0x2000e, 1, 0x1, 0x2000f);
	add_basicblock(p_integrated_CFG, 0x2000f, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x2000f, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x80001, 1, 0x1, 0x80002);
	add_basicblock(p_integrated_CFG, 0x80002, 2, 0x2, 0x80003);
	add_basicblock(p_integrated_CFG, 0x80002, 2, 0x2, 0x80005);
	add_basicblock(p_integrated_CFG, 0x80003, 1, 0x1, 0x80004);
	add_basicblock(p_integrated_CFG, 0x80004, 1, 0x1, 0x80002);
	add_basicblock(p_integrated_CFG, 0x80005, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x80005, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x90001, 1, 0x1, 0x90002);
	add_basicblock(p_integrated_CFG, 0x90002, 2, 0x2, 0x90003);
	add_basicblock(p_integrated_CFG, 0x90002, 2, 0x2, 0x90005);
	add_basicblock(p_integrated_CFG, 0x90003, 3, 0x2, 0x20001);
	add_basicblock(p_integrated_CFG, 0x90003, 3, 0x2, 0x90004);
	add_basicblock(p_integrated_CFG, 0x90004, 1, 0x1, 0x90002);
	add_basicblock(p_integrated_CFG, 0x90005, 1, 0x1, 0x90006);
	add_basicblock(p_integrated_CFG, 0x90006, 1, 0x1, 0x90007);
	add_basicblock(p_integrated_CFG, 0x90007, 1, 0x1, 0x90008);
	add_basicblock(p_integrated_CFG, 0x90008, 4, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x90008, 4, 0x2, 0x0);

	return;
}

INTEGRATED_CFG* generate_path_tree()
{
	p_integrated_CFG = (INTEGRATED_CFG* )malloc(sizeof(INTEGRATED_CFG));
#ifdef ACES_LIST
	init(p_integrated_CFG);
#endif

#ifdef ACES_AVLTREE
	init(p_integrated_CFG);
#endif

#ifdef ACES_HASH
	init(p_integrated_CFG, 100000);
#endif

	BBNode* p_bb_init = (BBNode*)malloc(sizeof(BBNode));
	p_bb_init->node_id = leverage_signature;
	p_bb_init->connectionType = 1;
	p_bb_init->connectionNum = 1;
	p_bb_init->connectionArr = (unsigned int*)malloc(sizeof(unsigned int) * p_bb_init->connectionNum);
	p_bb_init->connectionArr[0] = 0x90001;
#ifdef ACES_LIST
	insert(p_integrated_CFG, p_bb_init);
#endif

#ifdef ACES_AVLTREE
	p_integrated_CFG->root = insert(p_integrated_CFG->root, p_bb_init);
#endif

#ifdef ACES_HASH
	insert(p_integrated_CFG, p_bb_init);
#endif

	return p_integrated_CFG;
}

