#include <iostream>

using namespace std;

int INFINITY = 99999;
int NOPARENT = -1;

void ISS(int SP[][2], int Vertices){//Initialize-Single-Source
    for(int i = 0; i < Vertices; i++){
        SP[i][0] = INFINITY;
        SP[i][1] = NOPARENT;
    }
    SP[0][0] = 0;

}

void Relax(int Start, int End, int Weight, int SP[][2]){

    if(SP[End][0] > SP[Start][0] + Weight){
        SP[End][0] = SP[Start][0] + Weight;
        SP[End][1] = Start;
    }

}

int BF(int E[][3], int SP[][2], int Vertices, int Edges){//Bellman-Ford
    ISS(SP, Vertices);

    for(int i =  1; i < Vertices-1; i++){//Relax edges (Vertices - 1) times
        for(int j = 0; j < Edges; j++){
            //Is the SP array changing?
                /*cout << endl;
                cout << "Is the SP array changing? After double parameter" << endl;
                cout << "SP[" << E[j][0] << "][0] = " << SP[E[j][0]][0] << endl;*/
            Relax(E[j][0], E[j][1], E[j][2], SP);//(Start, End, Weight, Array)

            /*int Start = E[j][0];
            int End = E[j][1];
            int Weight = E[j][2];

            if(SP[End][0] > SP[Start][0] + Weight){
                SP[End][0] = SP[Start][0] + Weight;
                SP[End][1] = Start;
    }*/

                //cout << "SP[" << E[j][0] << "][0] = " << SP[E[j][0]][0] << endl;
        }
    }

    for(int k = 0; k < Edges; k++){
        if(SP[E[k][1]][0] > SP[E[k][0]][0] + E[k][2]){
            return 0;
        }
    }
    return 1;

}

int main(){
    int Vertices;
    int Edges;

    cin >> Vertices;
    cin >> Edges;

    //Array: E for edges
    //   {     0     ,     1    ,    2  }
    //0: {Start Point, End Point, Weight}
    //[0][(Start, End, Weight)]

    //Array: Shortest-Path-Estimate + Parent = SP
    //Vertices:            0                  ,    1
    //0: {Startpoint.d[Shortest-Path-Estimate], Parent}

    int E[Edges][3];//Edges and their weight
    int SP[Vertices][2];

    for(int i = 0; i< Edges; i++){
        for(int j = 0; j < 3; j++){
            cin >> E[i][j];
        }
    }

    int booln = BF(E, SP, Vertices, Edges);// 1 = Success. 0 = Fail

    if(booln == 0){
        cout << "FALSE";
        return 0;
    }
    else
        cout << "TRUE" << endl;
    //Print out ALL shortest path from Source
    cout << 0 << endl;
    for(int i = 0; i < Vertices; i++){
        if(SP[i][2] == INFINITY){
            cout << "INFINITY" << endl;
            break;
        }
        if(SP[i][2] > INFINITY){
            break;
        }
        cout << SP[i][2] << endl;
    }

    return 1;
}
