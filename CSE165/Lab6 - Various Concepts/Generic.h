#ifndef Generic_h
#define Generic_h

class Generic {
    int data;

public:
    static int count;

    Generic() {
        count++;
        data = 0;
    }
    
    Generic(int d) {
        count++;
        data = d;
    }
};
int Generic::count = 0;

#endif
