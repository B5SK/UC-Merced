#ifndef App_hpp
#define App_hpp

#include "GlutApp.h"
#include "AI.h"
#include "Player.h"
#include <iostream>
#include <deque>
#include "Rect.h"
#include "X.h"
#include "Circle.h"
#include <map>

class App: public GlutApp {
    // Maintain app state here
    float mx;
    float my;
public:
    // Constructor, to initialize state
    App(const char* label, int x, int y, int w, int h);

	//Initialize the X's
	std::deque<X*> Xs;

	//Initialize the O's
	std::deque<Circle*> Circles;

	//Initialize Tic-Tac-Toe Board deque
	std::deque<Rect*> Board;

	//Initialize Tic-Tac-Toe ClickBoxes for player turn detection
	std::deque<Rect*> ClickBox;

	Player *P1, *P2;
	AI *Comp;

	std::map<int, int> illegal;

	bool GameIsOver;

	bool SwitchTurn;

	int turn = 0;//0 for player and 1 for computer/2nd player
	int mode = -1;//Get Mode
		// 0 for player and 1 for computer/2nd player
    
    // These are the events we want to handle
    void draw();
    void keyPress(unsigned char key);
    void mouseDown(float x, float y);
    void mouseDrag(float x, float y);
};

#endif
