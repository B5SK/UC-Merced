//
// Created by Ben K on 1/29/2018.
//

#include <iostream>


using namespace std;

int main(){

    int N; //Inputted Number
    bool b; //Boolean to print

    cin >> N;


    for(int i = 2; i < N+1; i++){
        b = 1;
        int j = 2;

        while(i > j){
            if(i % j == 0){
                b = 0;
                break;
            }
            j++;
        }

        if(b == 1){
            cout << i << endl;
        }

    }

    return 0;
}