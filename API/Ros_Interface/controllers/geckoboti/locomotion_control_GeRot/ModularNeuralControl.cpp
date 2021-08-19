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

	// preprocessed IMU signal: N0, N1, N2, and N3 + I0 (manual) and I1 (feedback)
	w(ppn->getNeuron(0), inputNeurons[1], 0.2);
	w(ppn->getNeuron(0),ppn->getNeuron(0),0.8);
	ppn->setTransferFunction(0,ppn->identityFunction());

	w(ppn->getNeuron(1), ppn->getNeuron(0), -1.0);
	b(ppn->getNeuron(1),70);
	ppn->setTransferFunction(1,ppn->thresholdFunction());

	w(ppn->getNeuron(2), ppn->getNeuron(0), 0.0);
	b(ppn->getNeuron(2),100);
	ppn->setTransferFunction(2,ppn->thresholdFunction());

	w(ppn->getNeuron(3), ppn->getNeuron(1), 0.02);
	w(ppn->getNeuron(3), ppn->getNeuron(2), 0.05);
	w(ppn->getNeuron(3), inputNeurons[0], 1.0);
	b(ppn->getNeuron(3),0.03);
	ppn->setTransferFunction(3,ppn->identityFunction());

	// preprocessed IR signal (forward): N4, N5, N6, N7, N8, and N9 + I2 (manual), I3 (feedback), I4 (feedback), and I5 (manual)


	w(ppn->getNeuron(4) ,inputNeurons[3], 0.025);
	w(ppn->getNeuron(4),ppn->getNeuron(4),0.975);
	ppn->setTransferFunction(4,ppn->identityFunction());


	w(ppn->getNeuron(5), inputNeurons[4], 0.025);
	w(ppn->getNeuron(5),ppn->getNeuron(5),0.975);
	ppn->setTransferFunction(5,ppn->identityFunction());

	w(ppn->getNeuron(6), ppn->getNeuron(4), 1);
	w(ppn->getNeuron(6), ppn->getNeuron(5), 1);
	//w(ppn->getNeuron(6),ppn->getNeuron(6),0.9);
	ppn->setTransferFunction(6,ppn->tanhFunction());

	w(ppn->getNeuron(7), ppn->getNeuron(6), -2000.0);
	b(ppn->getNeuron(7),4.0);
	//w(ppn->getNeuron(7),ppn->getNeuron(7),0.0);
	ppn->setTransferFunction(7,ppn->logisticFunction());

	w(ppn->getNeuron(8), ppn->getNeuron(7), 0.5);
	b(ppn->getNeuron(8),0.5);
	//w(ppn->getNeuron(8),inputNeurons[2],1.0);
	ppn->setTransferFunction(8,ppn->identityFunction());

	/*w(ppn->getNeuron(9), ppn->getNeuron(7), 1.0);
	b(ppn->getNeuron(9),0.0);
	//w(ppn->getNeuron(9),inputNeurons[5],1.0);
	ppn->setTransferFunction(9,ppn->identityFunction());*/

	// preprocessed IR signal (sideways): N10, N11, N12, N13, and N14 + I6 (manual) and I7 (manual)
	
	w(ppn->getNeuron(10), ppn->getNeuron(4), 2000.0);
	b(ppn->getNeuron(10),-5);
	//w(ppn->getNeuron(10) ,ppn->getNeuron(4), 0.1);
	//w(ppn->getNeuron(10),ppn->getNeuron(10),0.999);
	ppn->setTransferFunction(10,ppn->logisticFunction());

	w(ppn->getNeuron(11), ppn->getNeuron(5), 2000.0);
	b(ppn->getNeuron(11),-5);
	//w(ppn->getNeuron(11) ,ppn->getNeuron(5), 0.1);
	//w(ppn->getNeuron(11),ppn->getNeuron(11),0.999);
	ppn->setTransferFunction(11,ppn->logisticFunction());

	w(ppn->getNeuron(12), ppn->getNeuron(10), 8.0);
	w(ppn->getNeuron(12), ppn->getNeuron(11),-8.0);
	//w(ppn->getNeuron(12),ppn->getNeuron(12),0.99);
	ppn->setTransferFunction(12,ppn->tanhFunction());

	
	/*w(ppn->getNeuron(13), ppn->getNeuron(12), 1.0);
	//w(ppn->getNeuron(13),inputNeurons[6],1.0);
	ppn->setTransferFunction(13,ppn->identityFunction());

	w(ppn->getNeuron(14), ppn->getNeuron(12), 1.0);
	//w(ppn->getNeuron(14),inputNeurons[7],1.0);
	ppn->setTransferFunction(14,ppn->identityFunction());*/


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
	//rbf->setParameters(0.4);
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


	for (int i=0;i<12;i++)
	{
		DL[i] = new Delay_line();
		switch (i)
		{
			case 0:
			case 4:
			case 8:
				DL[i]->setParameter(delayNeuronNum[0]+1,delayNeuronNum[0]);
				break;
			case 1:
			case 5:
			case 9:
				DL[i]->setParameter(delayNeuronNum[1]+1,delayNeuronNum[1]);
				break;
			case 2:
			case 6:
			case 10:
				DL[i]->setParameter(delayNeuronNum[2]+1,delayNeuronNum[2]);
				break;
			case 3:
			case 7:
			case 11:
				DL[i]->setParameter(delayNeuronNum[3]+1,delayNeuronNum[3]);
				break;
		}
		if (i < 4)
		{
			w(DL[i]->getNeuron(0),pcpg->getNeuron(1),1.0);
		}else if(i < 8){
			w(DL[i]->getNeuron(0),pcpg->getNeuron(0),1.0);
		}else{
			w(DL[i]->getNeuron(0),rbf->getNeuron(2),1.0);
		}
		addSubnet(DL[i]);
	}

	/*******************************************************************************
	 *  MODULE 4 VRN
	 *******************************************************************************/

	double lambda = 0.000001;
	double mu = 3.87882069e+12;
	double beta = 2.3787;
	int n_vrn = 12;


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

	// lift (j0)
	for (int i=0;i<n_vrn;i++)
	{
		if (i < 4)
		{
			w(vrn[i]->getNeuron(0), DL[i]->getNeuron(1), 1.0);
			w(vrn[i] ->getNeuron(1), inputNeurons[8], 1.0);
		}else if(i < 8){
			w(vrn[i]->getNeuron(0), DL[i]->getNeuron(1), 0.4);
			w(vrn[i] ->getNeuron(1), ppn->getNeuron(8), 1.0);
		}else{
			w(vrn[i]->getNeuron(0), DL[i]->getNeuron(1), 0.25);
			w(vrn[i] ->getNeuron(1), ppn->getNeuron(12), 1.0);
		}
		addSubnet(vrn[i]);
	}
	


	// create connections from pcpg and RBF to VRN
	// lift
	//w(vrn[0]->getNeuron(0), pcpg->getNeuron(1), 1.0);
	//w(vrn[0] ->getNeuron(1), inputNeurons[8], 1.0);
	// left
	//w(vrn[1]->getNeuron(0), pcpg->getNeuron(0), 1.0);
	//w(vrn[1] ->getNeuron(1), ppn->getNeuron(8), 1.0);
	// right
	//w(vrn[2]->getNeuron(0), pcpg->getNeuron(0), 1.0);
	//w(vrn[2] ->getNeuron(1), ppn->getNeuron(9), 1.0);
	// front joint 2
	//w(vrn[3]->getNeuron(0), rbf->getNeuron(2), 1.0);
	//w(vrn[3] ->getNeuron(1), ppn->getNeuron(13), 1.0);
	// rear joint 2
	//w(vrn[4]->getNeuron(0), rbf->getNeuron(2), 1.0);
	//w(vrn[4] ->getNeuron(1), ppn->getNeuron(14), 1.0);

	//for(int v=0;v<n_vrn;v++)
	//{
		//addSubnet(vrn[v]);
	//}

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
	for(int i =0;i<4;i++)
	{
		w(pmn->getNeuron(i), inputNeurons[8], 0.4);  
		w(pmn->getNeuron(i), vrn[i]->getNeuron(6), 0.4);  
	} 
	
	// left and right (when walk forward)
	//w(pmn->getNeuron(2), vrn[1]->getNeuron(6), 0.4);
	//w(pmn->getNeuron(3), vrn[2]->getNeuron(6), 0.4); 
	// front and rear (when walk sideway;joint 1 and 2)
	//w(pmn->getNeuron(4), vrn[3]->getNeuron(6), 0.2);
	//b(pmn->getNeuron(4),0.0); 
	//w(pmn->getNeuron(5), vrn[4]->getNeuron(6), 0.2);
	//b(pmn->getNeuron(5),0.0); 



	addSubnet(pmn);

	/*******************************************************************************
	 *  MODULE 7 Delay Line
	 *******************************************************************************/

	/*for(int i=0;i<9;i++)
	{
		delayLineArray[i].setParameter(delaySize,0);
	}*/
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

