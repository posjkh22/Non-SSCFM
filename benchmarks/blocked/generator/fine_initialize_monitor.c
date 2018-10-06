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
	add_basicblock(p_integrated_CFG, 0x10001, 1, 0x1, 0x10002);
	add_basicblock(p_integrated_CFG, 0x10002, 2, 0x2, 0x10003);
	add_basicblock(p_integrated_CFG, 0x10002, 2, 0x2, 0x10005);
	add_basicblock(p_integrated_CFG, 0x10003, 1, 0x1, 0x10004);
	add_basicblock(p_integrated_CFG, 0x10004, 1, 0x1, 0x10002);
	add_basicblock(p_integrated_CFG, 0x10005, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x10005, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x20001, 1, 0x1, 0x20002);
	add_basicblock(p_integrated_CFG, 0x20002, 2, 0x2, 0x20003);
	add_basicblock(p_integrated_CFG, 0x20002, 2, 0x2, 0x20005);
	add_basicblock(p_integrated_CFG, 0x20003, 1, 0x1, 0x20004);
	add_basicblock(p_integrated_CFG, 0x20004, 1, 0x1, 0x20002);
	add_basicblock(p_integrated_CFG, 0x20005, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x20005, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x30001, 1, 0x1, 0x30002);
	add_basicblock(p_integrated_CFG, 0x30002, 1, 0x1, 0x30003);
	add_basicblock(p_integrated_CFG, 0x30003, 2, 0x2, 0x30004);
	add_basicblock(p_integrated_CFG, 0x30003, 2, 0x2, 0x30016);
	add_basicblock(p_integrated_CFG, 0x30004, 3, 0x2, 0x10001);
	add_basicblock(p_integrated_CFG, 0x30004, 3, 0x2, 0x30005);
	add_basicblock(p_integrated_CFG, 0x30005, 1, 0x1, 0x30006);
	add_basicblock(p_integrated_CFG, 0x30006, 3, 0x2, 0x20001);
	add_basicblock(p_integrated_CFG, 0x30006, 3, 0x2, 0x30007);
	add_basicblock(p_integrated_CFG, 0x30007, 1, 0x1, 0x30008);
	add_basicblock(p_integrated_CFG, 0x30008, 2, 0x2, 0x30009);
	add_basicblock(p_integrated_CFG, 0x30008, 2, 0x2, 0x30013);
	add_basicblock(p_integrated_CFG, 0x30009, 3, 0x2, 0x20001);
	add_basicblock(p_integrated_CFG, 0x30009, 3, 0x2, 0x3000a);
	add_basicblock(p_integrated_CFG, 0x3000a, 1, 0x1, 0x3000b);
	add_basicblock(p_integrated_CFG, 0x3000b, 3, 0x2, 0x10001);
	add_basicblock(p_integrated_CFG, 0x3000b, 3, 0x2, 0x3000c);
	add_basicblock(p_integrated_CFG, 0x3000c, 1, 0x1, 0x3000d);
	add_basicblock(p_integrated_CFG, 0x3000d, 3, 0x2, 0x20001);
	add_basicblock(p_integrated_CFG, 0x3000d, 3, 0x2, 0x3000e);
	add_basicblock(p_integrated_CFG, 0x3000e, 1, 0x1, 0x3000f);
	add_basicblock(p_integrated_CFG, 0x3000f, 3, 0x2, 0x10001);
	add_basicblock(p_integrated_CFG, 0x3000f, 3, 0x2, 0x30010);
	add_basicblock(p_integrated_CFG, 0x30010, 1, 0x1, 0x30011);
	add_basicblock(p_integrated_CFG, 0x30011, 3, 0x2, 0x20001);
	add_basicblock(p_integrated_CFG, 0x30011, 3, 0x2, 0x30012);
	add_basicblock(p_integrated_CFG, 0x30012, 1, 0x1, 0x30008);
	add_basicblock(p_integrated_CFG, 0x30013, 3, 0x2, 0x10001);
	add_basicblock(p_integrated_CFG, 0x30013, 3, 0x2, 0x30014);
	add_basicblock(p_integrated_CFG, 0x30014, 1, 0x1, 0x30015);
	add_basicblock(p_integrated_CFG, 0x30015, 1, 0x1, 0x30003);
	add_basicblock(p_integrated_CFG, 0x30016, 1, 0x1, 0x30017);
	add_basicblock(p_integrated_CFG, 0x30017, 1, 0x1, 0x30018);
	add_basicblock(p_integrated_CFG, 0x30018, 1, 0x1, 0x30019);
	add_basicblock(p_integrated_CFG, 0x30019, 4, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x30019, 4, 0x2, 0x0);

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
	p_bb_init->connectionArr[0] = 0x30001;
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

