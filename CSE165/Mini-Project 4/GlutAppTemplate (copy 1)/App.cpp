#include "App.h"

static App* Shock;

void explode(int value){
    
    if (!Shock->object->done()){
        Shock->object->advance();
        Shock->redraw();
        glutTimerFunc(32, explode, value);
    }
}

App::App(const char* label, int x, int y, int w, int h): GlutApp(label, x, y, w, h){
    // Initialize state variables
    
    Shock = this;
    mx = 0.0;
    my = 0.0;
    
    
    object = new MushroomMineBomb("mushroom.bmp", "fireball.bmp", 6, 6, 0, 0.67, 0.5, 0.5);
    

}

void App::draw() {

    // Clear the screen
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    
    // Set background color to black
    glClearColor(0.0, 0.0, 0.0, 1.0);
    
    // Set up the transformations stack
    glMatrixMode(GL_MODELVIEW);
    glLoadIdentity();
    
    // Set Color
    glColor3d(1.0, 1.0, 1.0);
    
    object->draw();
    
    glDisable(GL_TEXTURE_2D);
    
    // We have been drawing everything to the back buffer
    // Swap the buffers to see the result of what we drew
    glFlush();
    glutSwapBuffers();
}

void App::mouseDown(float x, float y){
    // Update app state
    mx = x;
    my = y;

	if(object->clicked(mx, my)){
	explode(0);
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

void App::idle(){
    redraw();
}

void App::keyUp(unsigned char key) {

}

void App::keyPress(unsigned char key) {
    if (key == 27){
        // Exit the app when Esc key is pressed

        delete object;
        
        exit(0);
    }
    /*else if (key == ' '){
        //object->reset();
        explode(0);
    }*/
    
    
}
