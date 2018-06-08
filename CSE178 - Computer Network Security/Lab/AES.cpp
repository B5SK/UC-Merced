#include <iostream>
#include <bitset>//May use to modify bits
//#include <string>

using namespace std;//Cuz there will be no future updates

unsigned char Sbox[256] {
    0x63, 0x7C, 0x77, 0x7B, 0xF2, 0x6B, 0x6F, 0xC5, 0x30, 0x01, 0x67, 0x2B, 0xFE, 0xD7, 0xAB, 0x76,
    0xCA, 0x82, 0xC9, 0x7D, 0xFA, 0x59, 0x47, 0xF0, 0xAD, 0xD4, 0xA2, 0xAF, 0x9C, 0xA4, 0x72, 0xC0,
    0xB7, 0xFD, 0x93, 0x26, 0x36, 0x3F, 0xF7, 0xCC, 0x34, 0xA5, 0xE5, 0xF1, 0x71, 0xD8, 0x31, 0x15,
    0x04, 0xC7, 0x23, 0xC3, 0x18, 0x96, 0x05, 0x9A, 0x07, 0x12, 0x80, 0xE2, 0xEB, 0x27, 0xB2, 0x75,
    0x09, 0x83, 0x2C, 0x1A, 0x1B, 0x6E, 0x5A, 0xA0, 0x52, 0x3B, 0xD6, 0xB3, 0x29, 0xE3, 0x2F, 0x84,
    0x53, 0xD1, 0x00, 0xED, 0x20, 0xFC, 0xB1, 0x5B, 0x6A, 0xCB, 0xBE, 0x39, 0x4A, 0x4C, 0x58, 0xCF,
    0xD0, 0xEF, 0xAA, 0xFB, 0x43, 0x4D, 0x33, 0x85, 0x45, 0xF9, 0x02, 0x7F, 0x50, 0x3C, 0x9F, 0xA8,
    0x51, 0xA3, 0x40, 0x8F, 0x92, 0x9D, 0x38, 0xF5, 0xBC, 0xB6, 0xDA, 0x21, 0x10, 0xFF, 0xF3, 0xD2,
    0xCD, 0x0C, 0x13, 0xEC, 0x5F, 0x97, 0x44, 0x17, 0xC4, 0xA7, 0x7E, 0x3D, 0x64, 0x5D, 0x19, 0x73,
    0x60, 0x81, 0x4F, 0xDC, 0x22, 0x2A, 0x90, 0x88, 0x46, 0xEE, 0xB8, 0x14, 0xDE, 0x5E, 0x0B, 0xDB,
    0xE0, 0x32, 0x3A, 0x0A, 0x49, 0x06, 0x24, 0x5C, 0xC2, 0xD3, 0xAC, 0x62, 0x91, 0x95, 0xE4, 0x79,
    0xE7, 0xC8, 0x37, 0x6D, 0x8D, 0xD5, 0x4E, 0xA9, 0x6C, 0x56, 0xF4, 0xEA, 0x65, 0x7A, 0xAE, 0x08,
    0xBA, 0x78, 0x25, 0x2E, 0x1C, 0xA6, 0xB4, 0xC6, 0xE8, 0xDD, 0x74, 0x1F, 0x4B, 0xBD, 0x8B, 0x8A,
    0x70, 0x3E, 0xB5, 0x66, 0x48, 0x03, 0xF6, 0x0E, 0x61, 0x35, 0x57, 0xB9, 0x86, 0xC1, 0x1D, 0x9E,
    0xE1, 0xF8, 0x98, 0x11, 0x69, 0xD9, 0x8E, 0x94, 0x9B, 0x1E, 0x87, 0xE9, 0xCE, 0x55, 0x28, 0xDF,
    0x8C, 0xA1, 0x89, 0x0D, 0xBF, 0xE6, 0x42, 0x68, 0x41, 0x99, 0x2D, 0x0F, 0xB0, 0x54, 0xBB, 0x16 };

