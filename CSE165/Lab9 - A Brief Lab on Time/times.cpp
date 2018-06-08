#include <iostream>
#include "Time1.h"

using namespace std;

int main(int argc, const char * argv[])
{
    Time1 myTime = Time1(10, 46, 32);
    Time1 anotherTime = Time1(2, 25, 50);
    
    myTime.add(anotherTime);
    
    cout << myTime.getHours() << " : " << myTime.getMinutes() << " : " << myTime.getSeconds() << endl;
    return 0;
}

