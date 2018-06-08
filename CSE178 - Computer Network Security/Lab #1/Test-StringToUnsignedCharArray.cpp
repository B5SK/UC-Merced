#include <iostream>
#include <bitset>
#include <string>

using namespace std;

void P(unsigned char c[]){
    cout << c[0] << endl;

    c[0] = '5';

}

int main(){
    unsigned char g[25];
    g[0] = 0x63;

    string s;

    cin >> s;

    unsigned char* c = (unsigned char*)s.c_str();

    cout << c << endl;

    bitset<8> bytes(c[0]);

    cout << bytes << endl;

    P(c);

    cout << c[0] << endl;

    cout << g[0];

return 0;}
