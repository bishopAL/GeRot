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

#include "ModularNeuralControl.h"

ModularNeuralControl::ModularNeuralControl(){

	for(int i=0;i<10;i++)
	{
		inputNeurons.push_back(addNeuron());
		inputNeurons.at(i)->setTransferFunction(identityFunction());
	}

	//create 19 output neurons for modularneuralcontrol
	/*for(int i=0;i<19;i++)
	{
		outputNeurons[i]=addNeuron();
		outputNeurons.at(i)->setTransferFunction(identityFunction());
	}*/
	//end

	/*******************************************************************************
	 *  MODULE 0 Preprocessing Neuron
	 *******************************************************************************/


	ppn = new PMN();

	w(ppn->getNeuron(0), inputNeurons[0], 0.2);
	w(ppn->getNeuron(0),ppn->getNeuron(0),0.8);
	ppn->setTransferFunction(0,ppn->identityFunction());

	w(ppn->getNeuron(1) ,inputNeurons[6], 0.1);
	w(ppn->getNeuron(1),ppn->getNeuron(1),0.995);
	ppn->setTransferFunction(1,ppn->identityFunction());


	w(ppn->getNeuron(2), inputNeurons[7], 0.1);
	w(ppn->getNeuron(2),ppn->getNeuron(2),0.995);
	ppn->setTransferFunction(2,ppn->identityFunction());

	w(ppn->getNeuron(3), ppn->getNeuron(1), 0.5);
	w(ppn->getNeuron(3), ppn->getNeuron(2), 0.5);
	w(ppn->getNeuron(3),ppn->getNeuron(3),0.2);

	ppn->setTransferFunction(3,ppn->tanhFunction());

	w(ppn->getNeuron(4), ppn->getNeuron(3), -25.0);
	b(ppn->getNeuron(4),4.0);
	ppn->setTransferFunction(4,ppn->logisticFunction());

	w(ppn->getNeuron(5), ppn->getNeuron(4), 1.0);
	w(ppn->getNeuron(5),inputNeurons[2],1.0);
	b(ppn->getNeuron(5),0.1*0.0);
	ppn->setTransferFunction(5,ppn->identityFunction());

	w(ppn->getNeuron(6), ppn->getNeuron(4), 1.0);
	w(ppn->getNeuron(6),inputNeurons[3],1.0);
	b(ppn->getNeuron(6),0.1*0.0);
	ppn->setTransferFunction(6,ppn->identityFunction());

	
	w(ppn->getNeuron(7), ppn->getNeuron(1), 20);
	//w(ppn->getNeuron(7),ppn->getNeuron(4),-20);
	b(ppn->getNeuron(7),-10);
	ppn->setTransferFunction(7,ppn->logisticFunction());

	w(ppn->getNeuron(8), ppn->getNeuron(2), 20);
	//w(ppn->getNeuron(8),ppn->getNeuron(4),-20);
	b(ppn->getNeuron(8),-10);
	ppn->setTransferFunction(8,ppn->logisticFunction());


	w(ppn->getNeuron(9), ppn->getNeuron(7), 3.0);
	w(ppn->getNeuron(9),ppn->getNeuron(8),-3.0);
	ppn->setTransferFunction(9,ppn->tanhFunction());

	w(ppn->getNeuron(10), ppn->getNeuron(0), -1.0);
	b(ppn->getNeuron(10),35);
	ppn->setTransferFunction(10,ppn->thresholdFunction());

	w(ppn->getNeuron(11), ppn->getNeuron(0), -1.0);
	b(ppn->getNeuron(11),55);
	ppn->setTransferFunction(11,ppn->thresholdFunction());

	w(ppn->getNeuron(12), ppn->getNeuron(10), 0.02);
	w(ppn->getNeuron(12), ppn->getNeuron(11), 0.05);
	b(ppn->getNeuron(12),0.03);
	ppn->setTransferFunction(12,ppn->identityFunction());

	w(ppn->getNeuron(13), ppn->getNeuron(12), 0.02);
	w(ppn->getNeuron(13), ppn->getNeuron(13), 0.98);
	ppn->setTransferFunction(13,ppn->identityFunction());





	addSubnet(ppn);


	/*******************************************************************************
	 *  MODULE 1 CPG
	 *******************************************************************************/

	if(true)
	{
		cpg = new SO2CPG();
		cpg_bias = 0.0;
		//From 0.02-1.5
		//Control_input = 0.02;// slow Wave
		//Control_input = 0.03;// slow Wave OK USED
		//Control_input = 0.05;//slow stable Tetrapod OK USED
		Control_input = 0.10; //terapod OK USED
		//Control_input = 0.18; //Tripod fast OK USED
		//Control_input = 0.34; //Faster than tripod


		//destabilize cpg to oscillate
		cpg->setOutput(1, 0.885);
		cpg->setOutput(0, -0.59268);
		cpg->setActivity(0, 0.885);
		cpg->setActivity(1, -0.59268);

		//set cpg weights to override timos phi weight matrix
		cpg->setWeight(0, 0, 1.4); 
		cpg->setWeight(0, 1, 0.18 + Control_input);
		cpg->setWeight(1, 0, -0.18 - Control_input);
		cpg->setWeight(1, 1, 1.4);

		//set bias
		cpg->setBias(0, cpg_bias);
		cpg->setBias(1, cpg_bias);

	}

	//for updating the subnets (to do the time step)
	addSubnet(cpg);

	/*******************************************************************************
	 *  MODULE 2 RBF
	 *******************************************************************************/
	
	rbf     = new RBF();
	rbf->setReference(reference_q2_sideway);
	rbf->setParameters(0.4);
	rbf->train();
	w(rbf->getNeuron(0),cpg->getNeuron(0),1);
	w(rbf->getNeuron(1),cpg->getNeuron(1),1);

	addSubnet(rbf);


	/*******************************************************************************
	 *  MODULE 3 PCPG
	 *******************************************************************************/




	pcpg     = new PCPG();
	pcpg->setParameters(-0.4,-50);
	//cpg to pcpg
	w(pcpg->getNeuron(0),cpg->getNeuron(0),1.0);
	w(pcpg->getNeuron(1),cpg->getNeuron(1),1.0);

	addSubnet(pcpg);

	/*******************************************************************************
	 *  MODULE 4 VRN
	 *******************************************************************************/

	double lambda = 0.000001;
	double mu = 3.87882069e+12;
	double beta = 2.3787;
	int n_vrn = 5;


	for(int v=0;v<n_vrn;v++)
	{
		// loop through each VRN (left,right)
		vrn[v] = new VRN();

		vrn[v]->setTransferFunction(0,vrn[v]->identityFunction());
		vrn[v]->setTransferFunction(1,vrn[v]->identityFunction());
		vrn[v]->setTransferFunction(2,vrn[v]->logisticFunction());
		vrn[v]->setTransferFunction(3,vrn[v]->logisticFunction());
		vrn[v]->setTransferFunction(4,vrn[v]->logisticFunction());
		vrn[v]->setTransferFunction(5,vrn[v]->logisticFunction());
		vrn[v]->setTransferFunction(6,vrn[v]->identityFunction());

		// set weight and bias
		vrn[v]->setWeight(vrn[v]->getNeuron(2),vrn[v]->getNeuron(0),lambda);
		vrn[v]->setWeight(vrn[v]->getNeuron(2),vrn[v]->getNeuron(1),lambda);
		vrn[v]->setWeight(vrn[v]->getNeuron(3),vrn[v]->getNeuron(0),-lambda);
		vrn[v]->setWeight(vrn[v]->getNeuron(3),vrn[v]->getNeuron(1),-lambda);
		vrn[v]->setWeight(vrn[v]->getNeuron(4),vrn[v]->getNeuron(0),lambda);
		vrn[v]->setWeight(vrn[v]->getNeuron(4),vrn[v]->getNeuron(1),-lambda);
		vrn[v]->setWeight(vrn[v]->getNeuron(5),vrn[v]->getNeuron(0),-lambda);
		vrn[v]->setWeight(vrn[v]->getNeuron(5),vrn[v]->getNeuron(1),lambda);
		vrn[v]->setWeight(vrn[v]->getNeuron(6),vrn[v]->getNeuron(2),-mu);
		vrn[v]->setWeight(vrn[v]->getNeuron(6),vrn[v]->getNeuron(3),-mu);
		vrn[v]->setWeight(vrn[v]->getNeuron(6),vrn[v]->getNeuron(4),mu);
		vrn[v]->setWeight(vrn[v]->getNeuron(6),vrn[v]->getNeuron(5),mu);
		vrn[v]->setBias(vrn[v]->getNeuron(2),beta);
		vrn[v]->setBias(vrn[v]->getNeuron(3),beta);
		vrn[v]->setBias(vrn[v]->getNeuron(4),beta);
		vrn[v]->setBias(vrn[v]->getNeuron(5),beta);

	}

	// create connections from pcpg and RBF to VRN
	// lift
	w(vrn[0]->getNeuron(0), pcpg->getNeuron(1), 1.0);
	w(vrn[0] ->getNeuron(1), inputNeurons[1], 1.0);
	// left
	w(vrn[1]->getNeuron(0), pcpg->getNeuron(0), 1.0);
	w(vrn[1] ->getNeuron(1), ppn->getNeuron(5), 1.0);
	// right
	w(vrn[2]->getNeuron(0), pcpg->getNeuron(0), 1.0);
	w(vrn[2] ->getNeuron(1), ppn->getNeuron(6), 1.0);
	// front joint 2
	w(vrn[3]->getNeuron(0), rbf->getNeuron(2), 1.0);
	w(vrn[3] ->getNeuron(1), ppn->getNeuron(9), 1.0);
	// rear joint 2
	w(vrn[4]->getNeuron(0), rbf->getNeuron(2), 1.0);
	w(vrn[4] ->getNeuron(1), ppn->getNeuron(9), 1.0);

	for(int v=0;v<n_vrn;v++)
	{
		addSubnet(vrn[v]);
	}

	/*******************************************************************************
	 *  MODULE 5 PSN
	 *******************************************************************************/
	/*psn		 = new PSN();
	//psn->setAllTransferFunctions(psn->identityFunction(),0);

	w(psn->getNeuron(0), inputNeurons[6], -1);
	w(psn->getNeuron(1), inputNeurons[6], 1);

	// pcpg to PSN
	w(psn->getNeuron(2), vrn[1]->getNeuron(6), 0.5*0.1);
	w(psn->getNeuron(3), vrn[3]->getNeuron(6), 0.5*0.1);
	w(psn->getNeuron(4), vrn[3]->getNeuron(6), 0.5*0.1);
	w(psn->getNeuron(5), vrn[1]->getNeuron(6), 0.5*0.1);

	addSubnet(psn);*/

	

	/*******************************************************************************
	 *  MODULE 6 Pre Motor Neurons PMN
	 *******************************************************************************/

	int n_pmn = 10;
	pmn = new PMN();

	for(int i=0;i<n_pmn;i++)
	{
		pmn->setTransferFunction(i,pmn->identityFunction());
	}


	//lift
	//w(pmn->getNeuron(0), inputNeurons[1], 1.0);  
	w(pmn->getNeuron(1), inputNeurons[1], 0.4);  
	w(pmn->getNeuron(1), vrn[0]->getNeuron(6), 0.4);  
	// left and right (when walk forward)
	w(pmn->getNeuron(2), vrn[1]->getNeuron(6), 0.4);
	w(pmn->getNeuron(3), vrn[2]->getNeuron(6), 0.4); 
	// front and rear (when walk sideway;joint 1 and 2)
	w(pmn->getNeuron(4), vrn[3]->getNeuron(6), 0.2);
	b(pmn->getNeuron(4),0.0);
	w(pmn->getNeuron(5), vrn[4]->getNeuron(6), 0.2);
	b(pmn->getNeuron(5),0.0);


	addSubnet(pmn);

	/*******************************************************************************
	 *  MODULE 7 Delay Line
	 *******************************************************************************/

	for(int i=0;i<9;i++)
	{
		delayLineArray[i].setParameter(delaySize);
	}

}




