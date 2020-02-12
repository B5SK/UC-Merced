#include <sstream>
#include <iostream>
#include <string>
#include "BST.h"

using namespace std;

/****************************************************************
 * CONSTRUCTOR
 *   Creates an empty binary tree
 ****************************************************************/
BST::BST() {
  root = NULL;
}

/****************************************************************
 * DESTRUCTOR
 *   Free all memory used by current tree
 ****************************************************************/
BST::~BST() {
  // Write code to remove and deallocate all nodes in the tree
  /*delete (left):
  delete (right);*/
}

void BST::Insert(int toInsert) {
  // Write your code here

  Node* y = NULL;
  Node* x = root;
  Node* z = new Node;
  z->val = toInsert;

  while(x != NULL){
    y = x;
    if(z->val < x->val) x = x->left;
    else x = x->right;
  }

  z->parent = y;

  if(y == NULL){
    root = z;
  }
  else if(z->val < y->val) y->left = z;
  else y->right = z;

}

void BST::Delete(int toDelete) {
  // Write your code here
  Node* z = Search(toDelete);

  if(z->left == NULL){
    Transplant(z, z->right);
  }
  else if(z->right == NULL){
    Transplant(z, z->left);
  }
  else{
    Node* y = Minimum(z->right);

    if(y->parent != z){
        Transplant(y, y->right);
        y->right = z->right;
        y->right->parent = y;
    }
    Transplant(z, y);
    y->left = z->left;
    y->left->parent = y;
  }

}

void BST::Transplant(Node *u, Node *v) {
  // Write your code here

  if(u->parent == NULL){
    root = v;
  }
  else if(u == u->parent->left){
    u->parent->left = v;
  }
  else u->parent->right = v;

  if(v != NULL){
    v->parent = u->parent;
  }
}

Node *BST::Successor(Node *x) {
  // Write your code here
  if(x->right != NULL){
    return Minimum(x->right);
  }
  Node* y = x->parent;

  while(y != NULL && x == y->right){
    x = y;
    y = y->parent;
  }
  return y;
}

Node *BST::Minimum(Node *x) {
  // Write your code here
  while(x->left != NULL){
    x = x->left;
  }
  return x;
}

Node *BST::Maximum(Node *x) {
  // Write your code here
  while(x->right != NULL){
    x = x->right;
  }
  return x;
}

Node *BST::Search(int toFind) {
  // Write your code here
  Node* x = root;

  while(x != NULL && toFind != x->val){
    if(toFind < x->val) x = x->left;
    else x = x->right;
  }
  return x;

}

void BST::Print(TraversalOrder Order) {
  if(Order==InOrderTrav)
    InOrder(root);
  else if(Order==PreOrderTrav)
    PreOrder(root);
  else if(Order==PostOrderTrav)
    PostOrder(root);
}

void BST::PreOrder(Node *x) {
  // Write your code here
  if(x == NULL) return;

  cout << x->val << endl;
  PreOrder(x->left);
  PreOrder(x->right);
}

void BST::InOrder(Node *x) {
  // Write your code here
  if(x == NULL) return;

  InOrder(x->left);
  cout << x->val << endl;
  InOrder(x->right);
}

void BST::PostOrder(Node *x) {
  // Write your code here
  if(x == NULL) return;

  PostOrder(x->left);
  PostOrder(x->right);
  cout << x->val << endl;
}

/*int main(int argc,char **argv) {

  // Create an empty Binary Search Tree
  BST Tree;

  // Using a fixed size buffer for reading content is not always safe,
  // but ok here because we know how our input has to be:
  char line[100];

  // Main loop
  while ( std::cin.getline(line,100) )
  {
    string str(line);
    if ( str.size()==0 ) continue;
    if ( str[0]=='e' ) return 1;

	// Use cerr if you want to always print to the console, because cout
	// will be redirected to the output file when calling the Grade05 script:
    // cerr<<line<<endl;

    if ( str[0]=='o' )
     {
      if ( str.substr(0,3)=="oin" )
      {
        Tree.Print(BST::InOrderTrav);
      }
	  else if ( str.substr(0,4)=="opre" )
      {
        Tree.Print ( BST::PreOrderTrav );
      }
	  else if (str.substr(0,5) == "opost")
      {
        Tree.Print(BST::PostOrderTrav);
      }
     }
	else
	 {
        int key;
       stringstream convert_stm(str.substr(1,str.size()-1));
       if ( !(convert_stm>>key) ) key = -1;

       if (str.substr(0,1) == "i") Tree.Insert(key);
       else
       if (str.substr(0,1) == "d") Tree.Delete(key);
	 }
  }

  return 1;
}*/
