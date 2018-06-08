#ifndef PLAYER_H
#define PLAYER_H

#include <map>

struct Player{

	std::map<int, int> marks;//Where the player put the mark
				//From 0 1 2
				//     3 4 5
				//     6 7 8

	Player(){

	}

	void Turn(int placement){
		marks[placement] = placement;

	}

	bool CheckForWin(){
		if(marks.count(0) && marks.count(1) && marks.count(2)){
			return true;
		}
		else if(marks.count(0) && marks.count(4) && marks.count(8)){
			return true;
		}
		else if(marks.count(0) && marks.count(3) && marks.count(6)){
			return true;
		}
		else if(marks.count(1) && marks.count(4) && marks.count(7)){
			return true;
		}
		else if(marks.count(2) && marks.count(5) && marks.count(8)){
			return true;
		}
		else if(marks.count(3) && marks.count(4) && marks.count(5)){
			return true;
		}
		else if(marks.count(6) && marks.count(7) && marks.count(8)){
			return true;
		}
		else if(marks.count(2) && marks.count(4) && marks.count(6)){
			return true;
		}
		else return false;

	}

};

#endif