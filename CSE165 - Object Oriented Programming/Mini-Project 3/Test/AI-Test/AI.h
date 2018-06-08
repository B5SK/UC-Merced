#ifndef AI_H
#define AI_H
#include "Player.h"
#include <iterator>
#include <stdlib.h>

struct AI: public Player{

	std::map<int, int> moves;//Moves that AI can make

	AI(){
		moves[0] = 0;
		moves[1] = 1;
		moves[2] = 2;
		moves[3] = 3;
		moves[4] = 4;
		moves[5] = 5;
		moves[6] = 6;
		moves[7] = 7;
		moves[8] = 8;
	}

	void MoveCompleted(int player){
		moves.erase(player);

	}

	int random(int max){
		return rand() % max;
	}

	void Move(){
		std::map<int, int>::iterator it = moves.begin();
		std::advance(it, random(moves.size()));

		AI::Turn(it->first);
		AI::MoveCompleted(it->first);
	}


};

#endif