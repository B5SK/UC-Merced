#include <iostream>
#include <ios>

using namespace std;

int main(){
    unsigned char s[2] = {'c', 'd'};

    for(int i = 0; i < 2; i++){
        cout << hex << s[i] << endl;
    }

    int x = 255;
    cout << hex << x << endl;

    //In order to get hex. The input must be an integer value
return 0;
}
