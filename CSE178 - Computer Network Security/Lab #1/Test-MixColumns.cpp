#include <iostream>

using namespace std;

int main(){
        unsigned char PT[16] = {0x87, 0xF2, 0x4D, 0x97, 0x6E, 0x4C, 0x90, 0xEC,
                                0x46, 0xE7, 0x4A, 0xC3, 0xA6, 0x8C, 0xD8, 0x95 };

        for(int i = 0; i < 4; i++){
            unsigned char a[4] = {PT[i], PT[i+4], PT[i+8], PT[i+12]};
            unsigned char b[4];
            unsigned char c;
            unsigned char h;

            for(int j = 0; j < 4; j++){
                h = (unsigned char)((signed char)a[j] >> 7);

                b[j] = a[j] << 1;
                b[j] ^= 0x1B & h;
            }

            PT[i] = b[0] ^ a[3] ^ a[2] ^ b[1] ^ a[1];
            PT[i+4] = b[1] ^ a[0] ^ a[3] ^ b[2] ^ a[2];
            PT[i+8] = b[2] ^ a[1] ^ a[0] ^ b[3] ^ a[3];
            PT[i+12] = b[3] ^ a[2] ^ a[1] ^ b[0] ^ a[0];

    }

        for(int i = 0; i < 16; i++){
            cout << hex << int(PT[i]) << endl;
        }


return 0;}
