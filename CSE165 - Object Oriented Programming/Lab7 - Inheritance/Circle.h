//
// Created by B5SK on 3/16/2018.
//

#ifndef CIRCLE_H
#define CIRCLE_H


class Circle{

    double x, y, r;

public:

    double PI = 3.14159;
    double area;

    Circle(){
        x = 0;
        y = 0;
        r = 1;

        area = r * r * PI;
    }

    Circle(double x, double y, double radius){
        this->x = x;
        this->y = y;
        this->r = radius;

        area = radius * radius * PI;
    }


    double getX() const {
        return x;
    }

    void setX(double x) {
        Circle::x = x;
    }

    double getY() const {
        return y;
    }

    void setY(double y) {
        Circle::y = y;
    }

    double getR() const {
        return r;
    }

    void setR(double r) {
        UpdateArea(r);

        Circle::r = r;
    }

    void UpdateArea(double r){
        area = r * r * PI;
    }

};

#endif
