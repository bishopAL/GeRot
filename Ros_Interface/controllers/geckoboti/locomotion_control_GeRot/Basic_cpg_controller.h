//*******************************************
//*                                         *
//*         basic cpg controller            *
//*                                         *
//*******************************************
// author: Arthicha Srisuchinnawong, Dong Hao
// contract: zumoarthicha@gmail.com, 
// data: 29/05/2018
// version: 2.0.0

#ifndef BASIC_CPG_CONTROLLER_H
#define BASIC_CPG_CONTROLLER_H

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <stdint.h>

using namespace std;


class Basic_cpg_controller {
public:

    /* The constructor doesn't take any input parameter.
    the CPG consist of two neuron with weigth w12, w21
    w11 and w22, this give 2 periodic output signals */
    Basic_cpg_controller();

    // set the initial parameter of CPG controller
    void setParameter(float output1_2,float bias1_2,
        float w11_22,float wd1,float MI);

    // function to change MI for adapation
    void setMI(float newMI);

    // function that updates the output of the CPG network
    void run();

    /* function that return the output signal of the CPG
    network, 
            if number is 1 the output is signal 1
            if number is 2 the output is signal 2     */
    float getSignal(int number);

private:
    // private attribute
    // weigth and activity
    float output1;
    float output2;
    float bias1_2;
    float w11_22;
    float w12;
    float w21;
    float act1;
    float act2;
    float wd;
};


#endif //BASIC_CPG_CONTROLLER_H
