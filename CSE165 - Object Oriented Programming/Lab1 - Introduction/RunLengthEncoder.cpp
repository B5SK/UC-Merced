//
// Created by Ben K on 1/29/2018.
//

#include <iostream>

using namespace std;

int main(){

    int i;
    char c;

    scanf("\n%c%d", &c, &i);

    //cout << "c: " << c << endl;
    //cout << "i: " << i << endl;

    while(i != -2){
        //cout << "c: " << c << endl;
        //cout << "i: " << i << endl;

        if(i == -1){
            cout << endl;
        }
        else {

            int j = 0;

            while (j != i) {
                cout << c;
                j++;
            }

        }

        scanf("\n%c %d", &c, &i);
    }


    return 0;
}