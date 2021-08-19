//*******************************************
//*                                         *
//*               delay line                *
//*                                         *
//*******************************************
// author: Arthicha Srisuchinnawong, Dong Hao
// contract: zumoarthicha@gmail.com, 
// data: 30/05/2018
// version: 2.0.0

#include "Delay_line.h"


// initialize Delay line.
Delay_line::Delay_line()
{
    // initial class attributes
    this->delaySize = 0;
    this->step = 0;
    setNeuronNumber(2);
}

// set the size of delay line.
void Delay_line::setParameter(int delaySize,int delayNeuronNum){

    this->delaySize = delaySize;
    this->delay_lf_ptr = new float[delaySize];
    this->delayNeuronNum  = delayNeuronNum;
    for(int i=0;i<this->delaySize;i++)
    {
        this->delay_lf_ptr[i] = -1.0;
    }
}
  
// put the signal in the delay line
void Delay_line::writeIn(float out){
    this->delay_lf_ptr[this->step+1] = out;
}

/* this is debugging function to print out
    the data in the delay line */
void Delay_line::printDelayLf(int indx)
{
    cout << this->delay_lf_ptr[indx] << '\t' << indx << endl;
}

// private method
    // special modulation function
int Delay_line::mod(int x,int m){
    int r = x%m;
    if(x<=0)
    {
        return (x+m);
    }else{
        return x;
    }
}

// get data from delay line
float Delay_line::read(int delay)
{
    float y = this->delay_lf_ptr[this->mod(this->step+1-delay, this->delaySize)];
    return y;
}

// update the delay line
void Delay_line::step_one(){
    this->step += 1;
    if(((this->step+1) % (this->delaySize+1)) == 0){
        this->step = 0;
    }
}

void Delay_line::updateOutputs()
{
    double input = getActivity(0);
    this->writeIn(input);
    this->step_one();
    
    float output = read(this->delayNeuronNum);
    //printf("%f/n/r",output);
    setOutput(1,output);
}

