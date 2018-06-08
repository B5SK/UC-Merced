#include <iostream>

using namespace std;

void Reverse(unsigned char s[3]){
    s[2] = '\0';
    s[1] = 'A';
    s[0] = 'B';

}

int main(){
    unsigned char s[3];

    s[0] = 'A';
    s[1] = 'B';
    s[2] = '\0';

    cout << s <<  endl;
    Reverse(s);
    cout << s << endl;

return 0;}
