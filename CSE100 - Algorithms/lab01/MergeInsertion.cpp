#include <iostream>
#include <stdlib.h>
#include <string>

using namespace std;



void Merge(int* A, int b, int m, int e){
    int NL, NR;
    NL = m-b;
    NR = e-m;


	int L[NL+1];
	int R[NR+1];

	for(int i = 0; i<NL; i++){
		L[i] = A[b+i];
	}
	for(int i = 0;i<NR; i++){
		R[i] = A[m+i];
	}
	L[NL] = 99999;//Sentinel
	R[NR] = 99999;

	int y = 0;//Left
	int z = 0;//Right
	for(int k = b; k<e; k++){
        /*cout <<endl;
		cout <<"--Merge Mode--"<<endl;
		cout <<"Index: " << k <<" ---"<< endl;
		cout <<"L[y]: " << L[y] << endl;
		cout <<"R[z]: " << R[z] << endl;*/
		if(L[y] <= R[z]){
            A[k] = L[y];
            y=y+1;
		}
		else{
            A[k] = R[z];
            z=z+1;
		}
	}

}

void Insertion(int* A, int b, int e){

	int key;
	for(int i = b+1; i<e; i++){
		key = A[i];
		int j = i-1;
		while(j>=b && A[j] > key){
			A[j+1] = A[j];
			j = j - 1;
		}
		A[j+1] = key;
	}

    /*cout << endl;
	cout << "Insertion Sort Completed";
	int a;
	for(a = b; a < e; a++){
        cout << "----" << endl;
        cout << "Index " << a << " = " << A[a] << endl;
        cout << "----" << endl;
	}*/

}


void MergeS(int* A, int b, int e){//Merge Sort
    /*cout << endl;
    cout << "MergeS" << endl;
    cout << "Begin: " << b << "|End: " << e << endl;*/

	if(e-b > 10){

	int middle = (e+b)/2;

	MergeS(A,b,middle);
	MergeS(A,middle,e);
	Merge(A,b,middle,e);
	}
	else Insertion(A, b, e);
}

void Sort(int* A, int Size){

	MergeS(A, 0, Size);

}

int main(int argc, char** argv){

	int* Array;
	int Size;

	cin >> Size;

	Array = new int[Size];

	for(int i = 0; i<Size; i++){
		cin >> Array[i];
	}

	Sort(Array, Size);

	//Output
	for(int i = 0; i<Size; i++){
		cout << Array[i]<<endl;
	}

	delete[] Array;
	return 0;
}
