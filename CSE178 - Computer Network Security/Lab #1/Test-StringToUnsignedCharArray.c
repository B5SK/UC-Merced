#include <iostream>
#include <bitset>
#include <string>

using namespace std;

int main(){
    string s;

    cin >> s;

    unsigned char c = atoi(s.c_str());

    cout << c << endl;

    bitset<8> bytes(c[0]);

    cout << bytes << endl;


return 0;}
