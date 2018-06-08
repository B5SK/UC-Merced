//
// Created by B5SK on 4/13/2018.
//

#ifndef TIME_H
#define TIME_H

class Time1 {

    int h, m, s;
public:
    int getHours() const {
        return h;
    }

    void setHours(int h) {
        Time1::h = h;
    }

    int getMinutes() const {
        return m;
    }

    void setMinutes(int m) {
        Time1::m = m;
    }

    int getSeconds() const {
        return s;
    }

    void setS(int s) {
        Time1::s = s;
    }
    //Hour, Minute, Second

public:

    Time1(int h, int m, int s){
        this->h = h;
        this->m = m;
        this->s = s;
    }

    void add(const Time1 & t){
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

};

#endif //LAB9_A_BRIEF_LAB_ON_TIME_TIME_H
