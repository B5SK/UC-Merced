#include <iostream>
#include <cmath>

using namespace std;

int main(){

    int radius;

    cin >> radius;

    double area = atan(1)*4 * radius * radius;

    cout << area;

    return 0;
}