//*******************************************
//*                                         *
//*         basic cpg controller            *
//*                                         *
//*******************************************
// author: Arthicha Srisuchinnawong, Dong Hao
// contract: zumoarthicha@gmail.com, 
// data: 18/07/2018
// version: 3.0.0

#include "Basic_cpg_controller.h"



// define a basic CPG output class named "BasicCPG"
/* The constructor doesn't take any input parameter.
    the CPG consist of two neuron with weigth w12, w21
    w11 and w22, this give 2 periodic output signals */
Basic_cpg_controller::Basic_cpg_controller()
{
    
    // initial class attributes
    this->output1 =0;
    this->output2=0;
    this->bias1_2=0;
    this->w11_22=0;
    this->w12=0;
    this->w21=0;
    this->act1=0;
    this->act2=0;
    this->wd = 0.0;
}

// set parameter which define the properties of single CPG
// set the initial parameter of CPG controller
void Basic_cpg_controller::setParameter(float output1_2,float bias1_2,
        float w11_22,float wd1,float MI){

    this->output1 = output1_2;
    this->output2 = output1_2;
    this->bias1_2 = bias1_2;
    this->w11_22 = w11_22;
    this->w12 = wd1 + MI;
    this->w21 = -(wd1 + MI);
    this->wd = wd1;
}

// function to change MI for adapation
void Basic_cpg_controller::setMI(float newMI){
    this->w12 = this->wd+newMI;
    this->w21 = -(this->wd+newMI);
}

// let CPG run for once
// function that updates the output of the CPG network
void Basic_cpg_controller::run(){
    this->act1 = this->w11_22 * this->output1 + this->w12 * this->output2 + this->bias1_2;
    this->act2 = this->w11_22 * this->output2 + this->w21 * this->output1 + this->bias1_2;
    this->output1 = tanh(this->act1);
    this->output2 = tanh(this->act2);
}

// get the CPG output1/output2
/* function that return the output signal of the CPG
    network, 
            if number is 1 the output is signal 1
            if number is 2 the output is signal 2     */
float Basic_cpg_controller::getSignal(int number){
    if(number == 1){
        return this->output1;
    }else{
        return this->output2;
    }
}



