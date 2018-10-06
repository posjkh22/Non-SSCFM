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
	add_basicblock(p_integrated_CFG, 0x10005, 2, 0x2, 0x10006);
	add_basicblock(p_integrated_CFG, 0x10005, 2, 0x2, 0x10008);
	add_basicblock(p_integrated_CFG, 0x10006, 1, 0x1, 0x10007);
	add_basicblock(p_integrated_CFG, 0x10007, 1, 0x1, 0x10005);
	add_basicblock(p_integrated_CFG, 0x10008, 1, 0x1, 0x10009);
	add_basicblock(p_integrated_CFG, 0x10009, 2, 0x2, 0x1000a);
	add_basicblock(p_integrated_CFG, 0x10009, 2, 0x2, 0x1000c);
	add_basicblock(p_integrated_CFG, 0x1000a, 1, 0x1, 0x1000b);
	add_basicblock(p_integrated_CFG, 0x1000b, 1, 0x1, 0x10009);
	add_basicblock(p_integrated_CFG, 0x1000c, 1, 0x1, 0x1000d);
	add_basicblock(p_integrated_CFG, 0x1000d, 2, 0x2, 0x1000e);
	add_basicblock(p_integrated_CFG, 0x1000d, 2, 0x2, 0x10010);
	add_basicblock(p_integrated_CFG, 0x1000e, 3, 0x2, 0x30001);
	add_basicblock(p_integrated_CFG, 0x1000e, 3, 0x2, 0x1000f);
	add_basicblock(p_integrated_CFG, 0x1000f, 1, 0x1, 0x1000d);
	add_basicblock(p_integrated_CFG, 0x10010, 1, 0x1, 0x10011);
	add_basicblock(p_integrated_CFG, 0x10011, 2, 0x2, 0x10012);
	add_basicblock(p_integrated_CFG, 0x10011, 2, 0x2, 0x1001d);
	add_basicblock(p_integrated_CFG, 0x10012, 2, 0x2, 0x10013);
	add_basicblock(p_integrated_CFG, 0x10012, 2, 0x2, 0x10014);
	add_basicblock(p_integrated_CFG, 0x10013, 1, 0x1, 0x10015);
	add_basicblock(p_integrated_CFG, 0x10014, 1, 0x1, 0x10015);
	add_basicblock(p_integrated_CFG, 0x10015, 2, 0x2, 0x10016);
	add_basicblock(p_integrated_CFG, 0x10015, 2, 0x2, 0x10017);
	add_basicblock(p_integrated_CFG, 0x10016, 1, 0x1, 0x10018);
	add_basicblock(p_integrated_CFG, 0x10017, 1, 0x1, 0x10018);
	add_basicblock(p_integrated_CFG, 0x10018, 2, 0x2, 0x10019);
	add_basicblock(p_integrated_CFG, 0x10018, 2, 0x2, 0x1001a);
	add_basicblock(p_integrated_CFG, 0x10019, 1, 0x1, 0x1001b);
	add_basicblock(p_integrated_CFG, 0x1001a, 1, 0x1, 0x1001b);
	add_basicblock(p_integrated_CFG, 0x1001b, 1, 0x1, 0x1001c);
	add_basicblock(p_integrated_CFG, 0x1001c, 1, 0x1, 0x10011);
	add_basicblock(p_integrated_CFG, 0x1001d, 1, 0x1, 0x1001e);
	add_basicblock(p_integrated_CFG, 0x1001e, 2, 0x2, 0x1001f);
	add_basicblock(p_integrated_CFG, 0x1001e, 2, 0x2, 0x10021);
	add_basicblock(p_integrated_CFG, 0x1001f, 1, 0x1, 0x10020);
	add_basicblock(p_integrated_CFG, 0x10020, 1, 0x1, 0x1001e);
	add_basicblock(p_integrated_CFG, 0x10021, 1, 0x1, 0x10022);
	add_basicblock(p_integrated_CFG, 0x10022, 2, 0x2, 0x10023);
	add_basicblock(p_integrated_CFG, 0x10022, 2, 0x2, 0x1002f);
	add_basicblock(p_integrated_CFG, 0x10023, 1, 0x1, 0x10024);
	add_basicblock(p_integrated_CFG, 0x10024, 1, 0x1, 0x10025);
	add_basicblock(p_integrated_CFG, 0x10025, 1, 0x1, 0x10026);
	add_basicblock(p_integrated_CFG, 0x10026, 1, 0x1, 0x10027);
	add_basicblock(p_integrated_CFG, 0x10027, 1, 0x1, 0x10028);
	add_basicblock(p_integrated_CFG, 0x10028, 1, 0x1, 0x10029);
	add_basicblock(p_integrated_CFG, 0x10029, 1, 0x1, 0x1002a);
	add_basicblock(p_integrated_CFG, 0x1002a, 1, 0x1, 0x1002b);
	add_basicblock(p_integrated_CFG, 0x1002b, 1, 0x1, 0x1002c);
	add_basicblock(p_integrated_CFG, 0x1002c, 1, 0x1, 0x1002d);
	add_basicblock(p_integrated_CFG, 0x1002d, 1, 0x1, 0x1002e);
	add_basicblock(p_integrated_CFG, 0x1002e, 1, 0x1, 0x10022);
	add_basicblock(p_integrated_CFG, 0x1002f, 1, 0x1, 0x10030);
	add_basicblock(p_integrated_CFG, 0x10030, 2, 0x2, 0x10031);
	add_basicblock(p_integrated_CFG, 0x10030, 2, 0x2, 0x10033);
	add_basicblock(p_integrated_CFG, 0x10031, 3, 0x2, 0x70001);
	add_basicblock(p_integrated_CFG, 0x10031, 3, 0x2, 0x10032);
	add_basicblock(p_integrated_CFG, 0x10032, 1, 0x1, 0x10030);
	add_basicblock(p_integrated_CFG, 0x10033, 1, 0x1, 0x10034);
	add_basicblock(p_integrated_CFG, 0x10034, 2, 0x2, 0x10035);
	add_basicblock(p_integrated_CFG, 0x10034, 2, 0x2, 0x10037);
	add_basicblock(p_integrated_CFG, 0x10035, 3, 0x2, 0x80001);
	add_basicblock(p_integrated_CFG, 0x10035, 3, 0x2, 0x10036);
	add_basicblock(p_integrated_CFG, 0x10036, 1, 0x1, 0x10034);
	add_basicblock(p_integrated_CFG, 0x10037, 1, 0x1, 0x10038);
	add_basicblock(p_integrated_CFG, 0x10038, 2, 0x2, 0x10039);
	add_basicblock(p_integrated_CFG, 0x10038, 2, 0x2, 0x1003b);
	add_basicblock(p_integrated_CFG, 0x10039, 1, 0x1, 0x1003a);
	add_basicblock(p_integrated_CFG, 0x1003a, 1, 0x1, 0x10038);
	add_basicblock(p_integrated_CFG, 0x1003b, 1, 0x1, 0x1003c);
	add_basicblock(p_integrated_CFG, 0x1003c, 2, 0x2, 0x1003d);
	add_basicblock(p_integrated_CFG, 0x1003c, 2, 0x2, 0x10042);
	add_basicblock(p_integrated_CFG, 0x1003d, 1, 0x1, 0x1003e);
	add_basicblock(p_integrated_CFG, 0x1003e, 1, 0x1, 0x1003f);
	add_basicblock(p_integrated_CFG, 0x1003f, 1, 0x1, 0x10040);
	add_basicblock(p_integrated_CFG, 0x10040, 1, 0x1, 0x10041);
	add_basicblock(p_integrated_CFG, 0x10041, 1, 0x1, 0x1003c);
	add_basicblock(p_integrated_CFG, 0x10042, 2, 0x2, 0x10043);
	add_basicblock(p_integrated_CFG, 0x10042, 2, 0x2, 0x10044);
	add_basicblock(p_integrated_CFG, 0x10043, 1, 0x1, 0x10004);
	add_basicblock(p_integrated_CFG, 0x10044, 1, 0x1, 0x10045);
	add_basicblock(p_integrated_CFG, 0x10045, 1, 0x1, 0x10046);
	add_basicblock(p_integrated_CFG, 0x10046, 1, 0x1, 0x10047);
	add_basicblock(p_integrated_CFG, 0x10047, 4, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x10047, 4, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x30001, 1, 0x1, 0x30002);
	add_basicblock(p_integrated_CFG, 0x30002, 2, 0x2, 0x30003);
	add_basicblock(p_integrated_CFG, 0x30002, 2, 0x2, 0x30004);
	add_basicblock(p_integrated_CFG, 0x30003, 1, 0x1, 0x30002);
	add_basicblock(p_integrated_CFG, 0x30004, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x30004, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x70001, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x70001, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x80001, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x80001, 0, 0x2, 0x0);

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

