

#include "BBNode.h"

// An AVL tree node
typedef struct _Node{
    //int key;
	BBNode *key;
    struct _Node *left;
    struct _Node *right;
    int height;
}ATNode;

typedef struct _avl_tree
{
	ATNode* root;
}avl_tree;




void init(avl_tree *tree);
ATNode* insert(ATNode* node, BBNode* key);
BBNode* search(ATNode* node, int findData);

int max(int a, int b);
int height(ATNode *N);
ATNode* newNode(BBNode* key);
ATNode *rightRotate(ATNode *y);
ATNode *leftRotate(ATNode *x);
void preOrder(ATNode *root);
int getBalance(ATNode *N);


