#include "Circle.h"
#include <iostream>

using namespace std;

int Circle::count = 0;
int main(){

	Circle* c = new Circle(Vec(0,0), 1, 10);

	std::vector<Vec*> p = c->GetPoints();

	cout << p[0]->getX();

}