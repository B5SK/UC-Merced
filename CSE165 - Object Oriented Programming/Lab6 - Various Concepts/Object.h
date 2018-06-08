//
// Created by B5SK on 3/3/2018.
//

#ifndef OBJECT_H
#define OBJECT_H

struct Object{

    static int count;

    Object(){
        count++;
    }

    Object(const Object& someObject){
        count++;
    }

};

#endif //LAB6_VARIOUS_CONCEPTS_OBJECT_H
