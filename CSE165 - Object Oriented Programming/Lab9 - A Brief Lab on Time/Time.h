//
// Created by B5SK on 4/13/2018.
//

#ifndef TIME_H
#define TIME_H

const float PI = 3.1415926535897;

class Time {

    int h, m, s;
public:
    int getHours() const {
        return h;
    }

    void setHours(int h) {
        Time::h = h;
    }

    int getMinutes() const {
        return m;
    }

    void setMinutes(int m) {
        Time::m = m;
    }

    int getSeconds() const {
        return s;
    }

    void setS(int s) {
        Time::s = s;
    }
    //Hour, Minute, Second

public:

    Time(int h, int m, int s){
        this->h = h;
        this->m = m;
        this->s = s;
    }

    void add(const Time & t){
        this->h += t.getHours();
        this->m += t.getMinutes();
        this->s += t.getSeconds();

        //Correct Time1 Logic
        if(m >= 60){
            h++;
            m = m - 60;
        }

        if(s >= 60){
            m++;
            s = s - 60;
        }

    }

    void getAngles(float& a, float&b, float& c){

        //Seconds
        if(s >= 0 && s <= 15){
            c = (15.0f-s) * PI/30.0f;
        }
        else if(s >= 45 && s <= 59){
            c = (60.0f-s) * PI/30.0f + PI/2.0f;
        }
        else{
            c = (s-15) * PI/30.0f * (-1.0f);
        }

        //Minutes
        if(m >= 0 && m <= 15){
            b = (15.0f-m) * PI/30.0f;
        }
        else if(s >= 45 && s <= 59){
            b = (60.0f-m) * PI/30.0f + PI/2.0f;
        }
        else{
            b = (m-15) * PI/30.0f * (-1.0f);
        }

        //Hours Implementation
        if(h >= 1 && h <= 3){
            a = (3.0f - h) * PI/6.0f;
        }
        else if(h >= 9 && h <= 12){
            a = (12.0f - h) * PI/6.0f + PI/2.0f;
        }
        else{
            a = (h - 3.0f) * PI/6.0f * (-1.0f);
        }

        a -= (m/60.0f * PI/6.0f);

    }

    void getHourCoords ( float& x, float& y ){
        float h, m, s;
        getAngles(h, m, s);

        x = cos(h);
        y = sin(h);
    }
    void getMinuteCoords ( float& x, float& y ){
        float h, m, s;
        getAngles(h, m, s);

        x = cos(m);
        y = sin(m);
    }
    void getSecondsCoords ( float& x, float& y ){
        float h, m, s;
        getAngles(h, m, s);

        x = cos(s);
        y = sin(s);
    }

};

#endif //LAB9_A_BRIEF_LAB_ON_TIME_TIME_H
