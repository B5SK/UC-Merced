//
// Created by B5SK on 3/16/2018.
//

#include "Dog.h"
#include "display.h"
#include <iostream>
#include <vector>

using namespace std;

int main(){

    vector<Animal *> ToDisplay;

    int count;

    cin >> count;

    char type;
    string name;
    int age;

    while(count != 0){
        cin >> type;
        cin >> name;
        cin >> age;

        if(type == 'A'){//Is Animal
            Animal * push = new Animal();

            push->setName(name);
            push->setAge(age);

            ToDisplay.push_back(push);

        }
        else{//Is Dog
            Dog * push = new Dog(name, age);

            ToDisplay.push_back(push);

        }

        count--;
    }

    display(ToDisplay);

    return 0;
}