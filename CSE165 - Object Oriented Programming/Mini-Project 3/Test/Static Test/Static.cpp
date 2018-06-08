#include "Static.h"
#include <iostream>

using namespace std;

int STAT::label = 0;
int main(){

	STAT s1;
	STAT s2;
	STAT s3;

	cout << s1.getLabel() << " " << s2.getLabel() << " " <<  s3.getLabel() << endl;
		//NOT GETLABEL. GET CURRENTID

	return 0;
}