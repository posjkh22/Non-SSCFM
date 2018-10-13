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
	add_basicblock(p_integrated_CFG, 0x20001, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x20001, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x30001, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x30001, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x40001, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x40001, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x50001, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x50001, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x60001, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x60001, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x70001, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x70001, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x80001, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x80001, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x90001, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x90001, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0xa0001, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0xa0001, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0xb0001, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0xb0001, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0xc0001, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0xc0001, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0xd0001, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0xd0001, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0xe0001, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0xe0001, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0xf0001, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0xf0001, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x100001, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x100001, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x110001, 3, 0x2, 0x30001);
	add_basicblock(p_integrated_CFG, 0x110001, 3, 0x2, 0x110002);
	add_basicblock(p_integrated_CFG, 0x110002, 3, 0x2, 0x20001);
	add_basicblock(p_integrated_CFG, 0x110002, 3, 0x2, 0x110003);
	add_basicblock(p_integrated_CFG, 0x110003, 3, 0x2, 0x10001);
	add_basicblock(p_integrated_CFG, 0x110003, 3, 0x2, 0x110004);
	add_basicblock(p_integrated_CFG, 0x110004, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x110004, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x120001, 3, 0x2, 0x50001);
	add_basicblock(p_integrated_CFG, 0x120001, 3, 0x2, 0x120002);
	add_basicblock(p_integrated_CFG, 0x120002, 3, 0x2, 0x40001);
	add_basicblock(p_integrated_CFG, 0x120002, 3, 0x2, 0x120003);
	add_basicblock(p_integrated_CFG, 0x120003, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x120003, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x130001, 3, 0x2, 0x60001);
	add_basicblock(p_integrated_CFG, 0x130001, 3, 0x2, 0x130002);
	add_basicblock(p_integrated_CFG, 0x130002, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x130002, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x140001, 3, 0x2, 0xa0001);
	add_basicblock(p_integrated_CFG, 0x140001, 3, 0x2, 0x140002);
	add_basicblock(p_integrated_CFG, 0x140002, 3, 0x2, 0x90001);
	add_basicblock(p_integrated_CFG, 0x140002, 3, 0x2, 0x140003);
	add_basicblock(p_integrated_CFG, 0x140003, 3, 0x2, 0x80001);
	add_basicblock(p_integrated_CFG, 0x140003, 3, 0x2, 0x140004);
	add_basicblock(p_integrated_CFG, 0x140004, 3, 0x2, 0x70001);
	add_basicblock(p_integrated_CFG, 0x140004, 3, 0x2, 0x140005);
	add_basicblock(p_integrated_CFG, 0x140005, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x140005, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x150001, 3, 0x2, 0xb0001);
	add_basicblock(p_integrated_CFG, 0x150001, 3, 0x2, 0x150002);
	add_basicblock(p_integrated_CFG, 0x150002, 3, 0x2, 0xc0001);
	add_basicblock(p_integrated_CFG, 0x150002, 3, 0x2, 0x150003);
	add_basicblock(p_integrated_CFG, 0x150003, 3, 0x2, 0xd0001);
	add_basicblock(p_integrated_CFG, 0x150003, 3, 0x2, 0x150004);
	add_basicblock(p_integrated_CFG, 0x150004, 3, 0x2, 0xe0001);
	add_basicblock(p_integrated_CFG, 0x150004, 3, 0x2, 0x150005);
	add_basicblock(p_integrated_CFG, 0x150005, 3, 0x2, 0xf0001);
	add_basicblock(p_integrated_CFG, 0x150005, 3, 0x2, 0x150006);
	add_basicblock(p_integrated_CFG, 0x150006, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x150006, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x160001, 3, 0x2, 0x100001);
	add_basicblock(p_integrated_CFG, 0x160001, 3, 0x2, 0x160002);
	add_basicblock(p_integrated_CFG, 0x160002, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x160002, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x170001, 1, 0x1, 0x170002);
	add_basicblock(p_integrated_CFG, 0x170002, 1, 0x1, 0x170003);
	add_basicblock(p_integrated_CFG, 0x170003, 2, 0x2, 0x170004);
	add_basicblock(p_integrated_CFG, 0x170003, 2, 0x2, 0x17000c);
	add_basicblock(p_integrated_CFG, 0x170004, 3, 0x2, 0x110001);
	add_basicblock(p_integrated_CFG, 0x170004, 3, 0x2, 0x170005);
	add_basicblock(p_integrated_CFG, 0x170005, 3, 0x2, 0x120001);
	add_basicblock(p_integrated_CFG, 0x170005, 3, 0x2, 0x170006);
	add_basicblock(p_integrated_CFG, 0x170006, 3, 0x2, 0x130001);
	add_basicblock(p_integrated_CFG, 0x170006, 3, 0x2, 0x170007);
	add_basicblock(p_integrated_CFG, 0x170007, 3, 0x2, 0x140001);
	add_basicblock(p_integrated_CFG, 0x170007, 3, 0x2, 0x170008);
	add_basicblock(p_integrated_CFG, 0x170008, 3, 0x2, 0x150001);
	add_basicblock(p_integrated_CFG, 0x170008, 3, 0x2, 0x170009);
	add_basicblock(p_integrated_CFG, 0x170009, 3, 0x2, 0x160001);
	add_basicblock(p_integrated_CFG, 0x170009, 3, 0x2, 0x17000a);
	add_basicblock(p_integrated_CFG, 0x17000a, 1, 0x1, 0x17000b);
	add_basicblock(p_integrated_CFG, 0x17000b, 1, 0x1, 0x170003);
	add_basicblock(p_integrated_CFG, 0x17000c, 1, 0x1, 0x17000d);
	add_basicblock(p_integrated_CFG, 0x17000d, 1, 0x1, 0x17000e);
	add_basicblock(p_integrated_CFG, 0x17000e, 1, 0x1, 0x17000f);
	add_basicblock(p_integrated_CFG, 0x17000f, 4, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x17000f, 4, 0x2, 0x0);

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
	p_bb_init->connectionArr[0] = 0x170001;
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

