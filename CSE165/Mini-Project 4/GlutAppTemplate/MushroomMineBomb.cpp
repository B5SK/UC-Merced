#include "MushroomMineBomb.h"



MushroomMineBomb::MushroomMineBomb (const char* MushroomImage, const char* explodeImage, int rows, int cols, float x=0, float y=0, float w=0.5, float h=0.5){
    glClearColor (0.0, 0.0, 0.0, 0.0);
    glShadeModel(GL_FLAT);
    glEnable(GL_DEPTH_TEST);


	RgbImage Poison(MushroomImage);
	glGenTextures( 1, &mushroom );
    	glBindTexture( GL_TEXTURE_2D, mushroom );
    
    	gluBuild2DMipmaps(GL_TEXTURE_2D, 3, Poison.GetNumCols(), Poison.GetNumRows(),
                      GL_RGB, GL_UNSIGNED_BYTE, Poison.ImageData() );
    	this->mushroom = mushroom;	

	this->x = x;
    this->y = y;
    this->w = w;
    this->h = h;
	
    
    RgbImage Bomb( explodeImage );
    
    glGenTextures( 1, &explosion );
    glBindTexture( GL_TEXTURE_2D, explosion );
    
    gluBuild2DMipmaps(GL_TEXTURE_2D, 3, Bomb.GetNumCols(), Bomb.GetNumRows(),
                      GL_RGB, GL_UNSIGNED_BYTE, Bomb.ImageData() );
    this->explosion = explosion;
    
    this->rows = rows;
    this->cols = cols;
    
    this->x = x;
    this->y = y;
    this->w = w;
    this->h = h;
    
    curr_row = 1;
    curr_col = 1;
    
	explodeQ = false;
    complete = false;
}

bool MushroomMineBomb::done() {
    return complete;
}


void MushroomMineBomb::draw(){

	if(explodeQ == false){
	glBindTexture( GL_TEXTURE_2D, mushroom );
    	glEnable(GL_TEXTURE_2D);
    	glTexEnvf(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE);

		glBegin(GL_QUADS);
    
	    glTexCoord2f(0, 0);
	    glVertex2f(x, y - h);
	    
	    glTexCoord2f(0, 1);
	    glVertex2f(x, y);
	    
	    glTexCoord2f(1, 1);
	    glVertex2f(x+w, y);
	    
	    glTexCoord2f(1, 0);
	    glVertex2f(x+w, y - h);
	    
	    glEnd();
	    
	    glDisable(GL_TEXTURE_2D);

	}
	else{

    glBindTexture( GL_TEXTURE_2D, explosion );
    glEnable(GL_TEXTURE_2D);
    glTexEnvf(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE);
    
    
    float xinc = 1.0/cols;
    float yinc = 1.0/rows;
    
    
    float top = 1 - yinc * (curr_row - 1);
    float bottom = 1 - yinc * curr_row;
    
    float left = xinc * (curr_col - 1);
    float right = xinc * curr_col;
    
    
    glBegin(GL_QUADS);
    
    glTexCoord2f(left, bottom);
    glVertex2f(x, y - h);
    
    glTexCoord2f(left, top);
    glVertex2f(x, y);
    
    glTexCoord2f(right, top);
    glVertex2f(x+w, y);
    
    glTexCoord2f(right, bottom);
    glVertex2f(x+w, y - h);
    
    glEnd();
    
    glDisable(GL_TEXTURE_2D);

	}
}

void MushroomMineBomb::incY(){
    y+=0.01;
}

void MushroomMineBomb::advance(){
    if (curr_col < cols){
        curr_col++;
    }
    else {
        if (curr_row < rows){
            curr_row++;
            curr_col = 1;
        }
        else{
            curr_row = 1;
            curr_col = 1;
        }
    }
    
    if (curr_row == rows && curr_col == cols){
        complete = true;
    }
}

void MushroomMineBomb::reset(){
    complete = false;
}


bool MushroomMineBomb::contains(float mx, float my){
	if(mx >= x && mx <= x+w && my <= y && my >= y - h){
		return true;
	}
	else return false;
}

void MushroomMineBomb::setExplode(bool b){
	explodeQ = b;
}

/*void MushroomMineBomb::explode(int value){//Results in error: Invalid use of non-static member
    
    if (!done()){
        advance();
        draw();
        glutTimerFunc(32, explode, value);
    }
}*/


bool MushroomMineBomb::clicked(float mx, float my){
	if(contains(mx, my)){
		MushroomMineBomb::setExplode(true);
		return true;
	}
	else return false;
}



