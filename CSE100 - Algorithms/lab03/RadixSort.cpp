#include <iostream>
#include <stdlib.h>
#include <string>
#include <vector>

using namespace std;

void RadixSort(vector<vector<int> > & Vec, int Rows){

    for(int i = 9; i>=0; i--){//Check Columns

        for(int j = 0; j < Rows; j++){

            for(int k = 0; k < Rows-1; k++){
                if(Vec[k][i] > Vec[k+1][i]){
                    Vec[k].swap(Vec[k+1]);
                }
            }
        }
    }
}





int main(int argc, char** argv){

    int Rows = 0;

    cin >> Rows;
    cin.ignore();

    vector<vector<int> > Vec(Rows);
    vector<vector<int> >::iterator LevelOne;
    vector<int>::iterator LevelTwo;

        /*
    for(int i = 0; i < Rows; i++){
        for(int j = 0; j< 10; j++){
            int Entry;
            cin >> Entry;
            Vec[i].push_back(Entry);
        }
    }*/
    char input[100];
    for(int i = 0; i < Rows; i++){
        int x = 0;
        cin.getline(input, sizeof(input));
        for(int j = 0; j<10; j++){
            int Entry = input[x] - '0';
            Vec[i].push_back(Entry);
            x = x + 2;
        }
    }

    RadixSort(Vec, Rows);


    for(LevelOne = Vec.begin(); LevelOne != Vec.end(); LevelOne++){
        for(LevelTwo = LevelOne->begin(); LevelTwo != LevelOne->end(); LevelTwo++){
            cout << *LevelTwo << ";";
        }
        cout << endl;
    }

    return 0;
}
