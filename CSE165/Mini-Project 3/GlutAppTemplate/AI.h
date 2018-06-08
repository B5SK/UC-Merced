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

	void MoveCompleted(int player){//Update what moves AI can do
		moves.erase(player);

	}

	int random(int max){
		return (rand() * rand() * rand()) % max;
	}

	int Move(){
		std::map<int, int>::iterator it = moves.begin();
		std::advance(it, random(moves.size()));

		AI::Turn(it->first);//Tells AI Player what move it has done for CheckForWin()
		AI::MoveCompleted(it->first);//Deletes the Move from the AI move list

		return it->first;//To show the Player what move it has done
	}


};

#endif