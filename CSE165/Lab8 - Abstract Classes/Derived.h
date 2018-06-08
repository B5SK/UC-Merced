//
// Created by B5SK on 4/6/2018.
//

#ifndef DERIVED_H
#define DERIVED_H

#include <iostream>
#include "ADT.h"

class Derived : public ADT {

    void doSomething(){
        std::cout << "I did something" << std::endl;

    }

    void doSomethingElse(){
        std::cout << "I did something else" << std::endl;

    }

    void dontDoThis(){

    }

};

#endif
