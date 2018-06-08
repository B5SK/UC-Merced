#include "App.h"
#include "Rect.h"


App::App(const char* label, int x, int y, int w, int h): GlutApp(label, x, y, w, h){
    // Initialize state variables
    mx = 0.0;
    my = 0.0;


	Rect* r1 = new Rect(-0.3, -0.3, 0.6, 0.6);
	Rect* r2 = new Rect(-0.1, 0.15, 0.8, 0.6);

	DR.push_front(r1);
	DR.push_front(r2);

}

void App::draw() {

    // Clear the screen
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    
    // Set background color to black
    glClearColor(0.0, 0.0, 0.0, 1.0);
    
    // Set up the transformations stack
    glMatrixMode(GL_MODELVIEW);
    glLoadIdentity();
    
//Draw Rectangles

	float x,y,w,h;

	std::deque<Rect *>::size_type i;

	for(i = 0; i != DR.size(); i++){
	
		x = DR[i]->getX();
		y = DR[i]->getY();
		w = DR[i]->getW();
		h = DR[i]->getH();

	    	glColor3f(DR[i]->getR(), DR[i]->getG(), DR[i]->getB());

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


//Check if mouse click is on one of the rectangle
	std::deque<Rect *>::size_type i;

	for(i = 0; i < DR.size(); i++){

		if(DR[i]->contains(mx, my)){

			if(DR[i]->getSelected()){

				break;

			}
			else{

				DR[i]->setR(0.0);
				DR[i]->setG(0.0);
				DR[i]->setB(1.0);
				DR[i]->setSelected(true);

				DR.push_front(DR[i]);
				DR.erase(DR.begin() + i + 1);	

			}

		}
		else{

			DR[i]->setR(1.0);
			DR[i]->setG(1.0);
			DR[i]->setB(1.0);
			DR[i]->setSelected(false);

		}
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
    if (key == 27){
        // Exit the app when Esc key is pressed
        exit(0);
    }
}
