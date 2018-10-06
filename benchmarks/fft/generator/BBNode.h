

#define ACES_BBNODE
#ifndef ACES_BBNODE

typedef struct bbnode
{
	unsigned int node_id;
	unsigned int connectionType;
	unsigned int connectionNum;
	unsigned int* connectionArr;
	unsigned int currentNum;

} BBNode;

#endif
