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
	add_basicblock(p_integrated_CFG, 0x10001, 2, 0x2, 0x10002);
	add_basicblock(p_integrated_CFG, 0x10001, 2, 0x2, 0x10003);
	add_basicblock(p_integrated_CFG, 0x10002, 3, 0x2, 0x10001);
	add_basicblock(p_integrated_CFG, 0x10002, 3, 0x2, 0x10003);
	add_basicblock(p_integrated_CFG, 0x10003, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x10003, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x20001, 1, 0x1, 0x20002);
	add_basicblock(p_integrated_CFG, 0x20002, 2, 0x2, 0x20004);
	add_basicblock(p_integrated_CFG, 0x20002, 2, 0x2, 0x20003);
	add_basicblock(p_integrated_CFG, 0x20003, 1, 0x1, 0x20004);
	add_basicblock(p_integrated_CFG, 0x20004, 2, 0x2, 0x20006);
	add_basicblock(p_integrated_CFG, 0x20004, 2, 0x2, 0x20005);
	add_basicblock(p_integrated_CFG, 0x20005, 1, 0x1, 0x2000a);
	add_basicblock(p_integrated_CFG, 0x20006, 1, 0x1, 0x20007);
	add_basicblock(p_integrated_CFG, 0x20007, 2, 0x2, 0x20008);
	add_basicblock(p_integrated_CFG, 0x20007, 2, 0x2, 0x20009);
	add_basicblock(p_integrated_CFG, 0x20008, 1, 0x1, 0x20007);
	add_basicblock(p_integrated_CFG, 0x20009, 1, 0x1, 0x2000a);
	add_basicblock(p_integrated_CFG, 0x2000a, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x2000a, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x50001, 2, 0x2, 0x50002);
	add_basicblock(p_integrated_CFG, 0x50001, 2, 0x2, 0x50004);
	add_basicblock(p_integrated_CFG, 0x50002, 1, 0x1, 0x50003);
	add_basicblock(p_integrated_CFG, 0x50003, 1, 0x1, 0x50004);
	add_basicblock(p_integrated_CFG, 0x50004, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x50004, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x70001, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x70001, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x80001, 1, 0x1, 0x80002);
	add_basicblock(p_integrated_CFG, 0x80002, 2, 0x2, 0x80003);
	add_basicblock(p_integrated_CFG, 0x80002, 2, 0x2, 0x80005);
	add_basicblock(p_integrated_CFG, 0x80003, 1, 0x1, 0x80004);
	add_basicblock(p_integrated_CFG, 0x80004, 1, 0x1, 0x80002);
	add_basicblock(p_integrated_CFG, 0x80005, 2, 0x2, 0x80006);
	add_basicblock(p_integrated_CFG, 0x80005, 2, 0x2, 0x80007);
	add_basicblock(p_integrated_CFG, 0x80006, 1, 0x1, 0x80016);
	add_basicblock(p_integrated_CFG, 0x80007, 3, 0x2, 0x20001);
	add_basicblock(p_integrated_CFG, 0x80007, 3, 0x2, 0x80008);
	add_basicblock(p_integrated_CFG, 0x80008, 3, 0x2, 0x70001);
	add_basicblock(p_integrated_CFG, 0x80008, 3, 0x2, 0x80009);
	add_basicblock(p_integrated_CFG, 0x80009, 2, 0x2, 0x8000a);
	add_basicblock(p_integrated_CFG, 0x80009, 2, 0x2, 0x80015);
	add_basicblock(p_integrated_CFG, 0x8000a, 3, 0x2, 0x50001);
	add_basicblock(p_integrated_CFG, 0x8000a, 3, 0x2, 0x8000b);
	add_basicblock(p_integrated_CFG, 0x8000b, 1, 0x1, 0x8000c);
	add_basicblock(p_integrated_CFG, 0x8000c, 2, 0x2, 0x8000d);
	add_basicblock(p_integrated_CFG, 0x8000c, 2, 0x2, 0x80014);
	add_basicblock(p_integrated_CFG, 0x8000d, 2, 0x2, 0x8000e);
	add_basicblock(p_integrated_CFG, 0x8000d, 2, 0x2, 0x80012);
	add_basicblock(p_integrated_CFG, 0x8000e, 2, 0x2, 0x80010);
	add_basicblock(p_integrated_CFG, 0x8000e, 2, 0x2, 0x8000f);
	add_basicblock(p_integrated_CFG, 0x8000f, 2, 0x2, 0x80010);
	add_basicblock(p_integrated_CFG, 0x8000f, 2, 0x2, 0x80011);
	add_basicblock(p_integrated_CFG, 0x80010, 3, 0x2, 0x20001);
	add_basicblock(p_integrated_CFG, 0x80010, 3, 0x2, 0x80011);
	add_basicblock(p_integrated_CFG, 0x80011, 1, 0x1, 0x80012);
	add_basicblock(p_integrated_CFG, 0x80012, 1, 0x1, 0x80013);
	add_basicblock(p_integrated_CFG, 0x80013, 1, 0x1, 0x8000c);
	add_basicblock(p_integrated_CFG, 0x80014, 1, 0x1, 0x80008);
	add_basicblock(p_integrated_CFG, 0x80015, 1, 0x1, 0x80016);
	add_basicblock(p_integrated_CFG, 0x80016, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x80016, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0xa0001, 1, 0x1, 0xa0002);
	add_basicblock(p_integrated_CFG, 0xa0002, 1, 0x1, 0xa0003);
	add_basicblock(p_integrated_CFG, 0xa0003, 1, 0x1, 0xa0004);
	add_basicblock(p_integrated_CFG, 0xa0004, 2, 0x2, 0xa0005);
	add_basicblock(p_integrated_CFG, 0xa0004, 2, 0x2, 0xa000c);
	add_basicblock(p_integrated_CFG, 0xa0005, 1, 0x1, 0xa0006);
	add_basicblock(p_integrated_CFG, 0xa0006, 2, 0x2, 0xa0007);
	add_basicblock(p_integrated_CFG, 0xa0006, 2, 0x2, 0xa000a);
	add_basicblock(p_integrated_CFG, 0xa0007, 1, 0x1, 0xa0008);
	add_basicblock(p_integrated_CFG, 0xa0008, 1, 0x1, 0xa0009);
	add_basicblock(p_integrated_CFG, 0xa0009, 1, 0x1, 0xa0006);
	add_basicblock(p_integrated_CFG, 0xa000a, 1, 0x1, 0xa000b);
	add_basicblock(p_integrated_CFG, 0xa000b, 1, 0x1, 0xa0004);
	add_basicblock(p_integrated_CFG, 0xa000c, 1, 0x1, 0xa000d);
	add_basicblock(p_integrated_CFG, 0xa000d, 2, 0x2, 0xa000e);
	add_basicblock(p_integrated_CFG, 0xa000d, 2, 0x2, 0xa0010);
	add_basicblock(p_integrated_CFG, 0xa000e, 3, 0x2, 0x80001);
	add_basicblock(p_integrated_CFG, 0xa000e, 3, 0x2, 0xa000f);
	add_basicblock(p_integrated_CFG, 0xa000f, 1, 0x1, 0xa000d);
	add_basicblock(p_integrated_CFG, 0xa0010, 1, 0x1, 0xa0011);
	add_basicblock(p_integrated_CFG, 0xa0011, 1, 0x1, 0xa0012);
	add_basicblock(p_integrated_CFG, 0xa0012, 1, 0x1, 0xa0013);
	add_basicblock(p_integrated_CFG, 0xa0013, 4, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0xa0013, 4, 0x2, 0x0);

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
	p_bb_init->connectionArr[0] = 0xa0001;
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

