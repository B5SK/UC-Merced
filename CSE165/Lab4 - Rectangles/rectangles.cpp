//
// Created by B5SK on 2/16/2018.
//

#include <iostream>
#include "Rect.h"

int main(int argc, const char * argv[])
{

    Rect a(-5.0f,-5.0f,2.0f,2.0f), b(5.0f,8.0f,2.0f,2.0f);
    if ( a.contains(Vec(0.0f, 0.0f)) ) std::cout<<"error1\n";
    if ( b.contains(Vec(.0f, 0.0f)) ) std::cout<<"error2\n";
    if ( !a.contains(Vec(-4.0f,-6.0f)) ) std::cout<<"error3\n";
    if ( b.contains(Vec(6.0f,9.0f)) ) std::cout<<"error4\n";
    std::cout << "Done\n";
    return 0;
}
