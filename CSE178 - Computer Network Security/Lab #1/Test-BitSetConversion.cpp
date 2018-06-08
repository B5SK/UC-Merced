#include <iostream>
#include <bitset>
#include <string>

using namespace std;

//typedef bitset<8> byte;

int main(){
    //Check if bitset can be obtained from a different data type especially String

    /*char input[16];

    cin >> input;

    char one[8];
    char two[8];

    one = input[0];
    two = input[8];

    //out << input << endl;

    bitset<8> Character1(one);

    cout << Character1 << endl;

    //cin >> input;

    bitset<8> Character2(two);

    cout << Character2 << endl;*/

    string myString = "Hello World";
  for (std::size_t i = 0; i < myString.size(); ++i)
  {
      cout << bitset<8>(myString[i]) << endl;
  }

}
