//*******************************************
//*                                         *
//*             pcpg controller             *
//*                                         *
//*******************************************
// author: Arthicha Srisuchinnawong, Dong Hao
// contract: zumoarthicha@gmail.com, 
// data: 30/05/2018
// version: 2.0.0

#ifndef PCPG_CONTROLLER_H
#define PCPG_CONTROLLER_H

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <stdint.h>

using namespace std;


class Pcpg_controller {
public:

    // initialize post processing CPG network with default value.
    Pcpg_controller();

    // set the parameter of PCPG controller (slope)
    void setParameter(float slope);

    // pass the input signals through the PCPG network
    void run(float signal1, float signal2);

    /* this function return the output signal of the PCPG
    network, 
            if number is 1 the output is signal 1
            if number is 2 the output is signal 2     */
    float getSignal(int number);

    bool shift = 0;

private:
    // private attribute
    // weigth and activity

    float pcpg_out[2] ={0,0};
    float pcpg_step[2]={0,0};
    float set[2]={0,0};
    float setold[2]={0,0};
    float diffset[2]={0,0};
    float countup[2]={0,0};
    float countupold[2]={0,0};
    float countdown[2]={0,0};
    float countdownold[2]={0,0};
    float deltaxup[2]={0,0};
    float deltaxdown[2]={0,0};
    float xup[2]={0,0};
    float xdown[2]={0,0};
    float yup[2]={0,0};
    float ydown[2]={0,0};
    float pcpg_slope = 2;

    int zero_count[2] = {0,0};


    


};


#endif //PCPG_CONTROLLER_H
