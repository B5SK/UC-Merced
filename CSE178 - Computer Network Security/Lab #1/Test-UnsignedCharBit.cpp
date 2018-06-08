#include <iostream>
#include <bitset>

using namespace std;

int main(){
    unsigned char s[2] = {0x63, 0x7C};

    cout << s[0] << endl;
    cout << s[1] << endl;

    bitset<8> byte(s[0]);

    cout << byte<< endl;

    cout << (int)s[0] << endl;

    //Convert bitset to int
    int mybit_int;

    mybit_int = (int)(byte.to_ulong());

    cout << mybit_int;

    //Convert string to int
    string A = "c";

    cout << A[0] << endl;

    int p =  int(A[0]);
    cout << p << endl;

    string B;

    B[0] = s[0];

    cout << B[0] << endl;

    return 0;

}
