//*******************************************
//*                                         *
//*             pcpg controller             *
//*                                         *
//*******************************************
// author: Arthicha Srisuchinnawong, Dong Hao
// contract: zumoarthicha@gmail.com, 
// data: 30/05/2018
// version: 2.0.0

#include "Pcpg_controller.h"


// initialize post processing CPG network with default value.
Pcpg_controller::Pcpg_controller()
{
    // initial class attributes
}

// set the parameter of PCPG controller (slope)
void Pcpg_controller::setParameter(float slope)
{
    this->pcpg_slope = slope;
}

// pass the input signals through the PCPG network
void Pcpg_controller::run(float signal1, float signal2)
{
    this->pcpg_step[0] = signal1;
    this->pcpg_step[1] = signal2;
        
    this->setold[0] = this->set[0];
    this->setold[1] = this->set[1];
        
    this->countupold[0] = this->countup[0];
    this->countupold[1] = this->countup[1];

    this->countdownold[0] = this->countdown[0];
    this->countdownold[1] = this->countdown[1];

        
    if (this->pcpg_step[0] >= 0.85) {this->set[0] = 1.0;}  
    if (this->pcpg_step[0] < 0.85) {this->set[0] = -1.0;}
    
    if (this->shift){
        if (this->pcpg_step[1] >= 0.82) {this->set[1] = 1.0;}
        if (this->pcpg_step[1] < 0.82) {this->set[1] = -1.0;}
    }else{
        if (this->pcpg_step[1] >= 0.85) {this->set[1] = 1.0;}
        if (this->pcpg_step[1] < 0.85) {this->set[1] = -1.0;}
    }
    

    this->diffset[0] = this->set[0] - this->setold[0]; 
    this->diffset[1] = this->set[1] - this->setold[1];

    ///count how many step of swing
    if (this->set[0] == 1.0) {
        this->countup[0] = this->countup[0] + 1.0;
        this->countdown[0] = 0.0;
    } 
    if (this->set[0] == -1.0){
        this->countdown[0] = this->countdown[0] + 1.0;
        this->countup[0] = 0.0;
    }
        
    if (this->set[1] == 1.0) {
        this->countup[1] = this->countup[1] + 1.0;
        this->countdown[1] = 0.0;
    }
    if (this->set[1] == -1.0) {
        this->countdown[1] = this->countdown[1] + 1.0;
        this->countup[1] = 0.0;
    }
   
    // memorized the total steps of swing and stance

    if (this->countup[0] == 0.0 and this->diffset[0] == -2.0 and this->set[0] == -1.0) {
        this->deltaxup[0] = this->countupold[0];
    }
        
    if (this->countdown[0] == 0.0 and this->diffset[0] == 2.0 and this->set[0] == 1.0) {
        this->deltaxdown[0] = this->countdownold[0];
    }
        
    if (this->countup[1] == 0.0 and this->diffset[1] == -2.0 and this->set[1] == -1.0) {
        this->deltaxup[1] = this->countupold[1];
    }
        
    if (this->countdown[1] == 0.0 and this->diffset[1] == 2.0 and this->set[1] == 1.0) {
        this->deltaxdown[1] = this->countdownold[1];
    }

        
    // comput y up and down
    this->xup[0] = this->countup[0];
    this->xdown[0] = this->countdown[0];
        
    this->xup[1] = this->countup[1];
    this->xdown[1] = this->countdown[1];
        
    this->yup[0] = ((2./this->deltaxup[0])*this->xup[0]) - 1;
    this->ydown[0] = ((-1./this->deltaxdown[0])*this->xdown[0]) + 1;
        
    this->yup[1] = ((2./this->deltaxup[1])*this->xup[1]) - 1;
    
    /*if(this->shift){
        this->yup[1]=((4/this->deltaxup[1])*this->xup[1]);
    }*/
    this->ydown[1] = ((-this->pcpg_slope/this->deltaxdown[1])*this->xdown[1]) + 1;

    // combine y up and down
    if (this->set[0] >= 0.0) {
        this->pcpg_out[0] = this->yup[0];
    }
        
    if (this->set[0] < 0.0) {
        this->pcpg_out[0] = this->ydown[0];
    }
        
    if (this->set[1] >= 0.0) {
        this->pcpg_out[1] = this->yup[1];
    }
        
    if (this->set[1] < 0.0) {
        this->pcpg_out[1] = this->ydown[1];
    }

    /*if(this->shift){
        if((this->pcpg_out[1] < 0)){
            if((this->pcpg_out[1]>-0.9))
            {
                this->pcpg_out[1] = (this->pcpg_out[1]+1.0)*4.0;
            }
            
        }else{
            this->pcpg_out[1] = 1;
        }
    }*/
      
    // limit upper and lower boundary

    if (this->pcpg_out[0] > 1.0) {
        this->pcpg_out[0] = 1.0;
    }
        
    if (this->pcpg_out[0] < -1.0) {
        this->pcpg_out[0] = -1.0;
    }

    if (this->pcpg_out[1] > 1.0) {
        this->pcpg_out[1] = 1.0;
    }
        
    if (this->pcpg_out[1] < -1.0) {
        this->pcpg_out[1] = -1.0;
    }

    


}
    

/* this function return the output signal of the PCPG
    network, 
            if number is 1 the output is signal 1
            if number is 2 the output is signal 2     */
float Pcpg_controller::getSignal(int number)
{
    if(number == 1)
    {
        return this->pcpg_out[0];
    }else{
        /*if(this->shift)
        {
            if (this->pcpg_out[1] > -1){
                this->zero_count[1] = 0;
            }else{
                this->zero_count[1] += 1;
            }
            if(this->zero_count[1] >= 5){
                return -0.90;
            }
        }*/
        return this->pcpg_out[1];
    }
}
