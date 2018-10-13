
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "BBNode.h"

typedef struct _hash
{
	//unsigned int *hashmap;
	BBNode** hashmap;
	unsigned int item_num;
}Hash;


void init(Hash* hash, unsigned size)
{
	if(hash == NULL)
	{
		hash = (Hash*)malloc(sizeof(Hash));
	}
	hash->hashmap = (Hash**)malloc(sizeof(Hash*) *size);
	memset(hash->hashmap, 0, size);

	hash->item_num = 0;
}


unsigned int get_key(unsigned int node_id)
{
	
	unsigned int function_id = node_id >> 16;
	unsigned int basicblock_id = node_id & 0xffff;

	unsigned int key = function_id * 20 + basicblock_id; 

	return key;
}


unsigned int hash_function(BBNode* node)
{
	unsigned int node_id = node->node_id;	
	unsigned int key = get_key(node_id);

	return key;
}


void insert(Hash* hash, BBNode* node)
{
	
	unsigned int key = hash_function(node);
	
	if(hash->hashmap[key] !=0)
	{
		printf("Hash collision!\n");
		exit(-1);
	}

	hash->hashmap[key] = node;
	hash->item_num++;
}

BBNode* search(Hash* hash, unsigned int node_id)
{
	unsigned int key = get_key(node_id);	
	return hash->hashmap[key];
}


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





