#include <iostream>

using namespace std;

void Change(int *A){
	A[0] = 20;
	A[1] = 20;

}

int main(){
	int* Array;
	Array = new int(2);

	for(int i = 0; i<2; i++){
		Array[i] = 5;
	}

	cout << Array[0]<<endl;
	cout << Array[1]<<endl;

	Change(Array);

	cout << Array[0]<<endl;
	cout << Array[1]<<endl;

	int length = (sizeof(Array)/sizeof(*Array));

	cout << length << endl;

	return 0;
}
