#ifndef PCPG_H_
#define PCPG_H_

#include "utils/ann-framework/ann.h"
#include "utils/ann-library/so2cpg.h"

class PCPG : public ANN {
public:

    PCPG();
    void updateOutputs();
    void setParameters(float value1,float value2);

    void cpgStep();
    void cpgSetMI(double mi);
    void cpgSetActivity(double c1,double c2);

    void cpgSim(double c1,double c2, double mi);

private:

	double mu_0 = 0.85; // threshold for digital comparison event
	double mu_1 = 2; // falling slope

	double cpg[2] = {0,0.1};
	double w[4] = {1.4,1.4,0.18,0.18};
	double MI = 0.03;


	//std::vector<double> set;
	//std::vector<double> countup;
	//std::vector<double> countdown;

	//std::vector<double> pcpg_step;
	//std::vector<double> setold;
	//std::vector<double> countupold;
	//std::vector<double> countdownold;
	//std::vector<double> diffset ;
	//std::vector<double> deltaxdown;
	//std::vector<double> deltaxup;
	//std::vector<double> xup;
	//std::vector<double> xdown;

	//std::vector<double> yup;
	//std::vector<double> ydown;
	//std::vector<double> pcpg_output;

	double cpg_step[2] = {0.0};
	float pcpg_max[2] = {0.0};
	//float pcpg_maxx[2] = {0.0};
	float pcpg_out[2] = {0.0};
	float countup[2] = {0.0};
	float countdown[2] = {0.0};
	float yup[2] = {0.0};
	float ydown[2] = {0.0};
	float sett = 0.0;
	float setold = 0.0;
	float set_count = 0.0;


};


#endif /* PCPG_H_ */
