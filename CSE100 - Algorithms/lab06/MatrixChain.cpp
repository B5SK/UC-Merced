// This program output the minimum number of operations required to perform the matrix chain multiplication.
#include <iostream>
#include <stdio.h>
#include <vector> // you may use the vector class to represent a matrix, for ex: vector<vector<int>> M;
#include <sys/time.h>
#include <climits>
#include <stdlib.h>
int MAXINT = 999999;

using namespace std;

int MatrixChainOrder(int dims[], int size, vector<vector<int> > &M, vector<vector<int> > &S){
    int n = size;
    int cost = 0;
    int min = MAXINT;
    int i;

    //cout << "n: " << n << endl;

    for(i = 1; i<=n; i++){
        M[i][i] = 0;
    }

    for(int len = 2; len<=n; len++){
        for(i = 1; i <= n - len + 1; i++){
            int j = i + len - 1;
            M[i][j] = MAXINT;
            for(int k = i; k <= j - 1; k++){
                    /*cout << endl;
                    cout << "MTO" << endl;
                    cout << "i: " << i << endl;
                    cout << "j: " << j << endl;
                    cout << "k: " << k << endl;
                    cout << "dims[i-1]" << dims[i-1] << endl;
                    cout << "dims[j]" << dims[j] << endl;
                    cout << "dims[k]" << dims[k] << endl << endl;*/
                cost = M[i][k] + M[k+1][j] + dims[i-1]*dims[k]*dims[j];
                    //cout <<"cost: " << cost << endl;
                    //cout <<"M[i][j]: " << M[i][j] << endl;
                if(cost < M[i][j]){
                    M[i][j] = cost;
                    S[i][j] = k;
                    /*cout << endl;
                    cout << "i: " << i << endl;
                    cout << "j: " << j << endl;
                    cout << "S[i][j]: " << S[i][j] << endl;
                    cout << endl;*/
                }
            }
        }
    }
    //cout << "M[1][n]: " << M[1][n] << endl;
    return M[1][n];

}

void PrintOptimalParens(vector<vector<int> > &S, int x, int y){
    if(x == y) cout << "A" << x-1;
    else{
        cout << "(";
        /*cout << "x: " << x << endl;
        cout << "y: " << y<< endl;
        cout << "S[x][y]: " << S[x][y] << endl << endl;
        if(y== 0) exit(1);
        cout << endl;
        cout << "First: " << endl;*/
        PrintOptimalParens(S, x, S[x][y]);
        //cout << endl;
        //cout << "Second: " << endl;
        PrintOptimalParens(S, S[x][y]+1, y);
        cout << ")";
    }
}

int main(int argc,char **argv)
 {

   // Get number of matrices in the input:
   int size;
   cin >> size;
   cin.ignore();

   // etc
   vector<vector<int> > M(size+1, vector<int>(size+1));
   vector<vector<int> > S(size+1, vector<int>(size+1));

   int array[size+1];

   //string dimensions;

   //getline(cin, dimensions);



   int j = 0;
   int i = 0 ;
   while(cin >> j){
        array[i] = j;
        i++;
        if(i == size+1) break;
   }

    int min = MatrixChainOrder(array, size, M, S);

    cout << min << endl;

    PrintOptimalParens(S, 1, size);
    cout << endl;

 }

