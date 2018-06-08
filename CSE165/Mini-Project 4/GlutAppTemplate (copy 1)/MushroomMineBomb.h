#ifndef MushroomMineBomb_h
#define MushroomMineBomb_h

#if defined WIN32
#include <freeglut.h>
#elif defined __APPLE__
#include <GLUT/glut.h>
#else
#include <GL/freeglut.h>
#endif

#include "RgbImage.h"

class MushroomMineBomb {
    float x;
    float y;
    float w;
    float h;
    GLuint explosion;
	GLuint mushroom;
    int rows;
    int cols;
    
    int curr_row;
    int curr_col;

	bool explodeQ;
    
    bool complete;
public:
    MushroomMineBomb(const char*, const char*, int, int, float, float, float, float);
    
	void contains(bool);
	
	void setExplode(bool);

    bool done();
    
    void draw();
    
    void advance();
    
    void incY();
    
    void reset();

	bool contains(float, float);

	bool clicked(float, float);


};

#endif
