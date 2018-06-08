#include "App.h"

//Get static count/label working
int Rect::count = 0;
int X::count = 0;
int Circle::count = 0;
App::App(const char* label, int x, int y, int w, int h): GlutApp(label, x, y, w, h){
    // Initialize state variables
    mx = 0.0;
    my = 0.0;

	Comp = new AI();

	P1 = new Player();
	P2 = new Player();

	GameIsOver = false;
	SwitchTurn = false;

//Initialize all X with color black to blend with background
	float a, b, c, d;//To make the declaration easier to code
	//		a   b       c     d     a     d      c     b
       //X* x0 = new X(-0.9, 0.9, -0.35, 0.35, -0.9, 0.35, -0.35, 0.9);//Top Left - Label: 0
	a = -0.9;
	b = 0.9;
	c = -0.35;
	d = 0.35;
	X* x0 = new X(a, b, c, d, a, d, c, b);//Top Left - Label: 0

	a = -0.25;
	b = 0.9;
	c = 0.25;
	d = 0.35;
	X* x1 = new X(a, b, c, d, a, d, c, b);//Top Middle

	a = 0.35;
	b = 0.9;
	c = 0.9;
	d = 0.35;
	X* x2 = new X(a, b, c, d, a, d, c, b);// Top Right

	a = -0.9;
	b = 0.25;
	c = -0.35;
	d = -0.25;
	X* x3 = new X(a, b, c, d, a, d, c, b);//Middle Left

	a = -0.25;
	b = 0.25;
	c = 0.25;
	d = -0.25;
	X* x4 = new X(a, b, c, d, a, d, c, b);//Middle Middle

	a = 0.35;
	b = 0.25;
	c = 0.9;
	d = -0.25;
	X* x5 = new X(a, b, c, d, a, d, c, b);//Middle Right

	a = -0.9;
	b = -0.35;
	c = -0.35;
	d = -0.9;
	X* x6 = new X(a, b, c, d, a, d, c, b);//Bottom Left

	a = -0.25;
	b = -0.35;
	c = 0.25;
	d = -0.9;
	X* x7 = new X(a, b, c, d, a, d, c, b);//Bottom Middle

	a = 0.35;
	b = -0.35;
	c = 0.9;
	d = -0.9;
	X* x8 = new X(a, b, c, d, a, d, c, b);//Bottom Right

	Xs.push_back(x0);
	Xs.push_back(x1);
	Xs.push_back(x2);
	Xs.push_back(x3);
	Xs.push_back(x4);
	Xs.push_back(x5);
	Xs.push_back(x6);
	Xs.push_back(x7);
	Xs.push_back(x8);

//Initialize all Circles with color black to blend with background
	Circle* c0 = new Circle(Vec(-0.9 + 0.275, 0.9 - 0.275), 0.25, 10);
		//Top Left: Label - 1

	Circle* c1 = new Circle(Vec(0, 0.9 - 0.275), 0.225, 10);
		//Top Middle

	Circle* c2 = new Circle(Vec(0.9 - 0.275, 0.9 - 0.275), 0.25, 10);
		//Top Right

	Circle* c3 = new Circle(Vec(-0.9 + 0.275, 0), 0.225, 10);
		//Middle Left

	Circle* c4 = new Circle(Vec(0, 0), 0.225, 10);
		//Middle Middle

	Circle* c5 = new Circle(Vec(0.9 - 0.275, 0), 0.225, 10);
		//Middle Right

	Circle* c6 = new Circle(Vec(-0.9 + 0.275, -0.9 + 0.275), 0.25, 10);
		//Bottom Left

	Circle* c7 = new Circle(Vec(0, -0.9 + 0.275), 0.225, 10);
		//Bottom Middle

	Circle* c8 = new Circle(Vec(0.9 - 0.275, -0.9 + 0.275), 0.25, 10);
		//Bottom Right

	Circles.push_back(c0);
	Circles.push_back(c1);
	Circles.push_back(c2);
	Circles.push_back(c3);
	Circles.push_back(c4);
	Circles.push_back(c5);
	Circles.push_back(c6);
	Circles.push_back(c7);
	Circles.push_back(c8);

//Initialize Tic-Tac-Toe ClickBox in Black
	Rect* cb0 = new Rect(-0.9, 0.9, 0.55, 0.55);//Top left- Label: 0
	cb0->setR(0);
	cb0->setG(0);
	cb0->setB(0);

	Rect* cb1 = new Rect(-0.25, 0.9, 0.5, 0.55);//Top Middle - L: 1
	cb1->setR(0);
	cb1->setG(0);
	cb1->setB(0);

	Rect* cb2 = new Rect(0.35, 0.9, 0.55, 0.55);//Top Right - L: 2
	cb2->setR(0);
	cb2->setG(0);
	cb2->setB(0);

	Rect* cb3 = new Rect(-0.9, 0.25, 0.55, 0.5);//Middle Left - L: 3
	cb3->setR(0);
	cb3->setG(0);
	cb3->setB(0);

	Rect* cb4 = new Rect(-0.25, 0.25, 0.5, 0.5);//Middle Middle - L: 4
	cb4->setR(0);
	cb4->setG(0);
	cb4->setB(0);

	Rect* cb5 = new Rect(0.35, 0.25, 0.55, 0.5);//Middle Right - L: 5
	cb5->setR(0);
	cb5->setG(0);
	cb5->setB(0);

	Rect* cb6 = new Rect(-0.9, -0.35, 0.55, 0.55);//Bottom Left - L: 6
	cb6->setR(0);
	cb6->setG(0);
	cb6->setB(0);

	Rect* cb7 = new Rect(-0.25, -0.35, 0.5, 0.55);//Bottom Middle - L: 7
	cb7->setR(0);
	cb7->setG(0);
	cb7->setB(0);

	Rect* cb8 = new Rect(0.35, -0.35, 0.55, 0.55);//Bottom Right - L: 8
	cb8->setR(0);
	cb8->setG(0);
	cb8->setB(0);

	ClickBox.push_back(cb0);
	ClickBox.push_back(cb1);
	ClickBox.push_back(cb2);
	ClickBox.push_back(cb3);
	ClickBox.push_back(cb4);
	ClickBox.push_back(cb5);
	ClickBox.push_back(cb6);
	ClickBox.push_back(cb7);
	ClickBox.push_back(cb8);

//Initialize Tic-Tac-Toe Board in White
	//Static counter still going on so these Rect* will be initialized down here
	Rect* b1 = new Rect(-0.35, 0.9, 0.1, 1.8);
	Rect* b2 = new Rect(0.25, 0.9, 0.1, 1.8);
	Rect* b3 = new Rect(-0.9, -0.25, 1.8, 0.1);
	Rect* b4 = new Rect(-0.9, 0.35, 1.8, 0.1);

	Board.push_back(b1);
	Board.push_back(b2);
	Board.push_back(b3);
	Board.push_back(b4);

}

