// C program to insert a node in AVL tree
#include "aces_avltree.h"
#include<stdio.h>
#include<stdlib.h>

void init(avl_tree *tree)
{
	if(tree==NULL)
	{
		tree=(avl_tree*)malloc(sizeof(avl_tree));
	}
	tree->root=NULL;
}


 
// A utility function to get maximum of two integers
 
// A utility function to get the height of the tree
int height(ATNode *N)
{
    if (N == NULL)
        return 0;
    return N->height;
}
 
// A utility function to get maximum of two integers
int max(int a, int b)
{
    return (a > b)? a : b;
}
 
/* Helper function that allocates a new node with the given key and
    NULL left and right pointers. */
ATNode* newNode(BBNode* key)
{
    ATNode* node = (ATNode*)malloc(sizeof(ATNode));
    node->key   = key;
    node->left   = NULL;
    node->right  = NULL;
    node->height = 1;  // new node is initially added at leaf
    return node;
}
 
// A utility function to right rotate subtree rooted with y
// See the diagram given above.
ATNode *rightRotate(ATNode *y)
{
    ATNode *x = y->left;
    ATNode *T2 = x->right;
 
    // Perform rotation
    x->right = y;
    y->left = T2;
 
    // Update heights
    y->height = max(height(y->left), height(y->right))+1;
    x->height = max(height(x->left), height(x->right))+1;
 
    // Return new root
    return x;
}
 
// A utility function to left rotate subtree rooted with x
// See the diagram given above.
ATNode *leftRotate(ATNode *x)
{
    ATNode *y = x->right;
    ATNode *T2 = y->left;
 
    // Perform rotation
    y->left = x;
    x->right = T2;
 
    //  Update heights
    x->height = max(height(x->left), height(x->right))+1;
    y->height = max(height(y->left), height(y->right))+1;
 
    // Return new root
    return y;
}
 
// Get Balance factor of node N
int getBalance(ATNode *N)
{
    if (N == NULL)
        return 0;
    return height(N->left) - height(N->right);
}
 
// Recursive function to insert a key in the subtree rooted
// with node and returns the new root of the subtree.
ATNode* insert(ATNode* node, BBNode* key)
{

//	printf("insert - begin\n");
    /* 1.  Perform the normal BST insertion */
    if (node == NULL)
        return(newNode(key));
 
    if (key->node_id < node->key->node_id)
        node->left  = insert(node->left, key);
    else if (key->node_id > node->key->node_id)
        node->right = insert(node->right, key);
    else // Equal keys are not allowed in BST
        return node;
 
    /* 2. Update height of this ancestor node */
    node->height = 1 + max(height(node->left),
                           height(node->right));
 
    /* 3. Get the balance factor of this ancestor
          node to check whether this node became
          unbalanced */
    int balance = getBalance(node);
 
    // If this node becomes unbalanced, then
    // there are 4 cases
 
    // Left Left Case
    if (balance > 1 && key->node_id < node->left->key->node_id)
        return rightRotate(node);
 
    // Right Right Case
    if (balance < -1 && key->node_id > node->right->key->node_id)
        return leftRotate(node);
 
    // Left Right Case
    if (balance > 1 && key->node_id > node->left->key->node_id)
    {
        node->left =  leftRotate(node->left);
        return rightRotate(node);
    }
 
    // Right Left Case
    if (balance < -1 && key->node_id < node->right->key->node_id)
    {
        node->right = rightRotate(node->right);
        return leftRotate(node);
    }
 
    /* return the (unchanged) node pointer */
//	printf("insert - finish\n");
    
	return node;
}
 
// A utility function to print preorder traversal
// of the tree.
// The function also prints height of every node
void preOrder(ATNode *root)
{
    if(root != NULL)
    {
        printf("%d \n", root->key->node_id);
        preOrder(root->left);
        preOrder(root->right);
    }
}

BBNode* search(ATNode* node, int findData)
{
	if (node == NULL) 
		return NULL;
	if (node->key->node_id == findData)
		return node->key;
	else if (node->key->node_id > findData)
		search(node->left, findData);
	else
		search(node->right, findData);
}





