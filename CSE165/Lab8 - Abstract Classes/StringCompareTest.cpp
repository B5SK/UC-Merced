//
// Created by B5SK on 4/12/2018.
//
#include <iostream>
#include <string>

using namespace std;

int main(){

    string s1 = "Test 3";
    string s2 = "Test 2";

    int z1 = sizeof(s1);
    int z2 = sizeof(s2);

    cout << z1 << " " << z2 << endl;

    if(z1 < z2){
        cout << "T1: True" << endl;
    }
    else if(z1 > z2){
        cout << "T2: False" << endl;
    }


    return 0;
}