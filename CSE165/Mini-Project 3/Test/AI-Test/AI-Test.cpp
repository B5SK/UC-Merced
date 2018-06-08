#include "AI.h"
#include <iostream>

using namespace std;

int main(){

	AI* i = new AI();

	i->MoveCompleted(8);
	i->Move();
	i->MoveCompleted(7);
	i->Move();
	i->MoveCompleted(5);
	i->Move();
	i->MoveCompleted(3);
	i->Move();

	return 0;

}