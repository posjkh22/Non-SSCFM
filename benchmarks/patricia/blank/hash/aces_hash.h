
//#ifndef ACES_HASH
//#define ACES_HASH


#include "BBNode.h"

typedef struct _hash
{
	//unsigned int *hashmap;
	BBNode** hashmap;
	unsigned int item_num;
}Hash;


void init(Hash* hash, unsigned size);
unsigned int get_key(unsigned int node_id);
unsigned int hash_function(BBNode* node);
void insert(Hash* hash, BBNode* node);
BBNode* search(Hash* hash, unsigned int node_id);


//`#endif