void ModularNeuralControl::setInputNeuronInput(int input, double value)
{
	setInput(inputNeurons[input],value);
}

/*void ModularNeuralControl::setInputMotorNeuronInput(int input, double  value)
{
	pmn->setInput(input,value);
}

//with preprocessing probably depratched
double ModularNeuralControl::getMotorNeuronActivity(int motor)
{
	return getActivity(outputNeurons[motor]);
}*/


//with preprocessing probably depratched
/*double ModularNeuralControl::getMotorNeuronOutput(int motor)
{
	return getOutput(outputNeurons[motor]);
}*/


//with preprocessing probably depratched
double ModularNeuralControl::getCpgOutput(int output)
{
	return cpg->getOutput(output);
}

double ModularNeuralControl::getCpgActivity(int output)
{
	return cpg->getActivity(output);
}

double ModularNeuralControl::getCpgWeight(int neuron1, int neuron2)
{
	return cpg->getWeight(neuron1, neuron2);
}

double ModularNeuralControl::getCpgBias(int neuron)
{
	return cpg->getBias(neuron);
}

void  ModularNeuralControl::setCpgOutput(int neuron,double value)
{
	cpg->setOutput(neuron,value);
}

void ModularNeuralControl::changeMI(double new_ControlInput)
{
	Control_input=new_ControlInput;
	cpg->setWeight(0, 1, 0.18 + new_ControlInput);
	cpg->setWeight(1, 0, -0.18 - new_ControlInput);
}

