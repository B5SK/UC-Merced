
#ifndef CIRCLE_H
#define CIRCLE_H

#include "Vec.h"
#include "GenerateCircleData.h"
#include <vector>

struct Circle{

	int label;
	static int count;

	float r,g,b, resolution;

	std::vector<Vec *> points;

	Circle(const Vec & center, float radius, float resolution) : label(count++){
		this->resolution = resolution;
		geneneratCircleData(points, center, radius, resolution);

		r = 0;
		g = 0;
		b = 0;
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

//Getters
	int GetResolution() const{
		return resolution;
	}

	int GetLabel() const{
		return label;
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

	std::vector<Vec*> GetPoints(){
		return points;
	}


};

#endif