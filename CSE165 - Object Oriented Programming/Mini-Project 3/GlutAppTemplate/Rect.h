

#ifndef RECT_H
#define RECT_H

struct Rect{

	float x,y,w,h;	//(x,y) top left corner of rectangle
			//w = width;
			//h = height;

	float r,g,b;

	static int count;//Counts the number object
	int label = 0;//That number object becomes the object's label or ID

	bool selected;

	Rect(){
		x = y = w = h = 0;
	}

	Rect(float x, float y, float w, float h) : label(count++){
		this->x = x;
		this->y = y;
		this->w = w;
		this->h = h;

		r = 1.0;
		g = 1.0;
		b = 1.0;
	}

	Rect(float x, float y, float w, float h, int label){
		this->x = x;
		this->y = y;
		this->w = w;
		this->h = h;

		r = 1.0;
		g = 1.0;
		b = 1.0;

		this->label = label;
	}

//Getters
	float getX() const{
		return x;
	}

	float getY() const{
		return y;
	}

	float getW() const{
		return w;
	}

	float getH() const{
		return h;
	}

	float getR() const{
		return r;
	}

	float getG() const{
		return g;
	}

	float getB() const{
		return b;
	}

	float getSelected() const{
		return selected;
	}

	float getLabel() const{
		return label;
	}

//Setters
	float setX(float x){
		this->x = x;
	}

	float setY(float y){
		this->y = y;
	}

	float setW(float w){
		this->w = w;
	}

	float setH(float h){
		this->h = h;
	}

	float setR(float r){
		this->r = r;
	}

	float setG(float g){
		this->g = g;
	}

	float setB(float b){
		this->b = b;
	}

	float setSelected(bool selected){
		this->selected = selected;
	}

	float setLabel(int label){
		this->label = label;
	}

//Contains
	bool contains(float x, float y) {
		if(x >= this->x){
			if(x <= this->x + w){
				if(y <= this->y){
					if(y >= this->y - h){
						return true;
					}
				}
			}
		}

		return false;
	}

	~Rect(){
	
	}

};


#endif // RECT_H