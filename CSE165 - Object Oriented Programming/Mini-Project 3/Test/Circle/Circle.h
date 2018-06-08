
#ifndef CIRCLE_H
#define CIRCLE_H

#include "Vec.h"
#include "GenerateCircleData.h"
#include <vector>

struct Circle{

	int label;
	static int count;

	float r,g,b;

	std::vector<Vec *> points;

	Circle(const Vec & center, float radius, float resolution) : label(count++){
		generateCircleData(points, center, radius, resolution);
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
	int GetLabel() const{
		return label;
	}

	std::vector<Vec*> GetPoints(){
		return points;
	}


};

#endif