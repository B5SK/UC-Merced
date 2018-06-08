//
// Created by B5SK on 4/6/2018.
//

#ifndef CIRCLE_H
#define CIRCLE_H

class Circle : public Sortable{

public:

    int radius;

    Circle(){
        radius = 0;
    }

    Circle(int radius){
        this->radius = radius;
    }


    bool compare(const Sortable * s){//Returns true if the <this->Circle> is smaller than the parameter-circle
        Circle* a = this;
        const Circle* b = dynamic_cast<const Circle *>(s);

        if(a->radius < b->radius){
            return true;
        }
        else return false;
    }

    void print(){
        std::cout <<"Circle with radius: " << this->radius << std::endl;
    }


};

#endif //LAB8_ABSTRACT_CLASSES_CIRCLE_H
