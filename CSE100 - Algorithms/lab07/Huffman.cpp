#include <iostream>

using namespace std;

struct Node {
  Node* left = NULL;
  Node* right = NULL;
  int freq;
  char letter;
  int taken = 0;//1 = In Tree | 0 = Not In Tree
};

void Huffman(int* Ch){

    Node A = new Node;
    Node B = new Node;
    Node C = new Node;
    Node D = new Node;
    Node E = new Node;
    Node F = new Node;

    A.letter = 'A';
    B.letter = 'B';
    C.letter = 'C';
    D.letter = 'D';
    E.letter = 'E';
    F.letter = 'F';

    A.freq = Ch[0];
    B.freq = Ch[1];
    C.freq = Ch[2];
    D.freq = Ch[3];
    E.freq = Ch[4];
    F.freq = Ch[5];

    for(int i = 0; i < 6; i++){
        Node z = new Node;

        z.left =
    }

}

int main(){
    //Input are integers and are assigned to the following Alphabets: A, B, C, D, E, F
    int Ch[6];
    int Freq;
    int i = 0;
    while(cin >> Freq){
        Ch[i] = Freq;
        i++;
        if(i == 6) break;
    }

    for(int i = 0; i < 6; i++){
        cout << 'A' + i << ": " << C[i] << endl;
    }

    return 0;
}