//with preprocessing probably depratched
double ModularNeuralControl::getpcpgOutput(int output)
{
	return pcpg->getOutput(output);
}

double ModularNeuralControl::getRbfOutput(int output)
{
	return rbf->getOutput(output);
}

double ModularNeuralControl::getAnnOutput(int output)
{
	return log_ann->getOutput(output);
}

double ModularNeuralControl::getDelayLineOutput(int jointNum, int legNum)
{
	/*
	legNum = {RH,RF,LH,LF}
	jointNum = {joint0,joint1_left,joint1_right,joint2_left,joint2_right}
	*/
	int lineNum =0;

	if(jointNum == 0){
		lineNum = 0;
	}else {
		lineNum = jointNum+2*(legNum);
	}

	return delayLineArray[lineNum].read(delayNeuronNum[legNum]);
}


//with preprocessing probably depratched
/*void ModularNeuralControl::setInputPsn(int input, double value)
{
	psn->setInput(input,value);
}*/

//with preprocessing probably depratched
/*void ModularNeuralControl::setInputVrnLeft(int input, double value)
{
	vrnLeft->setInput(input,value);
}

//with preprocessing probably depratched
void ModularNeuralControl::setInputVrnRight(int input, double  value)
{
	vrnRight->setInput(input,value);
}*/



