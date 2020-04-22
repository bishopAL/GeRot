/*
 *  Created on: Apr 10, 2012
 *  Author: Eduard Grinke
 *
 *  Edited by Dennis Goldschmidt
 *  Apr 27, 2012
 * 
 *	Edited by Arthicha Srisuchinnawong
  * Dec 30, 2019
 */

#ifndef MODULARNEURALCONTROL_H_
#define MODULARNEURALCONTROL_H_

#include "utils/ann-framework/ann.h"
#include <map>
#include <fstream>
#include <math.h>
#include "utils/ann-library/so2cpg.h"
#include "pcpg.h"
#include "rbf.h"
#include "utils/ann-framework/transferfunction.h"
//#include "utils/ann-library/pcpg.h"
#include "utils/ann-library/psn.h"
#include "utils/ann-library/vrn.h"
#include "utils/ann-library/pmn.h"
#include "Delay_line.h"
#include "utils/ann-framework/neuron.h"
using namespace std;

// forward declarations
class SO2CPG;
class PCPG;
class PSN;
class VRN;
class PMN;
class RBF;
class AdaptiveSO2CPGSynPlas;
//class ModularNeuralControl;




class ModularNeuralControl: public ANN {

public:

	ModularNeuralControl();
	double getCpgOutput(int output);
	double getCpgActivity(int output);
	double getpcpgOutput(int output);
	double getMotorOutput(int jointNum, int legNum);
	double getDLOutput(int line);
	//double getPsnOutput(int output);
	double getPmnOutput(int output);
	double getPpnOutput(int output);
	double getRbfOutput(int output);
	//double getVrnLeftOutput(int output);
	//double getVrnRightOutput(int output);
	double getAnnOutput(int output);

	//void setInputVrnLeft(int input, double value);
	//void setInputVrnRight(int input, double value);
	//void setInputPsn(int input, double value);
	void setCpgOutput(int neuron,double value);
	void setInputNeuronInput(int input, double value);
	//void setInputMotorNeuronInput(int input, double value);
	//double getMotorNeuronActivity(int motor);
	//double getMotorNeuronOutput(int motor);
	double Control_input;
	double cpg_bias;
	double getCpgWeight(int neuron1, int neuron2);
	double getCpgBias(int neuron);
	/*void enableoscillatorsCoupling(bool mMCPGs);
	void disableoscillatorsCoupling();

	void enableContactForce(bool MCPGs);
	void disableContactForce();*/
	/**********************************/

	//bool oscillatorsCouplingIsEnabled;
	vector<double> currentActivity;
	/*double delta[6][6];
	double cnctCoeffMat[6][6];*/
	void  changeMI(double new_ControlInput);
	/*void changeGaitpattern(int gaitPattern);*/
	virtual void step();
	//virtual void step(int CPGID, vector< vector <double> > cCPGs,const vector<double> x);
	/*bool contactForceIsEnabled;
	double oscillatorcouple1;
	double oscillatorcouple0;
	double ContactForceEffect1;
	double ContactForceEffect0;

	//Save files
	ofstream outFilemlc;*/

	/*************************************/

private:
	SO2CPG * cpg;
	SO2CPG * cpg_sim;
	PCPG * pcpg;
	VRN * vrn[12];


	PMN* pmn;
	PMN* ppn;
	//PSN * psn;
	RBF * rbf;
	ANN * log_ann;
	Delay_line * DL[12];

	int delaySize = 67;
	int delayNeuronNum[4] = {43,22,66,0};//{63,43,86,20};//{59,37,81,15};
	float swingAmp[2] = {0.5,0.4};
	
	int swgain[4] = {-1,-1,1,1}; //{RH,_,_,RF}

	float l1 = 1.0;
	float l2 = 1.0;

	vector<Neuron*> inputNeurons;
	//vector<Neuron*> outputNeurons;

