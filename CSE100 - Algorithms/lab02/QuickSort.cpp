#include <iostream>
#include <stdlib.h>
#include <string>

using namespace std;

int Partition(int *A, int b, int e){
    int Index = b + rand() % (e-b+1);
    int x = A[Index];//Pivot
    int i = b-1;

    //Move pivot to the end;
    int Swap = A[Index];
    A[Index] = A[e];
    A[e] = Swap;
    Index = e;

    for(int j = b; j<e; j++){
        if(A[j] <= x){
            i = i + 1;
            int exchange = A[i];
            A[i] = A[j];
            A[j] = exchange;
        }
    }
    int change = A[i+1];
    A[i+1] = A[e];
    A[e] = change;

    return i+1;

}

void Quick(int *A, int b, int e){
    if (b < e){
        int m = Partition(A, b, e);
        Quick(A, b, m-1);
        Quick(A, m+1, e);
    }

}

int main(int argc, char** argv){

	int* Array;
	int Size;

	cin >> Size;

	Array = new int[Size];

	for(int i = 0; i<Size; i++){
		cin >> Array[i];
	}

	Quick(Array, 0, Size-1);

	//Output
	for(int i = 0; i<Size; i++){
		cout << Array[i]<<endl;
	}

	delete[] Array;
	return 0;
}
