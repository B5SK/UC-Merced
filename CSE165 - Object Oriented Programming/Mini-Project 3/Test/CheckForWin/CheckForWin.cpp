#include "Player.h"
#include <iostream>

using namespace std;

int Player::label = 0;

int main(){

	Player* p = new Player();
	Player* p2 = new Player();
	Player* p3 = new Player();

	p->Turn(0);
	p->Turn(1);
	p->Turn(2);

	cout << "CheckForWin Test" << endl;
	if(p->CheckForWin()){
		cout << "Successfully won" << endl;
	}
	else cout << "Failed!" << endl << endl;;

	cout << "Player Label Test" << endl;
	cout << p->GetLabel() << endl;
	cout << p2->GetLabel() << endl;
	cout << p3->GetLabel() << endl;

}