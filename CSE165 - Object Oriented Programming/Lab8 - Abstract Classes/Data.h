//
// Created by B5SK on 4/6/2018.
//

#ifndef DATA_H
#define DATA_H

#include <vector>
#include <iostream>
#include "Sortable.h"

class Data {

    std::vector<Sortable *> collection;

public:

    void add(Sortable * s){
        collection.push_back(s);

    }

    void print(){
        for(int i = 0; i < collection.size(); i++){
            collection[i]->print();
        }
        std::cout << std::endl;

    }


    void sort(){
        int len = collection.size();
        bool swapped = false;

        while(swapped == false){
            for(int i = 1; i < len; i++){
                if(!(collection[i-1]->compare(collection[i]))){
                    Sortable * temp = collection[i-1];
                    collection[i-1] = collection[i];
                    collection[i] = temp;

                    swapped = true;

                }

            }

            for(int i = 0; i < len-1; i++){
                if(!(collection[i]->compare(collection[i+1]))){
                    swapped = false;
                    break;

                }
            }


        }

    }


};

#endif //LAB8_ABSTRACT_CLASSES_DATA_H