void ShiftRows(unsigned char PT[16]){
    unsigned char ByteShift;
    unsigned char ByteShift2;

    //0-3 is Untouched

    //4-7 Circular shift Left Once
    ByteShift = PT[4];
    PT[4] = PT[5];
    PT[5] = PT[6];
    PT[6] = PT[7];
    PT[7] = ByteShift;

    //8-11 Circular Shift Left Twice
    ByteShift = PT[8];
    ByteShift2 = PT[9];
    PT[8] = PT[10];
    PT[9] = PT[11];
    PT[10] = ByteShift;
    PT[11] = ByteShift2;

    //12-15 Circular Shift Right Once
    ByteShift = PT[15];
    PT[15] = PT[14];
    PT[14] = PT[13];
    PT[13] = PT[12];
    PT[12] = ByteShift;

}

void MixColumns(unsigned char PT[16]){

    for(int i = 0; i < 4; i++){
            unsigned char Columns[4] = {PT[i], PT[i+4], PT[i+8], PT[i+12]};
            unsigned char Galois[4];
            unsigned char high;

            for(int j = 0; j < 4; j++){
                high = (unsigned char)((signed char)Columns[j] >> 7);

                Galois[j] = Columns[j] << 1;
                Galois[j] ^= 0x1B & high;
            }

            PT[i] = Galois[0] ^ Columns[3] ^ Columns[2] ^ Galois[1] ^ Columns[1];
            PT[i+4] = Galois[1] ^ Columns[0] ^ Columns[3] ^ Galois[2] ^ Columns[2];
            PT[i+8] = Galois[2] ^ Columns[1] ^ Columns[0] ^ Galois[3] ^ Columns[3];
            PT[i+12] = Galois[3] ^ Columns[2] ^ Columns[1] ^ Galois[0] ^ Columns[0];
    }

}

void SubBytes(unsigned char PT[16]){

    for(int i = 0; i<16; i++){
        //cout << "----------------" << endl;
        //cout << "PT[i] " << (PT[i]) << endl;
        //cout << "Int: " << int(PT[i]) << endl;
        PT[i] = Sbox[(int)PT[i]];
        //cout << PT[i] << endl;
    }

}

void AddRoundKey(unsigned char PT[16], unsigned char EK[176], int Position){
    //There are 16 bytes, so I will use 16 bytes of EK

    for(int i = 0; i< 16; i++){
            /*cout << "------------------" << endl;
            cout << "PT[" << i << "]: " << hex << (int)PT[i] << endl;
            cout << "EK[" << Position+i << "]: " << hex << (int)EK[Position+i] << endl;*/
        PT[i] = PT[i] ^ EK[Position+i];
            //cout << "Result Of XOR: " << hex << (int)PT[i] << endl;
            //cout << "------------------" << endl;
    }

}

void AES(unsigned char PT[16], unsigned char EK[176]){//Advanced Encryption Standard
    //PT = PlainText
    //EK = ExpandedKey

    //Because this is 128bit.
    //There are 10 rounds

    int EKPosition = 0;

    AddRoundKey(PT, EK, EKPosition);// - PlainText, ExpandedKey, ExpandedKey Starting Position

    EKPosition += 16;

    for(int i = 0; i<9; i++){
        SubBytes(PT);
        ShiftRows(PT);
        MixColumns(PT);
        AddRoundKey(PT, EK, EKPosition);

        EKPosition +=16;
    }

    //Round 10
    SubBytes(PT);
    ShiftRows(PT);
    AddRoundKey(PT, EK, EKPosition);//Last 16 bytes/4 words

}

