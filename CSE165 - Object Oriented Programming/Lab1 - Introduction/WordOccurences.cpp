//
// Created by Ben K on 1/26/2018.
//

#include <iostream>
#include <fstream>

using namespace std;

int main(){

    //Number of Occurences
    int count = 0;

    ifstream input("words.txt");

    //word from input
    string word;
    //string for concatenating
    string str;
    //Entire string line from the txt file
    string Content;

    cin >> word;

    //Concatenate the strings from txt file
    while(getline(input, str)){
        Content += str + " ";

    }
    //cout << "Content: " << Content << endl;

    for(int i = 0; i < Content.length(); i++){
        if(Content[i] == word[0] || Content[i] == (word[0]+32) || Content[i] == (word[0]-32)){
            for(int j = 1; j < word.length(); j++){
                if(Content[i+j] == word[j] || Content[i+j] == (word[j]+32) || Content[i+j] == (word[j]-32)){
                    //cout << Content[i+j];
                    if(j == word.length()-1){
                        count++;
                    }
                }
            }
            //cout << endl;
        }

    }

    cout << count;

    return 0;
}