	const double reference_q1[89] = {0.44766,0.43165,0.4156,0.39952,0.38342,0.36729,0.35113,0.33496,0.31878,0.30258,0.28637,0.27016,0.25395,0.23775,0.22155,0.20537,0.1892,0.17306,0.15695,0.14087,0.12484,0.10885,0.092912,0.077036,0.061224,0.045485,0.029824,0.014248,-0.0012363,-0.016622,-0.031903,-0.047072,-0.062122,-0.077047,-0.091841,-0.1065,-0.121,-0.13536,-0.14956,-0.1636,-0.17747,-0.19116,-0.20467,-0.21799,-0.23112,-0.24406,-0.25679,-0.26931,-0.28163,-0.29373,-0.30561,-0.31726,-0.3287,-0.3399,-0.35087,-0.3616,-0.3721,-0.38236,-0.39237,-0.40215,-0.41167,-0.42096,-0.42999,-0.43878,-0.44732,-0.45561,-0.46365,-0.46365,-0.41949,-0.37533,-0.33118,-0.28702,-0.24286,-0.19871,-0.15455,-0.11039,-0.066235,-0.022078,0.022078,0.066235,0.11039,0.15455,0.19871,0.24286,0.28702,0.33118,0.37533,0.41949,0.46365};
	const double reference_q2[89] = {-0.0079428,-0.01567,-0.02318,-0.030471,-0.037541,-0.044388,-0.051012,-0.057409,-0.063579,-0.069519,-0.075228,-0.080704,-0.085945,-0.09095,-0.095716,-0.10024,-0.10453,-0.10857,-0.11237,-0.11592,-0.11922,-0.12227,-0.12508,-0.12763,-0.12993,-0.13198,-0.13378,-0.13532,-0.1366,-0.13763,-0.1384,-0.13891,-0.13917,-0.13917,-0.13891,-0.1384,-0.13763,-0.1366,-0.13532,-0.13378,-0.13198,-0.12993,-0.12763,-0.12508,-0.12227,-0.11922,-0.11592,-0.11237,-0.10857,-0.10453,-0.10024,-0.095716,-0.09095,-0.085945,-0.080704,-0.075228,-0.069519,-0.063579,-0.057409,-0.051012,-0.044388,-0.037541,-0.030471,-0.02318,-0.01567,-0.0079428,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
	const double reference_q1_sideway[89] = {0.12176,0.11422,0.10693,0.099887,0.093094,0.086548,0.080251,0.074199,0.068394,0.062834,0.057518,0.052445,0.047613,0.043023,0.038672,0.034559,0.030684,0.027044,0.023639,0.020468,0.01753,0.014822,0.012345,0.010096,0.008076,0.0062829,0.004716,0.0033746,0.0022579,0.0013653,0.00069638,0.00025064,2.7846e-05,2.7846e-05,0.00025064,0.0006964,0.0013654,0.0022582,0.0033755,0.0047182,0.0062873,0.0080844,0.010111,0.012369,0.01486,0.017588,0.020555,0.023764,0.027219,0.030925,0.034886,0.039107,0.043594,0.048354,0.053395,0.058724,0.064352,0.070288,0.076544,0.083134,0.090073,0.097378,0.10507,0.11316,0.12169,0.13068,0.14017,0.14017,0.13925,0.13833,0.13741,0.13649,0.13557,0.13465,0.13373,0.13281,0.13189,0.13097,0.13005,0.12913,0.1282,0.12728,0.12636,0.12544,0.12452,0.1236,0.12268,0.12176};
	const double reference_q2_sideway[89] = {-0.37624,-0.36787,-0.35929,-0.3505,-0.3415,-0.3323,-0.32288,-0.31327,-0.30345,-0.29343,-0.2832,-0.27278,-0.26215,-0.25133,-0.2403,-0.22908,-0.21766,-0.20604,-0.19422,-0.1822,-0.16998,-0.15756,-0.14494,-0.13212,-0.1191,-0.10587,-0.092441,-0.078802,-0.064954,-0.050896,-0.036625,-0.022139,-0.0074349,0.0074906,0.022641,0.038019,0.053629,0.069476,0.085563,0.1019,0.11848,0.13533,0.15243,0.16981,0.18747,0.20541,0.22365,0.2422,0.26106,0.28025,0.29977,0.31966,0.33991,0.36054,0.38157,0.40303,0.42493,0.4473,0.47015,0.49353,0.51747,0.54199,0.56715,0.59298,0.61955,0.64691,0.67513,0.67513,0.62256,0.56999,0.51743,0.46486,0.41229,0.35972,0.30715,0.25458,0.20201,0.14945,0.096877,0.044309,-0.0082599,-0.060828,-0.1134,-0.16597,-0.21853,-0.2711,-0.32367,-0.37624};
};


#endif /* MODULARNEURALCONTROL_H_ */
