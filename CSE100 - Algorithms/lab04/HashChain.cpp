#include <iostream>
#include <list>

using namespace std;

void CHInsert(list<int> &List, int Key){//Chained Hash Insert
    List.push_front(Key);
}

int CHSearch(list<int> &List, int Key){//Chained Hash Search
    list<int>::iterator it = List.end();
    it--;
    int Index = List.size() - 1;//Count the index. If doesn't exist Index = 0

    /*for(it; it == List.begin(); it--){
        if(Key == *it){
            break;
        }
        Index--;
    }*/
    int j = Index;
    while(j != -1){
        if(Key == *it){
            break;
        }
        it--;
        Index--;
        j--;
    }


    if(Key != *it){
        Index = -1;
    }

    return Index;
}

int CHDelete(list<int> &List, int Key){//Chained Hash Delete
    /*int boolean = 0;
    int Index = CHSearch(List, Key);

    if(Index == -1){
        return boolean;
    }
    //Else
    boolean = 1;

    list<int>::iterator it = List.begin();
    int j = 0;
    while(j < Index){
        it++;
        j++;
    }

    List.erase(it);

    return boolean;*/

    int boolean = 0;
    int Index = 0;

    list<int>::iterator it;

    for(it = List.begin(); it != List.end(); it++){
        if(Key == *it){
            boolean = 1;
            List.erase(it);
            break;
        }
    }

    if(Key != *it){
        boolean = 0;
    }

    return boolean;

    //Return 1 if succeeded
    //Return 0 if failed
}

int main(){
    int Key;
    int Size = 0;
    cin >> Size;

    list<int> HTable[Size];


    char Input[4] = {0,0,0,0};//0 as Sentinel
    cin >> Input;

    while(Input[0] != 'e'){
    //Transcribe the Input numbers into number
        if(Input[2] != 0){
            int Tens = 0;//Tens digit
            int Ones = 0;//Ones digit

            Tens = Input[1] - '0';
            Ones = Input[2] - '0';

            Tens = Tens * 10;

            Key = Tens + Ones;
        }
        else Key = Input[1] - '0';

    //Find HTable array
        int index = Key % Size;

    //Operations
        if(Input[0] == 'i'){
            CHInsert(HTable[index],Key);
        }

        if(Input[0] == 'd'){
            int boolean = CHDelete(HTable[index],Key);

            if(boolean == 0){
                cout << Key << ":DELETE_FAILED;" << endl;
            }
            else{
                cout << Key << ":DELETED;" << endl;
            }
        }

        if(Input[0] == 's'){
            int ListIndex = CHSearch(HTable[index],Key);

            if(ListIndex == -1){
                cout << Key << ":NOT_FOUND;" << endl;
            }
            else{
                cout << Key << ":FOUND_AT" << index << "," << ListIndex << ";" << endl;
            }

        }

        if(Input[0] == 'o'){
            list<int>::iterator it;
            for(int i = 0; i<Size; i++){
                cout << i << ":";
                for(it = HTable[i].begin(); it!=HTable[i].end(); it++){
                    cout << *it << "->";
                }
                cout << ";" << endl;
            }
        }

    //Get new Input
        Input[0] = 0;
        Input[1] = 0;
        Input[2] = 0;
        Input[3] = 0;
        cin >> Input;
    }

    return 0;
}
