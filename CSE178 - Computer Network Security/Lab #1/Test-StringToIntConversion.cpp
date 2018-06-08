#include <iostream>
#include <bitset>

using namespace std;

int main(){

    char A = 'A';

    cout << "Char: "  << (int)A << endl;

    bitset<8> word1(A);

    cout << word1 << endl;


    return 0;
}