void App::draw() {

    // Clear the screen
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    
    // Set background color to black
    glClearColor(0.0, 0.0, 0.0, 1.0);
    
    // Set up the transformations stack
    glMatrixMode(GL_MODELVIEW);
    glLoadIdentity();

/* Line Test

	glColor3f(0, 0, 0);

	glLineWidth(10);

	glBegin(GL_LINES);

	glVertex2f(0, 0);
	glVertex2f(1, 1);

	glEnd();
*/

/* OVERLAPPING THE POLYGONS

	The first initialized polygons will be on top of all polygons
	The last will be overlapped by the ones written before it

*/

//Draw Circle
	std::deque<Circle*>::size_type k;

	for(k = 0; k != Circles.size(); k++){

		glColor3f(Circles[k]->GetR(), Circles[k]->GetG(), Circles[k]->GetB());

		glLineWidth(7);

		std::vector<Vec*> points = Circles[k]->GetPoints();

		std::vector<Vec*>::size_type m;

		float x, x0, y, y0;

		x0 = x = points[0]->getX();
		y0 = y = points[0]->getY();

		for(m = 1; m != points.size(); m++){
			glBegin(GL_LINES);

			glVertex2f(x, y);
			glVertex2f(points[m]->getX(), points[m]->getY());

			x = points[m]->getX();
			y = points[m]->getY();

			glEnd();
		}
			glBegin(GL_LINES);

			glVertex2f(x,y);
			glVertex2f(x0,y0);

			glEnd();
			
	}


//Draw X's
	float x1, x2, x3, x4, y1, y2, y3, y4;

	/*(x1,y1)   (x4,y4)
		 \ /
		 / \
	  (x3,y3)   (x2,y2)
	*/

	std::deque<X *>::size_type j;

	for(j = 0; j != Xs.size(); j++){
		
		x1 = Xs[j]->Getx1();
		x2 = Xs[j]->Getx2();
		x3 = Xs[j]->Getx3();
		x4 = Xs[j]->Getx4();
		y1 = Xs[j]->Gety1();
		y2 = Xs[j]->Gety2();
		y3 = Xs[j]->Gety3();
		y4 = Xs[j]->Gety4();

		glColor3f(Xs[j]->GetR(), Xs[j]->GetG(), Xs[j]->GetB());

		glLineWidth(8);

		glBegin(GL_LINES);

		glVertex2f(x1, y1);
		glVertex2f(x2, y2);

		glEnd();

		glColor3f(Xs[j]->GetR(), Xs[j]->GetG(), Xs[j]->GetB());

		glLineWidth(8);

		glBegin(GL_LINES);
		glVertex2f(x3, y3);
		glVertex2f(x4, y4);

		glEnd();

	}


//Draw Rectangles

	//Draw Tic-Tac-Toe Board
	float x,y,w,h;

	std::deque<Rect *>::size_type i;

	for(i = 0; i != Board.size(); i++){
	
		x = Board[i]->getX();
		y = Board[i]->getY();
		w = Board[i]->getW();
		h = Board[i]->getH();

	    	glColor3f(Board[i]->getR(), Board[i]->getG(), Board[i]->getB());

		glBegin(GL_POLYGON);

		glVertex2f(x, y);
		glVertex2f(x + w, y);
		glVertex2f(x + w, y - h);
		glVertex2f(x, y - h);

		glEnd();

	}

	//Draw ClickBoxes - Should blend in with background

	for(i = 0; i != ClickBox.size(); i++){
	
		x = ClickBox[i]->getX();
		y = ClickBox[i]->getY();
		w = ClickBox[i]->getW();
		h = ClickBox[i]->getH();

	    	glColor3f(ClickBox[i]->getR(), ClickBox[i]->getG(), ClickBox[i]->getB());

		glBegin(GL_POLYGON);

		glVertex2f(x, y);
		glVertex2f(x + w, y);
		glVertex2f(x + w, y - h);
		glVertex2f(x, y - h);

		glEnd();

	}

    
    // We have been drawing everything to the back buffer
    // Swap the buffers to see the result of what we drew
    glFlush();
    glutSwapBuffers();
}

