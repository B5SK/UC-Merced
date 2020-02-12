#include <iostream>
#include <stdlib.h>
#include <string>

using namespace std;
int HeapSize;


void MaxHeapify(int *A, int index){
    int L = 2*index;//Left(i)
    int R = 2*index + 1;//Right(i)

    int largest = 0;
    if(L < HeapSize && A[L] > A[index]){
        largest = L;
    }
    else largest = index;

    if(R < HeapSize && A[R] > A[largest]){
        largest = R;
    }

    if(largest != index){
        int exchange = A[index];
        A[index] = A[largest];
        A[largest] = exchange;
        MaxHeapify(A, largest);
    }
}

void BuildMaxHeap(int *A){

    for(int i = HeapSize/2; i >= 0; i--){
        MaxHeapify(A, i);
    }
}

void Heap(int *A, int Size){
    BuildMaxHeap(A);

    for(int i = Size-1; i >= 1; i--){
        int exchange = A[i];
        A[i] = A[0];
        A[0] = exchange;

        HeapSize = HeapSize-1;
        MaxHeapify(A,0);

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

	HeapSize = Size;
	Heap(Array, Size);

	//Output
	for(int i = 0; i<Size; i++){
		cout << Array[i]<<endl;
	}

	delete[] Array;
	return 0;
}
