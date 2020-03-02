#include "rbf.h"

RBF::RBF():cpg(2)
{
	/*******************************************************************************
	*  MODULE 10 RBF POST-PROCESSING
	*******************************************************************************/
	 setNeuronNumber(4);
	 setup();
}

void RBF::setParameters(float value){
	rbf_s = value;
}

void RBF::setReference(const double array[])
{
	int indx;
	for(int i=0;i<n_period;i++)
	{
		indx = i+offset;
		reference[i] = array[indx%88];
	}	
}


void RBF::setup()
{

	if(true)
	{
		so2cpg = new SO2CPG();

		//destabilize cpg to oscillate
		so2cpg->setOutput(1, 0.885);
		so2cpg->setOutput(0, -0.59268);
		so2cpg->setActivity(0, 0.885);
		so2cpg->setActivity(1, -0.59268);

		//set cpg weights to override timos phi weight matrix
		so2cpg->setWeight(0, 0, 1.4); 
		so2cpg->setWeight(0, 1, 0.18 + 0.03);
		so2cpg->setWeight(1, 0, -0.18 - 0.03);
		so2cpg->setWeight(1, 1, 1.4);

		//set bias
		so2cpg->setBias(0, 0.0);
		so2cpg->setBias(1, 0.0);
	}

	//for updating the subnets (to do the time step)
	addSubnet(so2cpg);

	for(int i=0;i<100;i++)
	{
		so2cpg->step();
	}

	for(int i =0;i<n_period;i++)
	{

		for(int j=0;j<2;j++) // store a period of cpg signals
		{
			cpg_train[j][i] = so2cpg->getOutput(j);


		}
		so2cpg->step();
	}
	
}

void RBF::train()
{
	
	// calculate cx, cy (radious of each RBF)
	double step = n_period/n_rbf;

	for(int i=0;i<n_rbf;i++) // loop through each rbf
	{
		cx[i] = cpg_train[0][int(i*step)];
		cy[i] = cpg_train[1][int(i*step)];
	}

	// loop through K for n_rbf time step
	for(int k=0;k<n_rbf;k++)
	{
		for(int i=0;i<n_rbf;i++) // loop through time step
		{
			K[k][i] = rbfFunction(cpg_train[0][int(i*step)],cpg_train[1][int(i*step)],cx[k],cy[k]);
		}
	}

	for(int i=0;i<n_iteration;i++) // train the network n_train time
	{
		for(int j=0;j<n_rbf;j++) // loop through time step j -> updatte weight w
		{
			M[j] = 0.0;
			for(int k=0;k<n_rbf;k++) // loop through each kernel and update rbf output M
			{
				M[j] += W[k]*K[k][j];
			}
			W[j] = W[j] + 0.1*(reference[int(j*step)]-M[j]);
		}
		
	}
	

}

void RBF::step(){

			cpg.at(0) = getActivity(0);
			cpg.at(1) = getActivity(1);

			M[0] = 0.0;
			for(int k=0;k<n_rbf;k++) // loop through time step
			{
				K[k][0] = rbfFunction(cpg.at(0),cpg.at(1),cx[k],cy[k]);
				M[0] += W[k]*K[k][0];
			}
			
			setOutput(0,cpg.at(0));
			setOutput(1,cpg.at(1));
			setOutput(2,M[0]);
			setOutput(3,reference[count]);
			count += 1;
			if(count >= n_period)
			{
				count = 0;
			}
			
}




double RBF::rbfFunction(double inputx,double inputy,double rx,double ry){

	double dx = pow(inputx - rx,2);
	double dy = pow(inputy - ry,2);
	return exp(-1.0*(dx+dy)/rbf_s);
}