//with preprocessing probably depratched
/*double ModularNeuralControl::getPsnOutput(int output)
{
	return psn->getOutput(output)*10.0-0.36125;
}*/

double ModularNeuralControl::getPmnOutput(int output)
{
	return pmn->getOutput(output);
}

double ModularNeuralControl::getPpnOutput(int output)
{
	return ppn->getOutput(output);
}

//with preprocessing probably depratched
/*double ModularNeuralControl::getVrnLeftOutput(int output)
{
	return vrn[0]->getOutput(output);
}

//with preprocessing probably depratched
double ModularNeuralControl::getVrnRightOutput(int output)
{
	return vrn[1]->getOutput(output);
}*/




/*void ModularNeuralControl::enableoscillatorsCoupling(bool mMCPGs)
{
	if(mMCPGs)
		oscillatorsCouplingIsEnabled=true;

}
void ModularNeuralControl::disableoscillatorsCoupling()
{
	oscillatorsCouplingIsEnabled=false;

}
void ModularNeuralControl::enableContactForce(bool mMCPGs)
{
	if(mMCPGs)
		contactForceIsEnabled=true;
}
void ModularNeuralControl::disableContactForce()
{

	contactForceIsEnabled=false;
}*/

void ModularNeuralControl::step()
{

	changeMI(ppn->getOutput(13));
	pcpg->cpgSetMI(ppn->getOutput(13));

	updateActivities();
	updateWeights();
	updateOutputs();
	rbf->step();

	postProcessing();

	
	double temp = 0;
	for(int i=0;i<5;i++)
	{

		



		// rh rf lh lf
		// lift
		delayLineArray[0].writeIn(getPmnOutput(1)); // j0

		
		
		temp = 1.5707-getPmnOutput(5);
		temp = atan(1/(sqrt(2*cos(temp)+1))) - atan(sin(temp)/(1+cos(temp)));

		// rh
		delayLineArray[1].writeIn(getPmnOutput(3)+temp); // j1
		delayLineArray[2].writeIn(-acos(1.0-cos(getPmnOutput(3)))+getPmnOutput(3)+1.57-getPmnOutput(5)); // j2
		
		// lh
		delayLineArray[5].writeIn(getPmnOutput(2)+temp); // j1
		delayLineArray[6].writeIn(-acos(1.0-cos(getPmnOutput(2)))+getPmnOutput(2)+1.57+getPmnOutput(5)); // j2

		temp = 1.5707-getPmnOutput(4);
		temp = atan(1/(sqrt(2*cos(temp)+1))) - atan(sin(temp)/(1+cos(temp)));

		// lf
		delayLineArray[7].writeIn(getPmnOutput(2)+temp); // j1
		delayLineArray[8].writeIn(-acos(1.0-cos(getPmnOutput(2)))+getPmnOutput(2)+1.57+getPmnOutput(4)); // j2
		// rf
		delayLineArray[3].writeIn(getPmnOutput(3)+temp); // j1
		delayLineArray[4].writeIn(-acos(1.0-cos(getPmnOutput(3)))+getPmnOutput(3)+1.57-getPmnOutput(4)); // j2

	}

	for(int i=0;i<9;i++)
	{
		delayLineArray[i].step_one();
	}
	
}