void App::mouseDown(float x, float y){
    // Update app state
    mx = x;
    my = y;

	//Red X = Player1
	//Green O = Player2 or AI

	std::deque<Rect*>::size_type i;
	int label;

	//map+if-statements to detect illegal moves

if(!GameIsOver){
	if(mode == 0){//Single Player
		for(i = 0; i != ClickBox.size(); i++){//Player 1
			if(ClickBox[i]->contains(mx, my)){
				label = ClickBox[i]->getLabel();

				if(illegal.count(label)) break;

				illegal[label] = label;


				//Show Mark X
				Xs[label]->setR(1.0);

				//Register Player Move into Player 1 Object
				P1->Turn(label);
				//Register Player Move into AI and delete the move from its directory
				Comp->MoveCompleted(label);

				//Check If Player 1 Won
				if(P1->CheckForWin()){
					std::cout << std::endl;
					std::cout << "Player 1 has won!" << std::endl;
					std::cout << std::endl;
					GameIsOver = true;
				}
				else if(illegal.size() != 9){//Start AI's move
					label = Comp->Move();

					illegal[label] = label;

					Circles[label]->setG(1.0);
				}

				if(Comp->CheckForWin()){
					std::cout << std::endl;
					std::cout <<"The AI has won!" << std::endl;
					std::cout << std::endl;
					GameIsOver = true;
				}
			}

		}
	}
	else if(mode == 1){//Two Player
		for(i = 0; i != ClickBox.size(); i++){//Check for Hit
			if(ClickBox[i]->contains(mx, my)){
				if(turn == 0){//Player 1's turn
					label = ClickBox[i]->getLabel();

					if(illegal.count(label)){//Check if illegal move
						SwitchTurn = false;
						break;

					}

					illegal[label] = label;

					//Show Mark X
					Xs[label]->setR(1.0);

					//Register Player Move into Player 1 Object
					P1->Turn(label);

					if(P1->CheckForWin()){
						std::cout << std::endl;
						std::cout << "Player 1 has won!" << std::endl;
						std::cout << std::endl;
						GameIsOver = true;
					}
					else{
						SwitchTurn = true;
						break;
					}

				}
				else{//Player 2's turn
					label = ClickBox[i]->getLabel();

					if(illegal.count(label)) {
						SwitchTurn = false;
						break;
					}

					illegal[label] = label;

					//Show Mark X
					Circles[label]->setG(1.0);

					//Register Player Move into Player 1 Object
					P2->Turn(label);

					if(P2->CheckForWin()){
						std::cout << std::endl;
						std::cout << "Player 2 has won!" << std::endl;
						std::cout << std::endl;
						GameIsOver = true;
					}
					else{
						SwitchTurn = true;
						break;

					}

				}
			}
		}	


		if(turn == 0 && SwitchTurn == true){//Turn switches to Player 2
			turn = 1;
		}
		else if (turn == 1 && SwitchTurn == true){//Turn switches to Player 1
			turn = 0;
		}
	}

}

if(illegal.size() == 9 && GameIsOver == false){
	std::cout << std::endl;
	std::cout << "Tie! Restart Game to Play again" << std::endl;	
	std::cout << std::endl;
	GameIsOver = true;
	

}
    
    // Redraw the scene
    redraw();
}

void App::mouseDrag(float x, float y){
    // Update app state
    mx = x;
    my = y;
    
    // Redraw the scene
    redraw();
}

void App::keyPress(unsigned char key) {
	if(key == '1'){

		if(mode == -1){
			std::cout << std::endl;
			std::cout << "Single Player Mode Initialized" << std::endl;		
			std::cout << std::endl;
			mode = 0;

		}
	}
	if(key == '2'){

		if(mode == -1){
			std::cout << std::endl;
			std::cout << "Two Player Mode Initialized" << std::endl;
			std::cout << std::endl;
			mode = 1;
		}
	}

	//Key To Reset App Without Closing

    if (key == 27){
        // Exit the app when Esc key is pressed
        exit(0);
    }
}
