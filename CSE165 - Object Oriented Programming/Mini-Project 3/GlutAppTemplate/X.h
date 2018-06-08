
#ifndef X_H
#define X_H

struct X{

	int label;
	static int count;

	float x1,y1,x2,y2;//First coordinate (x1,y1)
				//Second coordinate (x2,y2)
	float x3, y3, x4, y4;

	float r,g,b;//To allow the app to change the color

	X(float x1, float y1, float x2, float y2, float x3, float y3,
		float x4, float y4) : label(count++){
		r = 0.0;
		g = 0.0;
		b = 0.0;

		this->x1 = x1;
		this->y1 = y1;
		this->x2 = x2;
		this->y2 = y2;
		this->x3 = x3;
		this->y3 = y3;
		this->x4 = x4;
		this->y4 = y4;
	}

//Getters
	float GetLabel() const{
		return label;
	}

	float Getx1() const{
		return x1;
	}

	float Gety1() const{
		return y1;
	}

	float Getx2() const{
		return x2;
	}

	float Gety2() const{
		return y2;
	}

	float Getx3() const{
		return x3;
	}

	float Gety3() const{
		return y3;
	}

	float Getx4() const{
		return x4;
	}

	float Gety4() const{
		return y4;
	}

	float GetR() const{
		return r;
	}

	float GetG() const{
		return g;
	}

	float GetB() const{
		return b;
	}

//Setters
	void setR(float r){
		this->r = r;
	}

	void setG(float g){
		this->g = g;
	}

	void setB(float b){
		this->b = b;
	}

};

#endif