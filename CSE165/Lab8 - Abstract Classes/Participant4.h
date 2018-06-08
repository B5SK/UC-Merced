//
// Created by B5SK on 4/12/2018.
//

#ifndef PARTICIPANT_H
#define PARTICIPANT_H

class Participant : public Sortable{

public:

    std::string name;
    int age;
    double score;

    static bool (*comp_cb)(const Participant *, const Participant *);

    Participant(){
        name = "None";
        age = -1;
        score = -1;
    }

    Participant(std::string name, int age, double score){
        this->name = name;
        this->age = age;
        this->score = score;
    }

    void print(){
        std::cout << name << "\t" << age << "\t" << score << std::endl;
    }

    bool compare(const Sortable * s){
        const Participant * a = dynamic_cast<const Participant *>(s);

        if(comp_cb(this, a)){
            return false;
        }
        else return true;

    }

};

#endif //LAB8_ABSTRACT_CLASSES_PARTICIPANTS_H
