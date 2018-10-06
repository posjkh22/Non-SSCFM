
#include "aces_hash.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>


void init(Hash* hash, unsigned size)
{
	size = 100000;
	if(hash == NULL)
	{
		hash = (Hash*)malloc(sizeof(Hash));
	}
	hash->hashmap = (Hash**)malloc(sizeof(Hash*) *size);
	
	if(hash->hashmap == NULL)
	{	
		printf("hashmap is not allocated!\n");
	}

	//memset(hash->hashmap, 0, sizeof(Hash*) * size);
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

	/*
	if(hash->hashmap[key] !=0)
	{
		printf("Hash collision!\n");
		exit(-1);
	}
	*/

	hash->hashmap[key] = node;
	hash->item_num++;
}

BBNode* search(Hash* hash, unsigned int node_id)
{
	unsigned int key = get_key(node_id);	
	return hash->hashmap[key];
}


