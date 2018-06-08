//
// Created by B5SK on 2/9/2018.
//

#ifndef ENTRY_H
#define ENTRY_H

#include <iostream>
#include <string>

using namespace std;

struct Entry{

    string name, lastname, email;

    void setName(string name){
        this->name = name;

    }

    void setLastname(string lastname){
        this->lastname = lastname;

    }

    void setEmail(string email){
        this->email = email;

    }

    string getName(){
        return name;
    }

    string getLastname(){
        return lastname;
    }

    string getEmail(){
        return email;
    }

    void print(){
        cout << "First Name: " << getName() << endl;
        cout << "Last Name: " << getLastname() << endl;
        cout << "Email: " << getEmail() << endl;

    }


};

#endif //LAB3_STRUCTS_ENTRY_H
