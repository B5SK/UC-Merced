//
// Created by B5SK on 2/16/2018.
//

#ifndef RECT_H
#define RECT_H

#include "Vec.h"

class Rect{

    float x,y,w,h;//(x,y) for upper-left corner position
                    //w = width;
                    //h = height;

public:

    Rect(float x, float y, float w, float h){
        this->x = x;
        this->y = y;
        this->w = w;
        this->h = h;
    }

    bool contains(Vec v) const{
        if(v.getX() >= x){
            if(v.getX() <= x+w){
                if(v.getY() <= y){
                    if(v.getY() >= y-h){
                        return true;
                    }
                }
            }
        }
        return false;
    }

};

#endif //LAB4_RECTANGLES_RECT_H
