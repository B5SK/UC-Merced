#include <iostream>

using namespace std;

void Reverse(unsigned char s[3]){
    s[2] = 'A';
    s[1] = 'B';
    s[0] = 'C';

}

int main(){
    unsigned char s[3];

    s[0] = 'A';
    s[1] = 'B';
    s[2] = 'C';

    Reverse(s);

return 0;}
