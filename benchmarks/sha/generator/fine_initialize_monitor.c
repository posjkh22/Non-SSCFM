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
	add_basicblock(p_integrated_CFG, 0x20001, 2, 0x2, 0x20002);
	add_basicblock(p_integrated_CFG, 0x20001, 2, 0x2, 0x20003);
	add_basicblock(p_integrated_CFG, 0x20002, 1, 0x1, 0x20003);
	add_basicblock(p_integrated_CFG, 0x20003, 1, 0x1, 0x20004);
	add_basicblock(p_integrated_CFG, 0x20004, 2, 0x2, 0x20005);
	add_basicblock(p_integrated_CFG, 0x20004, 2, 0x2, 0x20009);
	add_basicblock(p_integrated_CFG, 0x20005, 1, 0x1, 0x20006);
	add_basicblock(p_integrated_CFG, 0x20006, 3, 0x2, 0x40001);
	add_basicblock(p_integrated_CFG, 0x20006, 3, 0x2, 0x20007);
	add_basicblock(p_integrated_CFG, 0x20007, 3, 0x2, 0x50001);
	add_basicblock(p_integrated_CFG, 0x20007, 3, 0x2, 0x20008);
	add_basicblock(p_integrated_CFG, 0x20008, 1, 0x1, 0x20004);
	add_basicblock(p_integrated_CFG, 0x20009, 1, 0x1, 0x2000a);
	add_basicblock(p_integrated_CFG, 0x2000a, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x2000a, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x40001, 1, 0x1, 0x40002);
	add_basicblock(p_integrated_CFG, 0x40002, 2, 0x2, 0x40003);
	add_basicblock(p_integrated_CFG, 0x40002, 2, 0x2, 0x40005);
	add_basicblock(p_integrated_CFG, 0x40003, 1, 0x1, 0x40004);
	add_basicblock(p_integrated_CFG, 0x40004, 1, 0x1, 0x40002);
	add_basicblock(p_integrated_CFG, 0x40005, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x40005, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x50001, 1, 0x1, 0x50002);
	add_basicblock(p_integrated_CFG, 0x50002, 2, 0x2, 0x50003);
	add_basicblock(p_integrated_CFG, 0x50002, 2, 0x2, 0x50005);
	add_basicblock(p_integrated_CFG, 0x50003, 1, 0x1, 0x50004);
	add_basicblock(p_integrated_CFG, 0x50004, 1, 0x1, 0x50002);
	add_basicblock(p_integrated_CFG, 0x50005, 1, 0x1, 0x50006);
	add_basicblock(p_integrated_CFG, 0x50006, 2, 0x2, 0x50007);
	add_basicblock(p_integrated_CFG, 0x50006, 2, 0x2, 0x50009);
	add_basicblock(p_integrated_CFG, 0x50007, 1, 0x1, 0x50008);
	add_basicblock(p_integrated_CFG, 0x50008, 1, 0x1, 0x50006);
	add_basicblock(p_integrated_CFG, 0x50009, 1, 0x1, 0x5000a);
	add_basicblock(p_integrated_CFG, 0x5000a, 2, 0x2, 0x5000b);
	add_basicblock(p_integrated_CFG, 0x5000a, 2, 0x2, 0x5000d);
	add_basicblock(p_integrated_CFG, 0x5000b, 1, 0x1, 0x5000c);
	add_basicblock(p_integrated_CFG, 0x5000c, 1, 0x1, 0x5000a);
	add_basicblock(p_integrated_CFG, 0x5000d, 1, 0x1, 0x5000e);
	add_basicblock(p_integrated_CFG, 0x5000e, 2, 0x2, 0x5000f);
	add_basicblock(p_integrated_CFG, 0x5000e, 2, 0x2, 0x50011);
	add_basicblock(p_integrated_CFG, 0x5000f, 1, 0x1, 0x50010);
	add_basicblock(p_integrated_CFG, 0x50010, 1, 0x1, 0x5000e);
	add_basicblock(p_integrated_CFG, 0x50011, 1, 0x1, 0x50012);
	add_basicblock(p_integrated_CFG, 0x50012, 2, 0x2, 0x50013);
	add_basicblock(p_integrated_CFG, 0x50012, 2, 0x2, 0x50015);
	add_basicblock(p_integrated_CFG, 0x50013, 1, 0x1, 0x50014);
	add_basicblock(p_integrated_CFG, 0x50014, 1, 0x1, 0x50012);
	add_basicblock(p_integrated_CFG, 0x50015, 1, 0x1, 0x50016);
	add_basicblock(p_integrated_CFG, 0x50016, 2, 0x2, 0x50017);
	add_basicblock(p_integrated_CFG, 0x50016, 2, 0x2, 0x50019);
	add_basicblock(p_integrated_CFG, 0x50017, 1, 0x1, 0x50018);
	add_basicblock(p_integrated_CFG, 0x50018, 1, 0x1, 0x50016);
	add_basicblock(p_integrated_CFG, 0x50019, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x50019, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x60001, 2, 0x2, 0x60002);
	add_basicblock(p_integrated_CFG, 0x60001, 2, 0x2, 0x60006);
	add_basicblock(p_integrated_CFG, 0x60002, 1, 0x1, 0x60003);
	add_basicblock(p_integrated_CFG, 0x60003, 3, 0x2, 0x40001);
	add_basicblock(p_integrated_CFG, 0x60003, 3, 0x2, 0x60004);
	add_basicblock(p_integrated_CFG, 0x60004, 3, 0x2, 0x50001);
	add_basicblock(p_integrated_CFG, 0x60004, 3, 0x2, 0x60005);
	add_basicblock(p_integrated_CFG, 0x60005, 1, 0x1, 0x60007);
	add_basicblock(p_integrated_CFG, 0x60006, 1, 0x1, 0x60007);
	add_basicblock(p_integrated_CFG, 0x60007, 3, 0x2, 0x40001);
	add_basicblock(p_integrated_CFG, 0x60007, 3, 0x2, 0x60008);
	add_basicblock(p_integrated_CFG, 0x60008, 3, 0x2, 0x50001);
	add_basicblock(p_integrated_CFG, 0x60008, 3, 0x2, 0x60009);
	add_basicblock(p_integrated_CFG, 0x60009, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x60009, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x80001, 3, 0x2, 0x10001);
	add_basicblock(p_integrated_CFG, 0x80001, 3, 0x2, 0x80002);
	add_basicblock(p_integrated_CFG, 0x80002, 1, 0x1, 0x80003);
	add_basicblock(p_integrated_CFG, 0x80003, 2, 0x2, 0x80004);
	add_basicblock(p_integrated_CFG, 0x80003, 2, 0x2, 0x80005);
	add_basicblock(p_integrated_CFG, 0x80004, 3, 0x2, 0x20001);
	add_basicblock(p_integrated_CFG, 0x80004, 3, 0x2, 0x80002);
	add_basicblock(p_integrated_CFG, 0x80005, 3, 0x2, 0x60001);
	add_basicblock(p_integrated_CFG, 0x80005, 3, 0x2, 0x80006);
	add_basicblock(p_integrated_CFG, 0x80006, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x80006, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0xa0001, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0xa0001, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0xb0001, 1, 0x1, 0xb0002);
	add_basicblock(p_integrated_CFG, 0xb0002, 1, 0x1, 0xb0003);
	add_basicblock(p_integrated_CFG, 0xb0003, 3, 0x2, 0x80001);
	add_basicblock(p_integrated_CFG, 0xb0003, 3, 0x2, 0xb0004);
	add_basicblock(p_integrated_CFG, 0xb0004, 3, 0x2, 0xa0001);
	add_basicblock(p_integrated_CFG, 0xb0004, 3, 0x2, 0xb0005);
	add_basicblock(p_integrated_CFG, 0xb0005, 1, 0x1, 0xb0006);
	add_basicblock(p_integrated_CFG, 0xb0006, 1, 0x1, 0xb0007);
	add_basicblock(p_integrated_CFG, 0xb0007, 1, 0x1, 0xb0008);
	add_basicblock(p_integrated_CFG, 0xb0008, 1, 0x1, 0xb0009);
	add_basicblock(p_integrated_CFG, 0xb0009, 4, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0xb0009, 4, 0x2, 0x0);

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
	p_bb_init->connectionArr[0] = 0xb0001;
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

