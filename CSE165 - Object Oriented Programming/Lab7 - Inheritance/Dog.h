//
// Created by B5SK on 3/16/2018.
//

#ifndef DOG_H
#define DOG_H

#include <iostream>
#include <string>
#include "Animal.h"

class Dog : public Animal{

public:

    Dog(std::string name, int age){
        cout << "Creating Dog" << endl;
        Dog::setName(name);
        Dog:setAge(age);
    }

    void feed(){
        cout << "A bone, please!" << endl;
    }

    ~Dog(){
        cout << "Deleting Dog" << endl;
    }

};

#endif //LAB7_INHERITANCE_DOG_H
