
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "BBNode.h"
#include "aces_hash.h"

struct Hash;

int main()
{
	Hash* hash = (Hash*)malloc(sizeof(Hash));	
	init(hash, 1000);
	
	BBNode a1;
	BBNode a2;
	BBNode a3;
	BBNode a4;
	BBNode a5;
	BBNode a6;
	BBNode a7;

	a1.node_id = 0x00010001;
	a2.node_id = 0x00010002;
	a3.node_id = 0x00020001;
	a4.node_id = 0x00020002;
	a5.node_id = 0x00030001;
	a6.node_id = 0x00030002;
	a7.node_id = 0x00030003;

	insert(hash, &a1);
	insert(hash, &a2);
	insert(hash, &a3);
	insert(hash, &a4);
	insert(hash, &a5);
	insert(hash, &a6);
	insert(hash, &a7);

	BBNode* _node = search(hash, 0x00010002);
	
	printf("search: %x\n", _node->node_id);

	return 0;
}





