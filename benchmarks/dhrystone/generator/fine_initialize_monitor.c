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
	add_basicblock(p_integrated_CFG, 0x10002, 1, 0x1, 0x10003);
	add_basicblock(p_integrated_CFG, 0x10003, 1, 0x1, 0x10004);
	add_basicblock(p_integrated_CFG, 0x10004, 1, 0x1, 0x10005);
	add_basicblock(p_integrated_CFG, 0x10005, 1, 0x1, 0x10006);
	add_basicblock(p_integrated_CFG, 0x10006, 2, 0x2, 0x10007);
	add_basicblock(p_integrated_CFG, 0x10006, 2, 0x2, 0x10008);
	add_basicblock(p_integrated_CFG, 0x10007, 1, 0x1, 0x10009);
	add_basicblock(p_integrated_CFG, 0x10008, 1, 0x1, 0x10009);
	add_basicblock(p_integrated_CFG, 0x10009, 1, 0x1, 0x1000a);
	add_basicblock(p_integrated_CFG, 0x1000a, 2, 0x2, 0x1000b);
	add_basicblock(p_integrated_CFG, 0x1000a, 2, 0x2, 0x10020);
	add_basicblock(p_integrated_CFG, 0x1000b, 3, 0x2, 0x50001);
	add_basicblock(p_integrated_CFG, 0x1000b, 3, 0x2, 0x1000c);
	add_basicblock(p_integrated_CFG, 0x1000c, 3, 0x2, 0x60001);
	add_basicblock(p_integrated_CFG, 0x1000c, 3, 0x2, 0x1000d);
	add_basicblock(p_integrated_CFG, 0x1000d, 1, 0x1, 0x1000e);
	add_basicblock(p_integrated_CFG, 0x1000e, 3, 0x2, 0x110001);
	add_basicblock(p_integrated_CFG, 0x1000e, 3, 0x2, 0x1000f);
	add_basicblock(p_integrated_CFG, 0x1000f, 1, 0x1, 0x10010);
	add_basicblock(p_integrated_CFG, 0x10010, 2, 0x2, 0x10011);
	add_basicblock(p_integrated_CFG, 0x10010, 2, 0x2, 0x10013);
	add_basicblock(p_integrated_CFG, 0x10011, 3, 0x2, 0xe0001);
	add_basicblock(p_integrated_CFG, 0x10011, 3, 0x2, 0x10012);
	add_basicblock(p_integrated_CFG, 0x10012, 1, 0x1, 0x10010);
	add_basicblock(p_integrated_CFG, 0x10013, 3, 0x2, 0xf0001);
	add_basicblock(p_integrated_CFG, 0x10013, 3, 0x2, 0x10014);
	add_basicblock(p_integrated_CFG, 0x10014, 3, 0x2, 0x70001);
	add_basicblock(p_integrated_CFG, 0x10014, 3, 0x2, 0x10015);
	add_basicblock(p_integrated_CFG, 0x10015, 1, 0x1, 0x10016);
	add_basicblock(p_integrated_CFG, 0x10016, 2, 0x2, 0x10017);
	add_basicblock(p_integrated_CFG, 0x10016, 2, 0x2, 0x1001e);
	add_basicblock(p_integrated_CFG, 0x10017, 3, 0x2, 0x100001);
	add_basicblock(p_integrated_CFG, 0x10017, 3, 0x2, 0x10018);
	add_basicblock(p_integrated_CFG, 0x10018, 2, 0x2, 0x10019);
	add_basicblock(p_integrated_CFG, 0x10018, 2, 0x2, 0x1001c);
	add_basicblock(p_integrated_CFG, 0x10019, 3, 0x2, 0xc0001);
	add_basicblock(p_integrated_CFG, 0x10019, 3, 0x2, 0x1001a);
	add_basicblock(p_integrated_CFG, 0x1001a, 1, 0x1, 0x1001b);
	add_basicblock(p_integrated_CFG, 0x1001b, 1, 0x1, 0x1001c);
	add_basicblock(p_integrated_CFG, 0x1001c, 1, 0x1, 0x1001d);
	add_basicblock(p_integrated_CFG, 0x1001d, 1, 0x1, 0x10016);
	add_basicblock(p_integrated_CFG, 0x1001e, 3, 0x2, 0x80001);
	add_basicblock(p_integrated_CFG, 0x1001e, 3, 0x2, 0x1001f);
	add_basicblock(p_integrated_CFG, 0x1001f, 1, 0x1, 0x1000a);
	add_basicblock(p_integrated_CFG, 0x10020, 2, 0x2, 0x10021);
	add_basicblock(p_integrated_CFG, 0x10020, 2, 0x2, 0x10022);
	add_basicblock(p_integrated_CFG, 0x10021, 1, 0x1, 0x10023);
	add_basicblock(p_integrated_CFG, 0x10022, 1, 0x1, 0x10023);
	add_basicblock(p_integrated_CFG, 0x10023, 1, 0x1, 0x10024);
	add_basicblock(p_integrated_CFG, 0x10024, 1, 0x1, 0x10025);
	add_basicblock(p_integrated_CFG, 0x10025, 1, 0x1, 0x10026);
	add_basicblock(p_integrated_CFG, 0x10026, 4, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x10026, 4, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x50001, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x50001, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x60001, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x60001, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x70001, 1, 0x1, 0x70002);
	add_basicblock(p_integrated_CFG, 0x70002, 3, 0x2, 0xb0001);
	add_basicblock(p_integrated_CFG, 0x70002, 3, 0x2, 0x70003);
	add_basicblock(p_integrated_CFG, 0x70003, 2, 0x2, 0x70004);
	add_basicblock(p_integrated_CFG, 0x70003, 2, 0x2, 0x70006);
	add_basicblock(p_integrated_CFG, 0x70004, 3, 0x2, 0xc0001);
	add_basicblock(p_integrated_CFG, 0x70004, 3, 0x2, 0x70005);
	add_basicblock(p_integrated_CFG, 0x70005, 3, 0x2, 0xe0001);
	add_basicblock(p_integrated_CFG, 0x70005, 3, 0x2, 0x70007);
	add_basicblock(p_integrated_CFG, 0x70006, 1, 0x1, 0x70007);
	add_basicblock(p_integrated_CFG, 0x70007, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x70007, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x80001, 1, 0x1, 0x80002);
	add_basicblock(p_integrated_CFG, 0x80002, 2, 0x2, 0x80003);
	add_basicblock(p_integrated_CFG, 0x80002, 2, 0x2, 0x80004);
	add_basicblock(p_integrated_CFG, 0x80003, 1, 0x1, 0x80004);
	add_basicblock(p_integrated_CFG, 0x80004, 1, 0x1, 0x80005);
	add_basicblock(p_integrated_CFG, 0x80005, 2, 0x2, 0x80002);
	add_basicblock(p_integrated_CFG, 0x80005, 2, 0x2, 0x80006);
	add_basicblock(p_integrated_CFG, 0x80006, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x80006, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0xb0001, 2, 0x2, 0xb0002);
	add_basicblock(p_integrated_CFG, 0xb0001, 2, 0x2, 0xb0003);
	add_basicblock(p_integrated_CFG, 0xb0002, 1, 0x1, 0xb0003);
	add_basicblock(p_integrated_CFG, 0xb0003, 3, 0x2, 0xe0001);
	add_basicblock(p_integrated_CFG, 0xb0003, 3, 0x2, 0xb0004);
	add_basicblock(p_integrated_CFG, 0xb0004, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0xb0004, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0xc0001, 3, 0x2, 0xd0001);
	add_basicblock(p_integrated_CFG, 0xc0001, 3, 0x2, 0xc0002);
	add_basicblock(p_integrated_CFG, 0xc0002, 2, 0x2, 0xc0004);
	add_basicblock(p_integrated_CFG, 0xc0002, 2, 0x2, 0xc0003);
	add_basicblock(p_integrated_CFG, 0xc0003, 1, 0x1, 0xc0004);
	add_basicblock(p_integrated_CFG, 0xc0004, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0xc0004, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0xd0001, 2, 0x2, 0xd0002);
	add_basicblock(p_integrated_CFG, 0xd0001, 2, 0x2, 0xd0003);
	add_basicblock(p_integrated_CFG, 0xd0002, 1, 0x1, 0xd0004);
	add_basicblock(p_integrated_CFG, 0xd0003, 1, 0x1, 0xd0004);
	add_basicblock(p_integrated_CFG, 0xd0004, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0xd0004, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0xe0001, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0xe0001, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0xf0001, 1, 0x1, 0xf0002);
	add_basicblock(p_integrated_CFG, 0xf0002, 2, 0x2, 0xf0003);
	add_basicblock(p_integrated_CFG, 0xf0002, 2, 0x2, 0xf0005);
	add_basicblock(p_integrated_CFG, 0xf0003, 1, 0x1, 0xf0004);
	add_basicblock(p_integrated_CFG, 0xf0004, 1, 0x1, 0xf0002);
	add_basicblock(p_integrated_CFG, 0xf0005, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0xf0005, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x100001, 2, 0x2, 0x100002);
	add_basicblock(p_integrated_CFG, 0x100001, 2, 0x2, 0x100003);
	add_basicblock(p_integrated_CFG, 0x100002, 1, 0x1, 0x100004);
	add_basicblock(p_integrated_CFG, 0x100003, 1, 0x1, 0x100004);
	add_basicblock(p_integrated_CFG, 0x100004, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x100004, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x110001, 1, 0x1, 0x110002);
	add_basicblock(p_integrated_CFG, 0x110002, 2, 0x2, 0x110003);
	add_basicblock(p_integrated_CFG, 0x110002, 2, 0x2, 0x110007);
	add_basicblock(p_integrated_CFG, 0x110003, 3, 0x2, 0x100001);
	add_basicblock(p_integrated_CFG, 0x110003, 3, 0x2, 0x110004);
	add_basicblock(p_integrated_CFG, 0x110004, 2, 0x2, 0x110005);
	add_basicblock(p_integrated_CFG, 0x110004, 2, 0x2, 0x110006);
	add_basicblock(p_integrated_CFG, 0x110005, 1, 0x1, 0x110006);
	add_basicblock(p_integrated_CFG, 0x110006, 1, 0x1, 0x110002);
	add_basicblock(p_integrated_CFG, 0x110007, 2, 0x2, 0x110008);
	add_basicblock(p_integrated_CFG, 0x110007, 2, 0x2, 0x11000a);
	add_basicblock(p_integrated_CFG, 0x110008, 2, 0x2, 0x110009);
	add_basicblock(p_integrated_CFG, 0x110008, 2, 0x2, 0x11000a);
	add_basicblock(p_integrated_CFG, 0x110009, 1, 0x1, 0x11000a);
	add_basicblock(p_integrated_CFG, 0x11000a, 2, 0x2, 0x11000b);
	add_basicblock(p_integrated_CFG, 0x11000a, 2, 0x2, 0x11000c);
	add_basicblock(p_integrated_CFG, 0x11000b, 1, 0x1, 0x110010);
	add_basicblock(p_integrated_CFG, 0x11000c, 1, 0x1, 0x11000d);
	add_basicblock(p_integrated_CFG, 0x11000d, 2, 0x2, 0x11000e);
	add_basicblock(p_integrated_CFG, 0x11000d, 2, 0x2, 0x11000f);
	add_basicblock(p_integrated_CFG, 0x11000e, 1, 0x1, 0x110010);
	add_basicblock(p_integrated_CFG, 0x11000f, 1, 0x1, 0x110010);
	add_basicblock(p_integrated_CFG, 0x110010, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x110010, 0, 0x2, 0x0);

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
	p_bb_init->connectionArr[0] = 0x10001;
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

