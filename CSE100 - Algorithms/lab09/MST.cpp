#include <iostream>

using namespace std;

void Prims(int Graph[][3], int Order[]){
    //Root is 0



}

int main(){
    int Vertices;
    int Edges;

    cin >> Vertices;
    cin >> Edges;

    int Graph[Edges][4];//[Edges][First Vertex, Second Vertex, Weight, Visited-1/NotVisited-0]
    int Order[Vertices];

    for(int i = 0; i<Edges; i++){
        for(int j = 0; j < 3; j++){
            cin >> Graph[i][j];
        }
    }
    Prims(Graph, Order);

    return 0;
}
