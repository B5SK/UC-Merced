#include <iostream>
#include <bitset>

using namespace std;

int main(){
    char a = 'A';

    bitset<8> byte1(a);

    cout << byte1 << endl;

    byte1 = byte1 << 2;

    cout << byte1 << endl;


return 0;}
