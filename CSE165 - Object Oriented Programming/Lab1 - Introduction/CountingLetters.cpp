#include <iostream>
#include <fstream>

using namespace std;

int main(){

    ifstream input("words.txt");

    int count = 0;

    char c;

    while(input.get(c)){
        //cout << "c: " << c << endl;
        if((c > 64 && c < 91) || (c > 96 && c < 123)){
            count++;
        }
    }


    input.close();

    cout << count;

    return 0;
}