//
// Created by B5SK on 4/12/2018.
//

#ifndef PARTICIPANT_H
#define PARTICIPANT_H

class Participant : public Sortable{

    std::string name;
    int age;
    double score;

public:

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
        Participant * a = this;
        const Participant * b = dynamic_cast<const Participant *>(s);

        if(a->score < b->score){
            return false;
        }
        else if(a->score == b->score){
            if(a->age > b->age){
                return false;
            }
            else if(a->age == b->age){
                if(a->name[0] > b->name[0]){
                    return false;
                }
                else return true;
            }
            else return true;
        }
        else return true;
    }

};

#endif //LAB8_ABSTRACT_CLASSES_PARTICIPANTS_H
