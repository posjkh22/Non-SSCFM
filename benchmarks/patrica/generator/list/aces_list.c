
#include "aces_list.h"
#include <stdio.h>

void init(list* lptr){
	//initialize the list

	if(lptr==NULL)
	{
		(lptr)=(list*)malloc(sizeof(list));
	}

	(lptr)->count=0;
	(lptr)->head=NULL;
}

void insert(list* lptr,BBNode* value){
	//insert value to proper position
	
	nptr new_nptr=(node*)malloc(sizeof(node));
	new_nptr->value=value;

	if(lptr->count==0){
		new_nptr->next=lptr->head;
		lptr->head=new_nptr;
	}
	else{
		nptr tmp=lptr->head;
		new_nptr->next=tmp->next;
		tmp->next=new_nptr;
	}
	lptr->count++;
}



/*

void delete(list* lptr,int position){
	//delete an item on the position
	if(position<1 || position>(lptr->count)){
		printf("Position Out of Bound\n");
		return;
	}
	nptr tmp=lptr->head;

	if(position==1){
		lptr->head=tmp->next;
		free(tmp);
	}
	else{
		int i;
		for(i=1;i<position-1;i++){
			tmp=tmp->next;
		}
		nptr tmp2=tmp->next;
		tmp->next=tmp2->next;
		free(tmp2);
	}
	lptr->count--;
}

*/

BBNode* search(list* lptr,unsigned int node_id){
	//traverse the list and
	//find the first position of the value (first from head)
	//if not exist, return 0
	nptr tmp=lptr->head;
	int i=1;
	while(tmp!=NULL){
		if(node_id==tmp->value->node_id) break;
		i++;
		tmp=tmp->next;
	}
	if(i>lptr->count){
		//printf("The value %d is NOT exists\n",node_id);
		return NULL;
	}
	else{
		//printf("The value %d is at position %d in the list\n",node_id,i);
		return tmp->value;
	}
}




/*
void modify(list* lptr,int value,int position){
	if(position<1 || position>(lptr->count)){
		printf("Position Out of Bound\n");
		return;
	}
	nptr tmp=lptr->head;

	int i;
	for(i=1;i<position;i++){
		tmp=tmp->next;
	}
	tmp->value=value;
}
*/

void print_list(list* lptr){
	nptr tmp=lptr->head;
	printf("List value: ");
	while(tmp!=NULL){
		printf("node_id %d, connectionNum: %d, connectionArr[0]: %d \n",tmp->value->node_id, tmp->value->currentNum, tmp->value->connectionArr[0]);
		tmp=tmp->next;
	}
	printf("\n");
	printf("Total: %d value(s)\n",lptr->count);
}
