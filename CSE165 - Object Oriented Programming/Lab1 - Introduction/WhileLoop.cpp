#include <iostream>

using namespace std;

int main(){

    int numb;

    cin >> numb;

    while( numb != -1) {
        if (numb % 2 == 0) {
            cout << "EVEN";
        } else {
            cout << "ODD";
        }

        cin >> numb;
    }

    return 0;
}