//
// Created by Ben K on 1/26/2018.
//

#include <iostream>
#include <fstream>

using namespace std;

int main(){

    ifstream input("words.txt");

    int count = 0;
    char c;

    while(input.get(c)){
        if((c > 64 && c < 91) || (c > 96 && c < 123) ){
            input.get(c);
            //cout << "c: " << c << endl;
            if(!(c > 64 && c < 91 || (c > 96 && c < 123))) {
                count++;

            }
            input.unget();
        }
    }

    cout << count;

    return 0;
}