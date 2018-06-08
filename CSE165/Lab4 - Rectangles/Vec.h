//
// Created by B5SK on 2/16/2018.
//

#ifndef VEC_H
#define VEC_H
#include <iostream>

class Vec{

    float x,y;

public:
    Vec(){
        x = 0;
        y = 0;
    }

    Vec(float x, float y){
        this->x = x;
        this->y = y;
    }

    void setX(float x){
        this->x = x;
    }

    void setY(float y){
        this->y = y;
    }

    float getX() const{
        return x;
    }

    float getY() const{
        return y;
    }

    void add(Vec v){
        this->x += v.x;
        this->y += v.y;
    }

    void print(){
        std::cout << "(" << x << ", " << y << ")";
    }

};

#endif //LAB4_RECTANGLES_VEC_H