double ModularNeuralControl::getMotorOutput(int jointNum, int legNum)
{
	/*
	legNum = {RH,RF,LH,LF}
	jointNum = {joint0,joint1_left,joint1_right,joint2_left,joint2_right}
	*/
	/*int lineNum =0;

	if(jointNum == 0){
		lineNum = 0;
	}else {
		lineNum = jointNum+2*(legNum);
	}*/
	


	int lineNum = 0;
	if (jointNum == 0)
	{
		return getPmnOutput(legNum);
	}else{
		

		//legNum = legNumS[legNum];
		lineNum = 3+ (jointNum) + 2*(legNum);
		float fw = vrn[4+legNum]->getOutput(6);
		float sw = vrn[8+legNum]->getOutput(6);
		float temp = 0.0;
		//printf("i");
		if (jointNum == 1)
		{
			//temp = 1.5707-sw;
			temp = atan(l2/(sqrt(2*l2*sin(temp)+l1))) - atan(l2*cos(temp)/(l1+l2*sin(temp)));

			return (fw+ temp);
		}else{
			temp =  -acos((l1-l1*cos(fw))/l2)+fw+1.57 + sw*swgain[legNum];
			return temp;
		}

	}

	return getDLOutput(lineNum);
}

double ModularNeuralControl::getDLOutput(int line)
{
	return DL[line]->getOutput(1);
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

	changeMI(ppn->getOutput(3));
	//pcpg->cpgSetMI(ppn->getOutput(3));

	updateActivities();
	updateWeights();
	updateOutputs();
	rbf->step();

	postProcessing();

	
}
