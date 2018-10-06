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
	add_basicblock(p_integrated_CFG, 0x10003, 2, 0x2, 0x10004);
	add_basicblock(p_integrated_CFG, 0x10003, 2, 0x2, 0x10010);
	add_basicblock(p_integrated_CFG, 0x10004, 1, 0x1, 0x10005);
	add_basicblock(p_integrated_CFG, 0x10005, 2, 0x2, 0x10006);
	add_basicblock(p_integrated_CFG, 0x10005, 2, 0x2, 0x1000a);
	add_basicblock(p_integrated_CFG, 0x10006, 2, 0x2, 0x10007);
	add_basicblock(p_integrated_CFG, 0x10006, 2, 0x2, 0x10008);
	add_basicblock(p_integrated_CFG, 0x10007, 1, 0x1, 0x1000a);
	add_basicblock(p_integrated_CFG, 0x10008, 1, 0x1, 0x10009);
	add_basicblock(p_integrated_CFG, 0x10009, 1, 0x1, 0x10005);
	add_basicblock(p_integrated_CFG, 0x1000a, 2, 0x2, 0x1000b);
	add_basicblock(p_integrated_CFG, 0x1000a, 2, 0x2, 0x1000c);
	add_basicblock(p_integrated_CFG, 0x1000b, 1, 0x1, 0x1000c);
	add_basicblock(p_integrated_CFG, 0x1000c, 2, 0x2, 0x1000d);
	add_basicblock(p_integrated_CFG, 0x1000c, 2, 0x2, 0x1000e);
	add_basicblock(p_integrated_CFG, 0x1000d, 1, 0x1, 0x1000e);
	add_basicblock(p_integrated_CFG, 0x1000e, 1, 0x1, 0x1000f);
	add_basicblock(p_integrated_CFG, 0x1000f, 1, 0x1, 0x10003);
	add_basicblock(p_integrated_CFG, 0x10010, 1, 0x1, 0x10011);
	add_basicblock(p_integrated_CFG, 0x10011, 2, 0x2, 0x10012);
	add_basicblock(p_integrated_CFG, 0x10011, 2, 0x2, 0x10016);
	add_basicblock(p_integrated_CFG, 0x10012, 2, 0x2, 0x10013);
	add_basicblock(p_integrated_CFG, 0x10012, 2, 0x2, 0x10014);
	add_basicblock(p_integrated_CFG, 0x10013, 1, 0x1, 0x10014);
	add_basicblock(p_integrated_CFG, 0x10014, 1, 0x1, 0x10015);
	add_basicblock(p_integrated_CFG, 0x10015, 1, 0x1, 0x10011);
	add_basicblock(p_integrated_CFG, 0x10016, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x10016, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x30001, 2, 0x2, 0x30002);
	add_basicblock(p_integrated_CFG, 0x30001, 2, 0x2, 0x30003);
	add_basicblock(p_integrated_CFG, 0x30002, 1, 0x1, 0x30013);
	add_basicblock(p_integrated_CFG, 0x30003, 1, 0x1, 0x30004);
	add_basicblock(p_integrated_CFG, 0x30004, 1, 0x1, 0x30005);
	add_basicblock(p_integrated_CFG, 0x30005, 2, 0x2, 0x30006);
	add_basicblock(p_integrated_CFG, 0x30005, 2, 0x2, 0x30007);
	add_basicblock(p_integrated_CFG, 0x30006, 1, 0x1, 0x30005);
	add_basicblock(p_integrated_CFG, 0x30007, 2, 0x2, 0x30008);
	add_basicblock(p_integrated_CFG, 0x30007, 2, 0x2, 0x30009);
	add_basicblock(p_integrated_CFG, 0x30008, 1, 0x1, 0x30013);
	add_basicblock(p_integrated_CFG, 0x30009, 1, 0x1, 0x3000a);
	add_basicblock(p_integrated_CFG, 0x3000a, 2, 0x2, 0x3000b);
	add_basicblock(p_integrated_CFG, 0x3000a, 2, 0x2, 0x3000c);
	add_basicblock(p_integrated_CFG, 0x3000b, 1, 0x1, 0x3000c);
	add_basicblock(p_integrated_CFG, 0x3000c, 2, 0x2, 0x3000d);
	add_basicblock(p_integrated_CFG, 0x3000c, 2, 0x2, 0x3000e);
	add_basicblock(p_integrated_CFG, 0x3000d, 1, 0x1, 0x3000a);
	add_basicblock(p_integrated_CFG, 0x3000e, 2, 0x2, 0x3000f);
	add_basicblock(p_integrated_CFG, 0x3000e, 2, 0x2, 0x30010);
	add_basicblock(p_integrated_CFG, 0x3000f, 1, 0x1, 0x30013);
	add_basicblock(p_integrated_CFG, 0x30010, 2, 0x2, 0x30011);
	add_basicblock(p_integrated_CFG, 0x30010, 2, 0x2, 0x30012);
	add_basicblock(p_integrated_CFG, 0x30011, 1, 0x1, 0x30013);
	add_basicblock(p_integrated_CFG, 0x30012, 1, 0x1, 0x30004);
	add_basicblock(p_integrated_CFG, 0x30013, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x30013, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x40001, 1, 0x1, 0x40002);
	add_basicblock(p_integrated_CFG, 0x40002, 1, 0x1, 0x40003);
	add_basicblock(p_integrated_CFG, 0x40003, 2, 0x2, 0x40005);
	add_basicblock(p_integrated_CFG, 0x40003, 2, 0x2, 0x40004);
	add_basicblock(p_integrated_CFG, 0x40004, 1, 0x1, 0x40006);
	add_basicblock(p_integrated_CFG, 0x40005, 1, 0x1, 0x40006);
	add_basicblock(p_integrated_CFG, 0x40006, 1, 0x1, 0x40007);
	add_basicblock(p_integrated_CFG, 0x40007, 2, 0x2, 0x40008);
	add_basicblock(p_integrated_CFG, 0x40007, 2, 0x2, 0x4000b);
	add_basicblock(p_integrated_CFG, 0x40008, 1, 0x1, 0x40009);
	add_basicblock(p_integrated_CFG, 0x40009, 1, 0x1, 0x4000a);
	add_basicblock(p_integrated_CFG, 0x4000a, 1, 0x1, 0x40007);
	add_basicblock(p_integrated_CFG, 0x4000b, 1, 0x1, 0x4000c);
	add_basicblock(p_integrated_CFG, 0x4000c, 2, 0x2, 0x4000d);
	add_basicblock(p_integrated_CFG, 0x4000c, 2, 0x2, 0x4000f);
	add_basicblock(p_integrated_CFG, 0x4000d, 1, 0x1, 0x4000e);
	add_basicblock(p_integrated_CFG, 0x4000e, 1, 0x1, 0x4000c);
	add_basicblock(p_integrated_CFG, 0x4000f, 1, 0x1, 0x40010);
	add_basicblock(p_integrated_CFG, 0x40010, 2, 0x2, 0x40011);
	add_basicblock(p_integrated_CFG, 0x40010, 2, 0x2, 0x40014);
	add_basicblock(p_integrated_CFG, 0x40011, 1, 0x1, 0x40012);
	add_basicblock(p_integrated_CFG, 0x40012, 1, 0x1, 0x40013);
	add_basicblock(p_integrated_CFG, 0x40013, 1, 0x1, 0x40010);
	add_basicblock(p_integrated_CFG, 0x40014, 1, 0x1, 0x40015);
	add_basicblock(p_integrated_CFG, 0x40015, 1, 0x1, 0x40016);
	add_basicblock(p_integrated_CFG, 0x40016, 2, 0x2, 0x40017);
	add_basicblock(p_integrated_CFG, 0x40016, 2, 0x2, 0x4001b);
	add_basicblock(p_integrated_CFG, 0x40017, 2, 0x2, 0x40018);
	add_basicblock(p_integrated_CFG, 0x40017, 2, 0x2, 0x40019);
	add_basicblock(p_integrated_CFG, 0x40018, 1, 0x1, 0x40019);
	add_basicblock(p_integrated_CFG, 0x40019, 1, 0x1, 0x4001a);
	add_basicblock(p_integrated_CFG, 0x4001a, 1, 0x1, 0x40016);
	add_basicblock(p_integrated_CFG, 0x4001b, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x4001b, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x60001, 1, 0x1, 0x60002);
	add_basicblock(p_integrated_CFG, 0x60002, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x60002, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0xb0001, 2, 0x2, 0xb0002);
	add_basicblock(p_integrated_CFG, 0xb0001, 2, 0x2, 0xb0003);
	add_basicblock(p_integrated_CFG, 0xb0002, 1, 0x1, 0xb0014);
	add_basicblock(p_integrated_CFG, 0xb0003, 1, 0x1, 0xb0004);
	add_basicblock(p_integrated_CFG, 0xb0004, 1, 0x1, 0xb0005);
	add_basicblock(p_integrated_CFG, 0xb0005, 2, 0x2, 0xb0006);
	add_basicblock(p_integrated_CFG, 0xb0005, 2, 0x2, 0xb0007);
	add_basicblock(p_integrated_CFG, 0xb0006, 1, 0x1, 0xb0005);
	add_basicblock(p_integrated_CFG, 0xb0007, 2, 0x2, 0xb0008);
	add_basicblock(p_integrated_CFG, 0xb0007, 2, 0x2, 0xb0009);
	add_basicblock(p_integrated_CFG, 0xb0008, 1, 0x1, 0xb0014);
	add_basicblock(p_integrated_CFG, 0xb0009, 1, 0x1, 0xb000a);
	add_basicblock(p_integrated_CFG, 0xb000a, 2, 0x2, 0xb000b);
	add_basicblock(p_integrated_CFG, 0xb000a, 2, 0x2, 0xb000d);
	add_basicblock(p_integrated_CFG, 0xb000b, 1, 0x1, 0xb000c);
	add_basicblock(p_integrated_CFG, 0xb000c, 1, 0x1, 0xb000d);
	add_basicblock(p_integrated_CFG, 0xb000d, 2, 0x2, 0xb000e);
	add_basicblock(p_integrated_CFG, 0xb000d, 2, 0x2, 0xb000f);
	add_basicblock(p_integrated_CFG, 0xb000e, 1, 0x1, 0xb000a);
	add_basicblock(p_integrated_CFG, 0xb000f, 2, 0x2, 0xb0010);
	add_basicblock(p_integrated_CFG, 0xb000f, 2, 0x2, 0xb0011);
	add_basicblock(p_integrated_CFG, 0xb0010, 1, 0x1, 0xb0014);
	add_basicblock(p_integrated_CFG, 0xb0011, 2, 0x2, 0xb0012);
	add_basicblock(p_integrated_CFG, 0xb0011, 2, 0x2, 0xb0013);
	add_basicblock(p_integrated_CFG, 0xb0012, 1, 0x1, 0xb0014);
	add_basicblock(p_integrated_CFG, 0xb0013, 1, 0x1, 0xb0004);
	add_basicblock(p_integrated_CFG, 0xb0014, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0xb0014, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0xc0001, 1, 0x1, 0xc0002);
	add_basicblock(p_integrated_CFG, 0xc0002, 1, 0x1, 0xc0003);
	add_basicblock(p_integrated_CFG, 0xc0003, 2, 0x2, 0xc0004);
	add_basicblock(p_integrated_CFG, 0xc0003, 2, 0x2, 0xc0006);
	add_basicblock(p_integrated_CFG, 0xc0004, 1, 0x1, 0xc0005);
	add_basicblock(p_integrated_CFG, 0xc0005, 1, 0x1, 0xc0003);
	add_basicblock(p_integrated_CFG, 0xc0006, 1, 0x1, 0xc0007);
	add_basicblock(p_integrated_CFG, 0xc0007, 2, 0x2, 0xc0008);
	add_basicblock(p_integrated_CFG, 0xc0007, 2, 0x2, 0xc000a);
	add_basicblock(p_integrated_CFG, 0xc0008, 1, 0x1, 0xc0009);
	add_basicblock(p_integrated_CFG, 0xc0009, 1, 0x1, 0xc0007);
	add_basicblock(p_integrated_CFG, 0xc000a, 1, 0x1, 0xc000b);
	add_basicblock(p_integrated_CFG, 0xc000b, 2, 0x2, 0xc000c);
	add_basicblock(p_integrated_CFG, 0xc000b, 2, 0x2, 0xc0010);
	add_basicblock(p_integrated_CFG, 0xc000c, 2, 0x2, 0xc000d);
	add_basicblock(p_integrated_CFG, 0xc000c, 2, 0x2, 0xc000e);
	add_basicblock(p_integrated_CFG, 0xc000d, 1, 0x1, 0xc000e);
	add_basicblock(p_integrated_CFG, 0xc000e, 1, 0x1, 0xc000f);
	add_basicblock(p_integrated_CFG, 0xc000f, 1, 0x1, 0xc000b);
	add_basicblock(p_integrated_CFG, 0xc0010, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0xc0010, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0xd0001, 2, 0x2, 0xd0002);
	add_basicblock(p_integrated_CFG, 0xd0001, 2, 0x2, 0xd0003);
	add_basicblock(p_integrated_CFG, 0xd0002, 1, 0x1, 0xd0013);
	add_basicblock(p_integrated_CFG, 0xd0003, 1, 0x1, 0xd0004);
	add_basicblock(p_integrated_CFG, 0xd0004, 1, 0x1, 0xd0005);
	add_basicblock(p_integrated_CFG, 0xd0005, 2, 0x2, 0xd0006);
	add_basicblock(p_integrated_CFG, 0xd0005, 2, 0x2, 0xd0007);
	add_basicblock(p_integrated_CFG, 0xd0006, 1, 0x1, 0xd0005);
	add_basicblock(p_integrated_CFG, 0xd0007, 2, 0x2, 0xd0008);
	add_basicblock(p_integrated_CFG, 0xd0007, 2, 0x2, 0xd0009);
	add_basicblock(p_integrated_CFG, 0xd0008, 1, 0x1, 0xd0013);
	add_basicblock(p_integrated_CFG, 0xd0009, 1, 0x1, 0xd000a);
	add_basicblock(p_integrated_CFG, 0xd000a, 2, 0x2, 0xd000b);
	add_basicblock(p_integrated_CFG, 0xd000a, 2, 0x2, 0xd000c);
	add_basicblock(p_integrated_CFG, 0xd000b, 1, 0x1, 0xd000c);
	add_basicblock(p_integrated_CFG, 0xd000c, 2, 0x2, 0xd000d);
	add_basicblock(p_integrated_CFG, 0xd000c, 2, 0x2, 0xd000e);
	add_basicblock(p_integrated_CFG, 0xd000d, 1, 0x1, 0xd000a);
	add_basicblock(p_integrated_CFG, 0xd000e, 2, 0x2, 0xd000f);
	add_basicblock(p_integrated_CFG, 0xd000e, 2, 0x2, 0xd0010);
	add_basicblock(p_integrated_CFG, 0xd000f, 1, 0x1, 0xd0013);
	add_basicblock(p_integrated_CFG, 0xd0010, 2, 0x2, 0xd0011);
	add_basicblock(p_integrated_CFG, 0xd0010, 2, 0x2, 0xd0012);
	add_basicblock(p_integrated_CFG, 0xd0011, 1, 0x1, 0xd0013);
	add_basicblock(p_integrated_CFG, 0xd0012, 1, 0x1, 0xd0004);
	add_basicblock(p_integrated_CFG, 0xd0013, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0xd0013, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0xe0001, 1, 0x1, 0xe0002);
	add_basicblock(p_integrated_CFG, 0xe0002, 1, 0x1, 0xe0003);
	add_basicblock(p_integrated_CFG, 0xe0003, 2, 0x2, 0xe0004);
	add_basicblock(p_integrated_CFG, 0xe0003, 2, 0x2, 0xe0006);
	add_basicblock(p_integrated_CFG, 0xe0004, 1, 0x1, 0xe0005);
	add_basicblock(p_integrated_CFG, 0xe0005, 1, 0x1, 0xe0003);
	add_basicblock(p_integrated_CFG, 0xe0006, 1, 0x1, 0xe0007);
	add_basicblock(p_integrated_CFG, 0xe0007, 2, 0x2, 0xe0008);
	add_basicblock(p_integrated_CFG, 0xe0007, 2, 0x2, 0xe000a);
	add_basicblock(p_integrated_CFG, 0xe0008, 1, 0x1, 0xe0009);
	add_basicblock(p_integrated_CFG, 0xe0009, 1, 0x1, 0xe0007);
	add_basicblock(p_integrated_CFG, 0xe000a, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0xe000a, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0xf0001, 1, 0x1, 0xf0002);
	add_basicblock(p_integrated_CFG, 0xf0002, 1, 0x1, 0xf0003);
	add_basicblock(p_integrated_CFG, 0xf0003, 2, 0x2, 0xf0004);
	add_basicblock(p_integrated_CFG, 0xf0003, 2, 0x2, 0xf0010);
	add_basicblock(p_integrated_CFG, 0xf0004, 1, 0x1, 0xf0005);
	add_basicblock(p_integrated_CFG, 0xf0005, 2, 0x2, 0xf0006);
	add_basicblock(p_integrated_CFG, 0xf0005, 2, 0x2, 0xf0007);
	add_basicblock(p_integrated_CFG, 0xf0006, 1, 0x1, 0xf0007);
	add_basicblock(p_integrated_CFG, 0xf0007, 2, 0x2, 0xf0008);
	add_basicblock(p_integrated_CFG, 0xf0007, 2, 0x2, 0xf0009);
	add_basicblock(p_integrated_CFG, 0xf0008, 1, 0x1, 0xf0005);
	add_basicblock(p_integrated_CFG, 0xf0009, 2, 0x2, 0xf000a);
	add_basicblock(p_integrated_CFG, 0xf0009, 2, 0x2, 0xf000f);
	add_basicblock(p_integrated_CFG, 0xf000a, 1, 0x1, 0xf000b);
	add_basicblock(p_integrated_CFG, 0xf000b, 2, 0x2, 0xf000c);
	add_basicblock(p_integrated_CFG, 0xf000b, 2, 0x2, 0xf000d);
	add_basicblock(p_integrated_CFG, 0xf000c, 1, 0x1, 0xf0011);
	add_basicblock(p_integrated_CFG, 0xf000d, 1, 0x1, 0xf000e);
	add_basicblock(p_integrated_CFG, 0xf000e, 1, 0x1, 0xf000f);
	add_basicblock(p_integrated_CFG, 0xf000f, 1, 0x1, 0xf0003);
	add_basicblock(p_integrated_CFG, 0xf0010, 1, 0x1, 0xf0011);
	add_basicblock(p_integrated_CFG, 0xf0011, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0xf0011, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x110001, 1, 0x1, 0x110002);
	add_basicblock(p_integrated_CFG, 0x110002, 1, 0x1, 0x110003);
	add_basicblock(p_integrated_CFG, 0x110003, 1, 0x1, 0x110004);
	add_basicblock(p_integrated_CFG, 0x110004, 1, 0x1, 0x110005);
	add_basicblock(p_integrated_CFG, 0x110005, 2, 0x2, 0x110006);
	add_basicblock(p_integrated_CFG, 0x110005, 2, 0x2, 0x11000a);
	add_basicblock(p_integrated_CFG, 0x110006, 3, 0x2, 0xe0001);
	add_basicblock(p_integrated_CFG, 0x110006, 3, 0x2, 0x110007);
	add_basicblock(p_integrated_CFG, 0x110007, 3, 0x2, 0xf0001);
	add_basicblock(p_integrated_CFG, 0x110007, 3, 0x2, 0x110008);
	add_basicblock(p_integrated_CFG, 0x110008, 1, 0x1, 0x110009);
	add_basicblock(p_integrated_CFG, 0x110009, 1, 0x1, 0x110005);
	add_basicblock(p_integrated_CFG, 0x11000a, 1, 0x1, 0x11000b);
	add_basicblock(p_integrated_CFG, 0x11000b, 1, 0x1, 0x11000c);
	add_basicblock(p_integrated_CFG, 0x11000c, 1, 0x1, 0x11000d);
	add_basicblock(p_integrated_CFG, 0x11000d, 4, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x11000d, 4, 0x2, 0x0);

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
	p_bb_init->connectionArr[0] = 0x110001;
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

