#ifndef GenerateCircleData_h
#define GenerateCircleData_h

#include <math.h>
#include <vector>

#define PI 3.14159265

void geneneratCircleData(std::vector<Vec*>& points, const Vec& center, float radius, int resolution){
    // Clear the points vector to make sure it's empty before you start
    points.clear();
    
    // Provide the rest of the code here...
    const int Rdegree = 360/resolution; //Resolution Degree. Division for each increment.

    for(int i = 0; i < resolution; i++){
        Vec* v = new Vec();

        float x = center.getX() + radius * cos(Rdegree * i * PI/180);
        float y = center.getY() + radius * sin(Rdegree * i * PI/180);

        v->setX(x);
        v->setY(y);

        points.push_back(v);

    }
    
}

#endif
