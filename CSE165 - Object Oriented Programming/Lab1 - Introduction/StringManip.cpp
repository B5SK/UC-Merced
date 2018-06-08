//
// Created by Ben K on 1/30/2018.
//

#include <iostream>
#include <vector>

using namespace std;

int main(){

    string input;

    getline(cin, input);

    vector<string> acronym;

    while(input != "quit"){

        if(input.length() > 1){
            acronym.push_back(input);

        }
        else if (input.length() == 1){
            for(vector<string>::const_iterator it = acronym.begin(); it != acronym.end(); it++){
                string output = *it;
                if(input[0] == output[0]){
                    cout << output << endl;
                }

            }

        }

        getline(cin, input);
    }


    return 0;
}