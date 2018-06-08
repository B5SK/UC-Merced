#include <iostream>
#include <string>
#include <sstream>

using namespace std;

int main(){

    string input;
    int repeat;

    getline(cin, input);
    cin >> repeat;

    for(int i = 0; i < repeat; i++){
        cout << input << endl;

    }


    return 0;
}