void KeyExpansion(unsigned char key[16], unsigned char ExpandedKey[176]){
    unsigned char Rcon[11] = {0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80, 0x1B, 0x36};

    unsigned char temp1;//Word with 4 bytes
    unsigned char temp2;
    unsigned char temp3;
    unsigned char temp4;

    //cout << "Key in KeyExpansion: " << key << endl;

    for(int i = 0; i < 16; i+0){
        for(int j = 0; j < 4; j++){
            ExpandedKey[i] = key[4*j];
            //cout << "ExpandedKey[ " << i << "]: " << ExpandedKey[i] << endl;
            i++;
            ExpandedKey[i] = key[4*j+1];
            //cout << "ExpandedKey[ " << i << "]: " << ExpandedKey[i] << endl;
            i++;
            ExpandedKey[i] = key[4*j+2];
            //cout << "ExpandedKey[ " << i << "]: " << ExpandedKey[i] << endl;
            i++;
            ExpandedKey[i] = key[4*j+3];
            //cout << "ExpandedKey[ " << i << "]: " << ExpandedKey[i] << endl;
            i++;

        }
    }
    //ExpandedKey[0]-to-[16] Filled = Word[0]-to-[4] Filled


    int Rcount = 0;//Rcon Count from 1 to 11 because of i/4 in Rcon[i/4]

    for(int i = 16; i < 176; i= i + 4){

        temp1= ExpandedKey[i-4];
        temp2= ExpandedKey[i-4+1];
        temp3= ExpandedKey[i-4+2];
        temp4= ExpandedKey[i-4+3];

        if(i == 16 || i == 32 || i == 48 || i == 64 || i == 80 || i == 96 || i == 112 || i == 128 || i == 144 || i == 160){

        //RotWord(temp)
            unsigned char ByteShift = temp1;

            temp1 = temp2;
            temp2 = temp3;
            temp3 = temp4;
            temp4 = ByteShift;

        //SubWord(RotWord(temp))
            //Substitute Bytes

            int s1 = int(temp1);
            int s2 = int(temp2);
            int s3 = int(temp3);
            int s4 = int(temp4);

            temp1 = Sbox[s1];
            temp2 = Sbox[s2];
            temp3 = Sbox[s3];
            temp4 = Sbox[s4];

        //Rcon

            temp1 = temp1 ^ Rcon[Rcount];

            Rcount++;
        }

        ExpandedKey[i] = ExpandedKey[i-16] ^ temp1;
        ExpandedKey[i+1] = ExpandedKey[i-16+1] ^ temp2;
        ExpandedKey[i+2] = ExpandedKey[i-16+2] ^ temp3;
        ExpandedKey[i+3] = ExpandedKey[i-16+3] ^ temp4;

    }
}



int main(){
    /* The given Plaintext message has the length of 128 bits/16 bytes/16 letters.
        Meaning that the Key is 128 bits/16 bytes/16 letters and the Expanded key has the length of 176 bytes
        Number of Rounds are 11 total.
    */
    unsigned char EK[176];//ExpandedKey

    //
    //Input Plaintext and Key Here--------------
    //

    unsigned char PT[16] = {0x34, 0x41, 0x45, 0x67, 0xde, 0xbe, 0x54, 0xef,
                            0xfe, 0xdc, 0xba, 0x23, 0x76, 0x54, 0x34, 0x10 };

    unsigned char K[16] = {0x0f, 0x15, 0x71, 0xc9, 0x47, 0xd9, 0xe8, 0x59,
                           0x0c, 0xb7, 0xad, 0xd6, 0xaf, 0x7f, 0x67, 0x98  };

    //CypherText: 39 fa 12 32 51 d a1 c2 3e d8 37 81 14 ca df ea
            //It is in hexadecimal because there were many unreadable characters.
    //
    //------------------------------------------
    //

    //
    //Input 2nd Test Code:----------------------
    //
    /*
    unsigned char PT[16] = {0x41,0x42,0x43,0x44,0x45,0x46,0x47,0x48,0x49,0x4a,0x4b,0x4c,0x4d,0x4e,0x4f,0x50};

    unsigned char K[16] = {0x41,0x42,0x43,0x44,0x45,0x46,0x47,0x48,0x49,0x4a,0x4b,0x4c,0x4d,0x4e,0x4f,0x50};
    */
    //CypherText: 86 ee 64 44 7c ac 3b 34 c9 62 f9 8f f9 9d cf 1e
    //In byte due to unreadable text
    //-------------------------------------------
    //

    //KeyExpansion
    KeyExpansion(K, EK);


    /*Check if results are the same as the answers in the textbook.
        for(int i = 0; i<176; i++){
        if(i%4 == 0)cout <<endl;
        cout << hex << (int)EK[i] << " ";
    }
    */


    AES(PT, EK);

    //Output CypherText
    cout << "CypherText: ";

    for(int i = 0; i < 16; i++){
        cout << hex << (int)PT[i] << " ";
    }
    cout << endl;

}
