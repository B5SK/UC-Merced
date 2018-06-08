#include <iostream>
#include <bitset>

using namespace std;

int main(){
    unsigned char a = 195;
    unsigned char b = 87;
    unsigned char c;

    c = a^b;

    cout << c << endl;

    bitset<8> byte(c);

    cout << byte << endl;

    /////////////////////

    string x = "@";
    string y = " ";
    string z;

    z = x[0]^y[0];

    //bitset<8> bytes(z); ERROR

    cout << z << endl;

    //cout << bytes << endl;

    /////////////

    unsigned char d = x[0];

    cout << d << endl;

    ///////////////////

    unsigned char s[2] = {0x63, 0x74};
    unsigned char t[2] = {0x63, 0x74};
    unsigned char w[2];

    w = s^t;

    cout << w;


return 0;}
