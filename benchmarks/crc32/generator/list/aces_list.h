/*
 * linkedlist.c
 *
 *  Created on: 2011. 4. 21.
 *      Author: Chwang
 */

#include <stdio.h>
#include <stdlib.h>
#include "BBNode.h"


typedef struct _node{
	BBNode *value;
	struct _node* next;
}node;

typedef node* nptr;

typedef struct _list{
	int count;
	nptr head;
}list;

void init(list* lptr);
void insert(list* lptr,BBNode* value);
BBNode* search(list* lptr,unsigned int node_id);

//void delete(list* lptr,int position);
//void modify(list* lptr,int value,int position);
//void print_list(list* lptr);


