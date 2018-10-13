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
	add_basicblock(p_integrated_CFG, 0x10001, 2, 0x2, 0x10004);
	add_basicblock(p_integrated_CFG, 0x10002, 2, 0x2, 0x10003);
	add_basicblock(p_integrated_CFG, 0x10002, 2, 0x2, 0x10004);
	add_basicblock(p_integrated_CFG, 0x10003, 2, 0x2, 0x10005);
	add_basicblock(p_integrated_CFG, 0x10003, 2, 0x2, 0x10004);
	add_basicblock(p_integrated_CFG, 0x10004, 1, 0x1, 0x10034);
	add_basicblock(p_integrated_CFG, 0x10005, 1, 0x1, 0x10006);
	add_basicblock(p_integrated_CFG, 0x10006, 3, 0x2, 0x20001);
	add_basicblock(p_integrated_CFG, 0x10006, 3, 0x2, 0x10007);
	add_basicblock(p_integrated_CFG, 0x10007, 2, 0x2, 0x10008);
	add_basicblock(p_integrated_CFG, 0x10007, 2, 0x2, 0x10009);
	add_basicblock(p_integrated_CFG, 0x10008, 1, 0x1, 0x1000a);
	add_basicblock(p_integrated_CFG, 0x10009, 1, 0x1, 0x1000a);
	add_basicblock(p_integrated_CFG, 0x1000a, 1, 0x1, 0x1000b);
	add_basicblock(p_integrated_CFG, 0x1000b, 2, 0x2, 0x10006);
	add_basicblock(p_integrated_CFG, 0x1000b, 2, 0x2, 0x1000c);
	add_basicblock(p_integrated_CFG, 0x1000c, 2, 0x2, 0x1000d);
	add_basicblock(p_integrated_CFG, 0x1000c, 2, 0x2, 0x10025);
	add_basicblock(p_integrated_CFG, 0x1000d, 1, 0x1, 0x1000e);
	add_basicblock(p_integrated_CFG, 0x1000e, 2, 0x2, 0x1000f);
	add_basicblock(p_integrated_CFG, 0x1000e, 2, 0x2, 0x10015);
	add_basicblock(p_integrated_CFG, 0x1000f, 2, 0x2, 0x10010);
	add_basicblock(p_integrated_CFG, 0x1000f, 2, 0x2, 0x10013);
	add_basicblock(p_integrated_CFG, 0x10010, 1, 0x1, 0x10011);
	add_basicblock(p_integrated_CFG, 0x10011, 1, 0x1, 0x10012);
	add_basicblock(p_integrated_CFG, 0x10012, 1, 0x1, 0x10034);
	add_basicblock(p_integrated_CFG, 0x10013, 1, 0x1, 0x10014);
	add_basicblock(p_integrated_CFG, 0x10014, 1, 0x1, 0x1000e);
	add_basicblock(p_integrated_CFG, 0x10015, 1, 0x1, 0x10016);
	add_basicblock(p_integrated_CFG, 0x10016, 1, 0x1, 0x10017);
	add_basicblock(p_integrated_CFG, 0x10017, 2, 0x2, 0x10018);
	add_basicblock(p_integrated_CFG, 0x10017, 2, 0x2, 0x1001f);
	add_basicblock(p_integrated_CFG, 0x10018, 2, 0x2, 0x10019);
	add_basicblock(p_integrated_CFG, 0x10018, 2, 0x2, 0x1001b);
	add_basicblock(p_integrated_CFG, 0x10019, 1, 0x1, 0x1001a);
	add_basicblock(p_integrated_CFG, 0x1001a, 1, 0x1, 0x1001d);
	add_basicblock(p_integrated_CFG, 0x1001b, 1, 0x1, 0x1001c);
	add_basicblock(p_integrated_CFG, 0x1001c, 1, 0x1, 0x1001d);
	add_basicblock(p_integrated_CFG, 0x1001d, 1, 0x1, 0x1001e);
	add_basicblock(p_integrated_CFG, 0x1001e, 1, 0x1, 0x10017);
	add_basicblock(p_integrated_CFG, 0x1001f, 2, 0x2, 0x10021);
	add_basicblock(p_integrated_CFG, 0x1001f, 2, 0x2, 0x10020);
	add_basicblock(p_integrated_CFG, 0x10020, 1, 0x1, 0x10021);
	add_basicblock(p_integrated_CFG, 0x10021, 1, 0x1, 0x10022);
	add_basicblock(p_integrated_CFG, 0x10022, 1, 0x1, 0x10023);
	add_basicblock(p_integrated_CFG, 0x10023, 1, 0x1, 0x10024);
	add_basicblock(p_integrated_CFG, 0x10024, 1, 0x1, 0x10034);
	add_basicblock(p_integrated_CFG, 0x10025, 1, 0x1, 0x10026);
	add_basicblock(p_integrated_CFG, 0x10026, 2, 0x2, 0x10027);
	add_basicblock(p_integrated_CFG, 0x10026, 2, 0x2, 0x1002a);
	add_basicblock(p_integrated_CFG, 0x10027, 3, 0x2, 0x20001);
	add_basicblock(p_integrated_CFG, 0x10027, 3, 0x2, 0x10028);
	add_basicblock(p_integrated_CFG, 0x10028, 3, 0x2, 0x20001);
	add_basicblock(p_integrated_CFG, 0x10028, 3, 0x2, 0x10029);
	add_basicblock(p_integrated_CFG, 0x10029, 1, 0x1, 0x1002a);
	add_basicblock(p_integrated_CFG, 0x1002a, 2, 0x2, 0x1002b);
	add_basicblock(p_integrated_CFG, 0x1002a, 2, 0x2, 0x1002d);
	add_basicblock(p_integrated_CFG, 0x1002b, 1, 0x1, 0x1002c);
	add_basicblock(p_integrated_CFG, 0x1002c, 1, 0x1, 0x10026);
	add_basicblock(p_integrated_CFG, 0x1002d, 3, 0x2, 0x20001);
	add_basicblock(p_integrated_CFG, 0x1002d, 3, 0x2, 0x1002e);
	add_basicblock(p_integrated_CFG, 0x1002e, 2, 0x2, 0x1002f);
	add_basicblock(p_integrated_CFG, 0x1002e, 2, 0x2, 0x10031);
	add_basicblock(p_integrated_CFG, 0x1002f, 3, 0x2, 0x60001);
	add_basicblock(p_integrated_CFG, 0x1002f, 3, 0x2, 0x10030);
	add_basicblock(p_integrated_CFG, 0x10030, 1, 0x1, 0x10033);
	add_basicblock(p_integrated_CFG, 0x10031, 3, 0x2, 0x60001);
	add_basicblock(p_integrated_CFG, 0x10031, 3, 0x2, 0x10032);
	add_basicblock(p_integrated_CFG, 0x10032, 1, 0x1, 0x10033);
	add_basicblock(p_integrated_CFG, 0x10033, 1, 0x1, 0x10034);
	add_basicblock(p_integrated_CFG, 0x10034, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x10034, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x20001, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x20001, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x60001, 2, 0x2, 0x60003);
	add_basicblock(p_integrated_CFG, 0x60001, 2, 0x2, 0x60002);
	add_basicblock(p_integrated_CFG, 0x60002, 2, 0x2, 0x60003);
	add_basicblock(p_integrated_CFG, 0x60002, 2, 0x2, 0x6000c);
	add_basicblock(p_integrated_CFG, 0x60003, 3, 0x2, 0x20001);
	add_basicblock(p_integrated_CFG, 0x60003, 3, 0x2, 0x60004);
	add_basicblock(p_integrated_CFG, 0x60004, 2, 0x2, 0x60005);
	add_basicblock(p_integrated_CFG, 0x60004, 2, 0x2, 0x60006);
	add_basicblock(p_integrated_CFG, 0x60005, 1, 0x1, 0x60007);
	add_basicblock(p_integrated_CFG, 0x60006, 1, 0x1, 0x60007);
	add_basicblock(p_integrated_CFG, 0x60007, 3, 0x2, 0x20001);
	add_basicblock(p_integrated_CFG, 0x60007, 3, 0x2, 0x60008);
	add_basicblock(p_integrated_CFG, 0x60008, 2, 0x2, 0x60009);
	add_basicblock(p_integrated_CFG, 0x60008, 2, 0x2, 0x6000a);
	add_basicblock(p_integrated_CFG, 0x60009, 1, 0x1, 0x6000b);
	add_basicblock(p_integrated_CFG, 0x6000a, 1, 0x1, 0x6000b);
	add_basicblock(p_integrated_CFG, 0x6000b, 1, 0x1, 0x60013);
	add_basicblock(p_integrated_CFG, 0x6000c, 3, 0x2, 0x20001);
	add_basicblock(p_integrated_CFG, 0x6000c, 3, 0x2, 0x6000d);
	add_basicblock(p_integrated_CFG, 0x6000d, 2, 0x2, 0x6000e);
	add_basicblock(p_integrated_CFG, 0x6000d, 2, 0x2, 0x60010);
	add_basicblock(p_integrated_CFG, 0x6000e, 3, 0x2, 0x60001);
	add_basicblock(p_integrated_CFG, 0x6000e, 3, 0x2, 0x6000f);
	add_basicblock(p_integrated_CFG, 0x6000f, 1, 0x1, 0x60012);
	add_basicblock(p_integrated_CFG, 0x60010, 3, 0x2, 0x60001);
	add_basicblock(p_integrated_CFG, 0x60010, 3, 0x2, 0x60011);
	add_basicblock(p_integrated_CFG, 0x60011, 1, 0x1, 0x60012);
	add_basicblock(p_integrated_CFG, 0x60012, 1, 0x1, 0x60013);
	add_basicblock(p_integrated_CFG, 0x60013, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x60013, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x70001, 2, 0x2, 0x70002);
	add_basicblock(p_integrated_CFG, 0x70001, 2, 0x2, 0x70004);
	add_basicblock(p_integrated_CFG, 0x70002, 2, 0x2, 0x70003);
	add_basicblock(p_integrated_CFG, 0x70002, 2, 0x2, 0x70004);
	add_basicblock(p_integrated_CFG, 0x70003, 2, 0x2, 0x70005);
	add_basicblock(p_integrated_CFG, 0x70003, 2, 0x2, 0x70004);
	add_basicblock(p_integrated_CFG, 0x70004, 1, 0x1, 0x70042);
	add_basicblock(p_integrated_CFG, 0x70005, 1, 0x1, 0x70006);
	add_basicblock(p_integrated_CFG, 0x70006, 3, 0x2, 0x20001);
	add_basicblock(p_integrated_CFG, 0x70006, 3, 0x2, 0x70007);
	add_basicblock(p_integrated_CFG, 0x70007, 2, 0x2, 0x70008);
	add_basicblock(p_integrated_CFG, 0x70007, 2, 0x2, 0x70009);
	add_basicblock(p_integrated_CFG, 0x70008, 1, 0x1, 0x7000a);
	add_basicblock(p_integrated_CFG, 0x70009, 1, 0x1, 0x7000a);
	add_basicblock(p_integrated_CFG, 0x7000a, 1, 0x1, 0x7000b);
	add_basicblock(p_integrated_CFG, 0x7000b, 2, 0x2, 0x70006);
	add_basicblock(p_integrated_CFG, 0x7000b, 2, 0x2, 0x7000c);
	add_basicblock(p_integrated_CFG, 0x7000c, 2, 0x2, 0x7000d);
	add_basicblock(p_integrated_CFG, 0x7000c, 2, 0x2, 0x7000e);
	add_basicblock(p_integrated_CFG, 0x7000d, 1, 0x1, 0x70042);
	add_basicblock(p_integrated_CFG, 0x7000e, 2, 0x2, 0x7000f);
	add_basicblock(p_integrated_CFG, 0x7000e, 2, 0x2, 0x70031);
	add_basicblock(p_integrated_CFG, 0x7000f, 2, 0x2, 0x70010);
	add_basicblock(p_integrated_CFG, 0x7000f, 2, 0x2, 0x70011);
	add_basicblock(p_integrated_CFG, 0x70010, 1, 0x1, 0x70042);
	add_basicblock(p_integrated_CFG, 0x70011, 2, 0x2, 0x70012);
	add_basicblock(p_integrated_CFG, 0x70011, 2, 0x2, 0x70013);
	add_basicblock(p_integrated_CFG, 0x70012, 1, 0x1, 0x70042);
	add_basicblock(p_integrated_CFG, 0x70013, 1, 0x1, 0x70014);
	add_basicblock(p_integrated_CFG, 0x70014, 3, 0x2, 0x20001);
	add_basicblock(p_integrated_CFG, 0x70014, 3, 0x2, 0x70015);
	add_basicblock(p_integrated_CFG, 0x70015, 2, 0x2, 0x70016);
	add_basicblock(p_integrated_CFG, 0x70015, 2, 0x2, 0x70017);
	add_basicblock(p_integrated_CFG, 0x70016, 1, 0x1, 0x70018);
	add_basicblock(p_integrated_CFG, 0x70017, 1, 0x1, 0x70018);
	add_basicblock(p_integrated_CFG, 0x70018, 1, 0x1, 0x70019);
	add_basicblock(p_integrated_CFG, 0x70019, 2, 0x2, 0x70014);
	add_basicblock(p_integrated_CFG, 0x70019, 2, 0x2, 0x7001a);
	add_basicblock(p_integrated_CFG, 0x7001a, 3, 0x2, 0x20001);
	add_basicblock(p_integrated_CFG, 0x7001a, 3, 0x2, 0x7001b);
	add_basicblock(p_integrated_CFG, 0x7001b, 2, 0x2, 0x7001c);
	add_basicblock(p_integrated_CFG, 0x7001b, 2, 0x2, 0x7001d);
	add_basicblock(p_integrated_CFG, 0x7001c, 1, 0x1, 0x7001e);
	add_basicblock(p_integrated_CFG, 0x7001d, 1, 0x1, 0x7001e);
	add_basicblock(p_integrated_CFG, 0x7001e, 3, 0x2, 0x20001);
	add_basicblock(p_integrated_CFG, 0x7001e, 3, 0x2, 0x7001f);
	add_basicblock(p_integrated_CFG, 0x7001f, 2, 0x2, 0x70020);
	add_basicblock(p_integrated_CFG, 0x7001f, 2, 0x2, 0x70025);
	add_basicblock(p_integrated_CFG, 0x70020, 3, 0x2, 0x20001);
	add_basicblock(p_integrated_CFG, 0x70020, 3, 0x2, 0x70021);
	add_basicblock(p_integrated_CFG, 0x70021, 2, 0x2, 0x70022);
	add_basicblock(p_integrated_CFG, 0x70021, 2, 0x2, 0x70023);
	add_basicblock(p_integrated_CFG, 0x70022, 1, 0x1, 0x70024);
	add_basicblock(p_integrated_CFG, 0x70023, 1, 0x1, 0x70024);
	add_basicblock(p_integrated_CFG, 0x70024, 1, 0x1, 0x7002a);
	add_basicblock(p_integrated_CFG, 0x70025, 3, 0x2, 0x20001);
	add_basicblock(p_integrated_CFG, 0x70025, 3, 0x2, 0x70026);
	add_basicblock(p_integrated_CFG, 0x70026, 2, 0x2, 0x70027);
	add_basicblock(p_integrated_CFG, 0x70026, 2, 0x2, 0x70028);
	add_basicblock(p_integrated_CFG, 0x70027, 1, 0x1, 0x70029);
	add_basicblock(p_integrated_CFG, 0x70028, 1, 0x1, 0x70029);
	add_basicblock(p_integrated_CFG, 0x70029, 1, 0x1, 0x7002a);
	add_basicblock(p_integrated_CFG, 0x7002a, 2, 0x2, 0x7002b);
	add_basicblock(p_integrated_CFG, 0x7002a, 2, 0x2, 0x7002c);
	add_basicblock(p_integrated_CFG, 0x7002b, 1, 0x1, 0x7002c);
	add_basicblock(p_integrated_CFG, 0x7002c, 1, 0x1, 0x7002d);
	add_basicblock(p_integrated_CFG, 0x7002d, 2, 0x2, 0x7002e);
	add_basicblock(p_integrated_CFG, 0x7002d, 2, 0x2, 0x7002f);
	add_basicblock(p_integrated_CFG, 0x7002e, 1, 0x1, 0x7002f);
	add_basicblock(p_integrated_CFG, 0x7002f, 1, 0x1, 0x70030);
	add_basicblock(p_integrated_CFG, 0x70030, 1, 0x1, 0x70042);
	add_basicblock(p_integrated_CFG, 0x70031, 1, 0x1, 0x70032);
	add_basicblock(p_integrated_CFG, 0x70032, 2, 0x2, 0x70033);
	add_basicblock(p_integrated_CFG, 0x70032, 2, 0x2, 0x70037);
	add_basicblock(p_integrated_CFG, 0x70033, 2, 0x2, 0x70034);
	add_basicblock(p_integrated_CFG, 0x70033, 2, 0x2, 0x70035);
	add_basicblock(p_integrated_CFG, 0x70034, 1, 0x1, 0x70037);
	add_basicblock(p_integrated_CFG, 0x70035, 1, 0x1, 0x70036);
	add_basicblock(p_integrated_CFG, 0x70036, 1, 0x1, 0x70032);
	add_basicblock(p_integrated_CFG, 0x70037, 2, 0x2, 0x70038);
	add_basicblock(p_integrated_CFG, 0x70037, 2, 0x2, 0x70039);
	add_basicblock(p_integrated_CFG, 0x70038, 1, 0x1, 0x70042);
	add_basicblock(p_integrated_CFG, 0x70039, 1, 0x1, 0x7003a);
	add_basicblock(p_integrated_CFG, 0x7003a, 1, 0x1, 0x7003b);
	add_basicblock(p_integrated_CFG, 0x7003b, 2, 0x2, 0x7003c);
	add_basicblock(p_integrated_CFG, 0x7003b, 2, 0x2, 0x70040);
	add_basicblock(p_integrated_CFG, 0x7003c, 2, 0x2, 0x7003d);
	add_basicblock(p_integrated_CFG, 0x7003c, 2, 0x2, 0x7003e);
	add_basicblock(p_integrated_CFG, 0x7003d, 1, 0x1, 0x7003e);
	add_basicblock(p_integrated_CFG, 0x7003e, 1, 0x1, 0x7003f);
	add_basicblock(p_integrated_CFG, 0x7003f, 1, 0x1, 0x7003b);
	add_basicblock(p_integrated_CFG, 0x70040, 1, 0x1, 0x70041);
	add_basicblock(p_integrated_CFG, 0x70041, 1, 0x1, 0x70042);
	add_basicblock(p_integrated_CFG, 0x70042, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x70042, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x80001, 2, 0x2, 0x80003);
	add_basicblock(p_integrated_CFG, 0x80001, 2, 0x2, 0x80002);
	add_basicblock(p_integrated_CFG, 0x80002, 1, 0x1, 0x80010);
	add_basicblock(p_integrated_CFG, 0x80003, 1, 0x1, 0x80004);
	add_basicblock(p_integrated_CFG, 0x80004, 2, 0x2, 0x80005);
	add_basicblock(p_integrated_CFG, 0x80004, 2, 0x2, 0x80006);
	add_basicblock(p_integrated_CFG, 0x80005, 1, 0x1, 0x80006);
	add_basicblock(p_integrated_CFG, 0x80006, 3, 0x2, 0x20001);
	add_basicblock(p_integrated_CFG, 0x80006, 3, 0x2, 0x80007);
	add_basicblock(p_integrated_CFG, 0x80007, 2, 0x2, 0x80008);
	add_basicblock(p_integrated_CFG, 0x80007, 2, 0x2, 0x80009);
	add_basicblock(p_integrated_CFG, 0x80008, 1, 0x1, 0x8000a);
	add_basicblock(p_integrated_CFG, 0x80009, 1, 0x1, 0x8000a);
	add_basicblock(p_integrated_CFG, 0x8000a, 1, 0x1, 0x8000b);
	add_basicblock(p_integrated_CFG, 0x8000b, 2, 0x2, 0x80004);
	add_basicblock(p_integrated_CFG, 0x8000b, 2, 0x2, 0x8000c);
	add_basicblock(p_integrated_CFG, 0x8000c, 2, 0x2, 0x8000d);
	add_basicblock(p_integrated_CFG, 0x8000c, 2, 0x2, 0x8000e);
	add_basicblock(p_integrated_CFG, 0x8000d, 1, 0x1, 0x8000f);
	add_basicblock(p_integrated_CFG, 0x8000e, 1, 0x1, 0x8000f);
	add_basicblock(p_integrated_CFG, 0x8000f, 1, 0x1, 0x80010);
	add_basicblock(p_integrated_CFG, 0x80010, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x80010, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x90001, 1, 0x1, 0x90002);
	add_basicblock(p_integrated_CFG, 0x90002, 1, 0x1, 0x90003);
	add_basicblock(p_integrated_CFG, 0x90003, 2, 0x2, 0x90004);
	add_basicblock(p_integrated_CFG, 0x90003, 2, 0x2, 0x90007);
	add_basicblock(p_integrated_CFG, 0x90004, 1, 0x1, 0x90005);
	add_basicblock(p_integrated_CFG, 0x90005, 1, 0x1, 0x90006);
	add_basicblock(p_integrated_CFG, 0x90006, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x90006, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x90007, 1, 0x1, 0x90008);
	add_basicblock(p_integrated_CFG, 0x90008, 2, 0x2, 0x9000c);
	add_basicblock(p_integrated_CFG, 0x90008, 2, 0x2, 0x90009);
	add_basicblock(p_integrated_CFG, 0x90009, 1, 0x1, 0x9000a);
	add_basicblock(p_integrated_CFG, 0x9000a, 1, 0x1, 0x9000b);
	add_basicblock(p_integrated_CFG, 0x9000b, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x9000b, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x9000c, 1, 0x1, 0x9000d);
	add_basicblock(p_integrated_CFG, 0x9000d, 1, 0x1, 0x9000e);
	add_basicblock(p_integrated_CFG, 0x9000e, 2, 0x2, 0x90012);
	add_basicblock(p_integrated_CFG, 0x9000e, 2, 0x2, 0x9000f);
	add_basicblock(p_integrated_CFG, 0x9000f, 1, 0x1, 0x90010);
	add_basicblock(p_integrated_CFG, 0x90010, 1, 0x1, 0x90011);
	add_basicblock(p_integrated_CFG, 0x90011, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x90011, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x90012, 1, 0x1, 0x90013);
	add_basicblock(p_integrated_CFG, 0x90013, 1, 0x1, 0x90014);
	add_basicblock(p_integrated_CFG, 0x90014, 2, 0x2, 0x90018);
	add_basicblock(p_integrated_CFG, 0x90014, 2, 0x2, 0x90015);
	add_basicblock(p_integrated_CFG, 0x90015, 1, 0x1, 0x90016);
	add_basicblock(p_integrated_CFG, 0x90016, 1, 0x1, 0x90017);
	add_basicblock(p_integrated_CFG, 0x90017, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x90017, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x90018, 1, 0x1, 0x90019);
	add_basicblock(p_integrated_CFG, 0x90019, 1, 0x1, 0x9001a);
	add_basicblock(p_integrated_CFG, 0x9001a, 1, 0x1, 0x9001b);
	add_basicblock(p_integrated_CFG, 0x9001b, 2, 0x2, 0x9001c);
	add_basicblock(p_integrated_CFG, 0x9001b, 2, 0x2, 0x90037);
	add_basicblock(p_integrated_CFG, 0x9001c, 1, 0x1, 0x9001d);
	add_basicblock(p_integrated_CFG, 0x9001d, 1, 0x1, 0x9001e);
	add_basicblock(p_integrated_CFG, 0x9001e, 2, 0x2, 0x90022);
	add_basicblock(p_integrated_CFG, 0x9001e, 2, 0x2, 0x9001f);
	add_basicblock(p_integrated_CFG, 0x9001f, 1, 0x1, 0x90020);
	add_basicblock(p_integrated_CFG, 0x90020, 1, 0x1, 0x90021);
	add_basicblock(p_integrated_CFG, 0x90021, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x90021, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x90022, 1, 0x1, 0x90023);
	add_basicblock(p_integrated_CFG, 0x90023, 1, 0x1, 0x90024);
	add_basicblock(p_integrated_CFG, 0x90024, 2, 0x2, 0x90028);
	add_basicblock(p_integrated_CFG, 0x90024, 2, 0x2, 0x90025);
	add_basicblock(p_integrated_CFG, 0x90025, 1, 0x1, 0x90026);
	add_basicblock(p_integrated_CFG, 0x90026, 1, 0x1, 0x90027);
	add_basicblock(p_integrated_CFG, 0x90027, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x90027, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x90028, 1, 0x1, 0x90029);
	add_basicblock(p_integrated_CFG, 0x90029, 1, 0x1, 0x9002a);
	add_basicblock(p_integrated_CFG, 0x9002a, 2, 0x2, 0x9002e);
	add_basicblock(p_integrated_CFG, 0x9002a, 2, 0x2, 0x9002b);
	add_basicblock(p_integrated_CFG, 0x9002b, 1, 0x1, 0x9002c);
	add_basicblock(p_integrated_CFG, 0x9002c, 1, 0x1, 0x9002d);
	add_basicblock(p_integrated_CFG, 0x9002d, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x9002d, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x9002e, 1, 0x1, 0x9002f);
	add_basicblock(p_integrated_CFG, 0x9002f, 1, 0x1, 0x90030);
	add_basicblock(p_integrated_CFG, 0x90030, 3, 0x2, 0x80001);
	add_basicblock(p_integrated_CFG, 0x90030, 3, 0x2, 0x90031);
	add_basicblock(p_integrated_CFG, 0x90031, 2, 0x2, 0x90032);
	add_basicblock(p_integrated_CFG, 0x90031, 2, 0x2, 0x90033);
	add_basicblock(p_integrated_CFG, 0x90032, 1, 0x1, 0x90034);
	add_basicblock(p_integrated_CFG, 0x90033, 1, 0x1, 0x90034);
	add_basicblock(p_integrated_CFG, 0x90034, 2, 0x2, 0x90036);
	add_basicblock(p_integrated_CFG, 0x90034, 2, 0x2, 0x90035);
	add_basicblock(p_integrated_CFG, 0x90035, 1, 0x1, 0x90036);
	add_basicblock(p_integrated_CFG, 0x90036, 1, 0x1, 0x9001a);
	add_basicblock(p_integrated_CFG, 0x90037, 1, 0x1, 0x90038);
	add_basicblock(p_integrated_CFG, 0x90038, 1, 0x1, 0x90039);
	add_basicblock(p_integrated_CFG, 0x90039, 1, 0x1, 0x9003a);
	add_basicblock(p_integrated_CFG, 0x9003a, 4, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x9003a, 4, 0x2, 0x0);

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

