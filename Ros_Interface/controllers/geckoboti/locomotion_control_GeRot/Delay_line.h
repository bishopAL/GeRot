//*******************************************
//*                                         *
//*               delay line                *
//*                                         *
//*******************************************
// author: Arthicha Srisuchinnawong, Dong Hao
// contract: zumoarthicha@gmail.com, 
// data: 30/05/2018
// version: 2.0.0

#ifndef DELAY_LINE_H
#define DELAY_LINE_H

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <stdint.h>

using namespace std;


class Delay_line {
public:

    // initialize Delay line.
    Delay_line();

    // set the size of delay line.
    void setParameter(int delaySize);

    // put the signal in the delay line
    void writeIn(float out);

    /* this is debugging function to print out
    the data in the delay line */
    void printDelayLf(int indx);

    // get data from delay line
    float read(int delay);

    // update the delay line
    void step_one();


private:
    // private attribute
    int delaySize; // tableSize
    int step; // store current step of the delay line
    float *delay_lf_ptr; //pointer to array of float

    // private method
    // special modulation function
    int mod(int x,int m);

};


#endif //DELAY_LINE_H
