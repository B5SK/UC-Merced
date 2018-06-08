#include "App.h"
#include <iostream>

int main(int argc, char** argv) {
	// Initialize GLUT
	glutInit(&argc, argv);
	glutInitDisplayMode(GLUT_DOUBLE | GLUT_DEPTH);


	std::cout << "Hello! And Welcome to Tic-Tac-Toe" << std::endl;

	std::cout << "In Window, Enter 1 for Single Player Mode" << std::endl;
	std::cout << "Or Enter 2 for Two Player Mode" << std::endl;


    // Instantiate a new App
    App* myApp = new App("MyApp", 50, 50, 600, 600);

	// Start the app
    myApp->run();
}
