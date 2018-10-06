
#include "aces_list.h"
#include "BBInfo.h"

int main(){
	list* mylist=(list*)malloc(sizeof(list));
	init(mylist);

	BBInfo* tmp = (BBInfo*)malloc(sizeof(BBInfo));
	tmp->node_id = 0x10001;
	tmp->numConnection = 1;
	tmp->nextNode[0] = 0x10002;
	tmp->nextNode[1] = 0x0;
	insert(mylist, tmp);

	tmp = (BBInfo*)malloc(sizeof(BBInfo));
	tmp->node_id = 0x30001;
	tmp->numConnection = 1;
	tmp->nextNode[0] = 0x30002;
	tmp->nextNode[1] = 0x0;
	insert(mylist, tmp);
	
	tmp = (BBInfo*)malloc(sizeof(BBInfo));
	tmp->node_id = 0x30002;
	tmp->numConnection = 1;
	tmp->nextNode[0] = 0x30003;
	tmp->nextNode[1] = 0x0;
	insert(mylist, tmp);
	
	tmp = (BBInfo*)malloc(sizeof(BBInfo));
	tmp->node_id = 0x30003;
	tmp->numConnection = 1;
	tmp->nextNode[0] = 0x30004;
	tmp->nextNode[1] = 0x0;
	insert(mylist, tmp);
	
	tmp = (BBInfo*)malloc(sizeof(BBInfo));
	tmp->node_id = 0x30004;
	tmp->numConnection = 2;
	tmp->nextNode[0] = 0x30005;
	tmp->nextNode[1] = 0x30006;
	insert(mylist, tmp);
	
	tmp = search(mylist,0x30004);

	printf("id: %x, type: %x, next1: %x, next2: %x \n", \
			tmp->node_id, tmp->numConnection,tmp->nextNode[0],tmp->nextNode[1]);

	tmp = search(mylist,0x30001);

	printf("id: %x, type: %x, next1: %x, next2: %x \n", \
			tmp->node_id, tmp->numConnection,tmp->nextNode[0],tmp->nextNode[1]);



	return 0;
}