/**
 * param: CPGID: id of the CPG (each CPG has a unique id (0,1,...,5))
 * param: x : sensory information
 * author: subhi shaker barikhan
 * date:26.05.2014
 */
/*void ModularNeuralControl::step(int CPGID, vector< vector<double> > cCPGs, const vector<double> x)
{
	currentActivity.at(0)=cpg->getActivity(cpg->getNeuron(0));
	currentActivity.at(1)=cpg->getActivity(cpg->getNeuron(1));
	updateActivities();
	double activity0=cpg->getActivity(cpg->getNeuron(0))+cpg->getBias(0);
	double activity1=cpg->getActivity(cpg->getNeuron(1))+cpg->getBias(1);

	int sensorname=AmosIISensorNames(CPGID+R0_fs);
	if ( oscillatorsCouplingIsEnabled==true)
	{

		for(int i=0;i<6;i++) // 6 is the number of CPGs
		{
			if (CPGID!=i)
			{
				oscillatorcouple0= 0.1*(1-cos(currentActivity.at(0)-cCPGs.at(i).at(0)-delta[CPGID][i]))
                                        				 +sin(currentActivity.at(0)-cCPGs.at(i).at(0)-delta[CPGID][i]);

				oscillatorcouple1= 0.1*(1-cos(currentActivity.at(1)-cCPGs.at(i).at(1)-delta[CPGID][i]))
                                        				 +sin(currentActivity.at(1)-cCPGs.at(i).at(1)-delta[CPGID][i]);

				activity0-=cnctCoeffMat[CPGID][i]*(oscillatorcouple0);

				activity1-=cnctCoeffMat[CPGID][i]*(oscillatorcouple1);
			}

			cpg->setActivity(0, activity0);
			cpg->setActivity(1, activity1);
		}

	}
	if (contactForceIsEnabled && !oscillatorsCouplingIsEnabled)
	{
		if (sensorname==R1_fs || sensorname==L1_fs )
		{
			ContactForceEffect1=-(0.03)*(x.at(sensorname))*sin(currentActivity.at(1));//predictActivity
			ContactForceEffect0=-(0.03)*(x.at(sensorname))*cos(currentActivity.at(0));
		}
		else if(sensorname==R0_fs || sensorname==L0_fs  )
		{
			ContactForceEffect1=-(0.03)*(x.at(sensorname))*sin(currentActivity.at(1));//0.03
			ContactForceEffect0=-(0.04)*(x.at(sensorname))*cos(currentActivity.at(0)); //0.04
		}
		else
		{
			ContactForceEffect1=-(0.03)*(x.at(sensorname))*sin(currentActivity.at(1));
			ContactForceEffect0=-(0.035)*(x.at(sensorname))*cos(currentActivity.at(0));//0.035
		}
	}
	/* *
	 * when contactForceEnable is true but oscillatorsCouplingIsEnabled is false,
	 *                         continuous local sensory feedback mechanism will be deployed.
	 */
	/*else if(contactForceIsEnabled && oscillatorsCouplingIsEnabled)
	{
		ContactForceEffect0=-(0.035)*(x.at(sensorname))*cos(currentActivity.at(0));
		ContactForceEffect1=-(0.03)*(x.at(sensorname))*sin(currentActivity.at(1));

	}

	else
	{
		ContactForceEffect0=0;
		ContactForceEffect1=0;
	}

	outFilemlc <<activity1<<' '<<currentActivity.at(1)<<' '<<-(0.03)*(x.at(R0_fs))*sin(currentActivity.at(1))<<' '<<x.at(R0_fs)<<' '<<-sin(currentActivity.at(1))<<' '<<activity0<<' '<<currentActivity.at(0)<<' '<<-(0.04)*(x.at(R0_fs))*cos(currentActivity.at(0))<<' '<<x.at(R0_fs)<<' '<<-cos(currentActivity.at(0))<<endl;

	cpg->setActivity(0, activity0+ContactForceEffect0);
	cpg->setActivity(1, activity1+ContactForceEffect1);



	// updateActivities();
	updateWeights();
	updateOutputs();
	postProcessing();



}*/


/*
 *
 * Parameter gaitPattern:
 * gaitPattern=0==>Tripod
 * gaitPattern=1==>Tetrapod
 * gaitPattern=2==>Wave
 * gaitPattern=3==> irrgeular gait, where lateral legs move in phase and contralateral legs move out of phase.
 * For more information about gait generation, it is recommended to take a look at P.37 (Multiple CPGs with Local Feedback Mechanisms
																for Locomotor Adaptation of Hexapod Robots)
 * author subhi Shaker Barikhan
 * Date: 12.05.2014
 * */
/*
void ModularNeuralControl::changeGaitpattern(int gaitPattern)
{
	if (oscillatorsCouplingIsEnabled)
	{
		for(int i=0;i<6;i++)
		{
			for(int j=0;j<6;j++)
			{
				delta[i][j]=0;
				cnctCoeffMat[i][j]=0.0;
			}
		}
		double k_ij=0.006;//0.01 0.0035 0.004 0.005

		switch  (gaitPattern)
		{
		case 0:
			////************************ TRIPOD-fullyConnected****************************/////////
			//double k_ij=0.01;
			// it is possible to use either 0 or 2*Pi to mention phase difference between oscillators
			/*delta[1][0]=M_PI;
			delta[2][0]=0;delta[2][1]=M_PI;
			delta[3][0]=M_PI;delta[3][1]=0;delta[3][2]=M_PI;
			delta[4][0]=0;delta[4][1]=M_PI;delta[4][2]=0;delta[4][3]= M_PI;
			delta[5][0]=M_PI; delta[5][1]=0; delta[5][2]=M_PI;delta[5][3]=0; delta[5][4]=M_PI;

			cnctCoeffMat[1][0]=k_ij;
			cnctCoeffMat[2][0]=k_ij;cnctCoeffMat[2][1]=k_ij;
			cnctCoeffMat[3][0]=k_ij;cnctCoeffMat[3][1]=k_ij;cnctCoeffMat[3][2]=k_ij;
			cnctCoeffMat[4][0]=k_ij;cnctCoeffMat[4][1]=k_ij;cnctCoeffMat[4][2]=k_ij;cnctCoeffMat[4][3]= k_ij;
			cnctCoeffMat[5][0]=k_ij;cnctCoeffMat[5][1]=k_ij; cnctCoeffMat[5][2]=k_ij;cnctCoeffMat[5][3]=k_ij; cnctCoeffMat[5][4]=k_ij;

			break;
		case 1:
			////************************ TETRAPOD-fullyConnected****************************/////////
			//double k_ij=0.01;
			/*delta[1][0]=2*M_PI/3;
			delta[2][0]=4*M_PI/3;delta[2][1]=2*M_PI/3;
			delta[3][0]=2*M_PI/3;delta[3][1]=0;delta[3][2]=-2*M_PI/3;
			delta[4][0]=4*M_PI/3;delta[4][1]=2*M_PI/3;delta[4][2]=0;delta[4][3]= 2*M_PI/3;//-2*M_PI/3
			delta[5][0]=0; delta[5][1]=4*M_PI/3; delta[5][2]=2*M_PI/3;delta[5][3]=4*M_PI/3; delta[5][4]=2*M_PI/3;

			cnctCoeffMat[1][0]=k_ij;
			cnctCoeffMat[2][0]=k_ij;cnctCoeffMat[2][1]=k_ij;
			cnctCoeffMat[3][0]=k_ij;cnctCoeffMat[3][1]=k_ij;cnctCoeffMat[3][2]=k_ij;
			cnctCoeffMat[4][0]=k_ij;cnctCoeffMat[4][1]=k_ij;cnctCoeffMat[4][2]=k_ij;cnctCoeffMat[4][3]= k_ij;
			cnctCoeffMat[5][0]=k_ij;cnctCoeffMat[5][1]=k_ij; cnctCoeffMat[5][2]=k_ij;cnctCoeffMat[5][3]=k_ij; cnctCoeffMat[5][4]=k_ij;
			break;

		case 2:
			////************************ Wave-fullyConnected****************************/////////
			//	 double k_ij=0.01;
			/*delta[1][0]=2*M_PI/6;
			delta[2][0]=4*M_PI/6;delta[2][1]=2*M_PI/6;
			delta[3][0]=6*M_PI/6;delta[3][1]=4*M_PI/6;delta[3][2]=2*M_PI/6;
			delta[4][0]=8*M_PI/6;delta[4][1]=6*M_PI/6;delta[4][2]=4*M_PI/6;delta[4][3]= 2*M_PI/6;
			delta[5][0]=10*M_PI/6; delta[5][1]=8*M_PI/6; delta[5][2]=6*M_PI/6;delta[5][3]=4*M_PI/6; delta[5][4]=2*M_PI/6;

			cnctCoeffMat[1][0]=k_ij;
			cnctCoeffMat[2][0]=k_ij;cnctCoeffMat[2][1]=k_ij;
			cnctCoeffMat[3][0]=k_ij;cnctCoeffMat[3][1]=k_ij;cnctCoeffMat[3][2]=k_ij;
			cnctCoeffMat[4][0]=k_ij;cnctCoeffMat[4][1]=k_ij;cnctCoeffMat[4][2]=k_ij;cnctCoeffMat[4][3]= k_ij;
			cnctCoeffMat[5][0]=k_ij;cnctCoeffMat[5][1]=k_ij; cnctCoeffMat[5][2]=k_ij;cnctCoeffMat[5][3]=k_ij; cnctCoeffMat[5][4]=k_ij;

			break;

		case 3:
			////************************ irregular gait-fullyConnected****************************/////////
			//	 double k_ij=0.01;
			/*delta[1][0]=0;
			delta[2][0]=0;delta[2][1]=0;
			delta[3][0]=M_PI;delta[3][1]=M_PI;delta[3][2]=M_PI;
			delta[4][0]=M_PI;delta[4][1]=M_PI;delta[4][2]=M_PI;delta[4][3]= 0;
			delta[5][0]=M_PI; delta[5][1]=M_PI; delta[5][2]=M_PI;delta[5][3]=0; delta[5][4]=0;

			cnctCoeffMat[1][0]=k_ij;
			cnctCoeffMat[2][0]=k_ij;cnctCoeffMat[2][1]=k_ij;
			cnctCoeffMat[3][0]=k_ij;cnctCoeffMat[3][1]=k_ij;cnctCoeffMat[3][2]=k_ij;
			cnctCoeffMat[4][0]=k_ij;cnctCoeffMat[4][1]=k_ij;cnctCoeffMat[4][2]=k_ij;cnctCoeffMat[4][3]= k_ij;
			cnctCoeffMat[5][0]=k_ij;cnctCoeffMat[5][1]=k_ij; cnctCoeffMat[5][2]=k_ij;cnctCoeffMat[5][3]=k_ij; cnctCoeffMat[5][4]=k_ij;

			break;

		}
		for(int i=0;i<6;i++)
		{
			for(int j=i+1;j<6;j++)
			{
				delta[i][j]=-delta[j][i];
				cnctCoeffMat[i][j]=cnctCoeffMat[j][i];
			}
		}
	}

}*/


