#include "pcpg.h"

PCPG::PCPG()//:set(2),countup(2),countdown(2)
{
	/*******************************************************************************
	*  MODULE 2 CPG POST-PROCESSING
	*******************************************************************************/



				/*pcpg_step.resize(2);
				setold.resize(2);
				countupold.resize(2);
				countdownold.resize(2);
				diffset.resize(2);
				deltaxdown.resize(2);
				deltaxup.resize(2);
				xup.resize(2);
				xdown.resize(2);

				yup.resize(2);
				ydown.resize(2);
				pcpg_output.resize(2);*/

	 setNeuronNumber(2);

}

void PCPG::cpgStep()
{
		double c0 = cpg[0];
		double c1 = cpg[1];
		cpg[0] = w[0]*c0 + (w[2]+MI)*c1;
        cpg[1] = w[1]*c1 - (w[3]+MI)*c0;

        cpg[0] = tanh(cpg[0]);
        cpg[1] = tanh(cpg[1]);
}



void PCPG::cpgSetMI(double mi)
{
	MI = mi;
}
void PCPG::cpgSetActivity(double c1,double c2)
{
	cpg[0] = c1;
	cpg[1] = c2;
}


void PCPG::setParameters(float value1,float value2){
	mu_0 = value1;
	mu_1 = value2;
}

void PCPG::cpgSim(double c1,double c2, double mi)
{
		cpgSetMI(mi);
        cpgSetActivity(c1,c2);

        
        double pastP = 0.0;
        double p = 0.0;



       	//pcpg_maxx[0] = 1.0;
        //pcpg_maxx[1] = 0.0;
        for (int i=0;i<3;i++)
        {
        	pastP = 0.0;
        	while(1)
        	{
        		cpgStep();
        		p = 0.0;
        		if ((cpg[1] >= 0.0) && (cpg[0] <= mu_0))
        		{
        			p = 1.0;
        		}else{
        			p = -1.0;
        		}

        		if (p*pastP >= 0.0)
        		{
        			if (i >= 1)
        			{
        				if(p == 1.0)
        				{
        					//pcpg_maxx[0] += 1;
        				}else{
        					//pcpg_maxx[1] += 1;
        				}

        			}
        		}else{
        			break;
        		}
        		pastP = p;
        	}
        }
}

void PCPG::updateOutputs(){
			//***CPG post processing*****


		cpg_step[0] = getActivity(0);
		cpg_step[1] = getActivity(1);

		/*cpgSetMI(MI);
        cpgSetActivity(cpg_step[0],cpg_step[1]);
        for(int i =0;i<20;i++)
        {
        	cpgStep();
        }*/
        

		//cpgSim(cpg_step[0],cpg_step[1],MI);

		if ((cpg_step[1] >= 0.0)&&(cpg_step[0]<=mu_0))
		{
			sett = 1.0;
		}else{
			sett = -1.0;
		}
		
		for (int i=0;i<2;i++)
		{
			if (sett >= 0.0)
			{
				countup[i] = countup[i] + 1.0;
				if (setold < 0.0)
				{
					pcpg_max[1] = countdown[i];
				}
				countdown[i] = 0.0;

				if (pcpg_max[0] == 0.0)
				{
					yup[i] = 0.0;
				}else{
					yup[i] = ((2.0 / pcpg_max[0]) * countup[i]) - 1.0;
				}
			}else{
				countdown[i] = countdown[i] + 1.0;
				if (setold >= 0.0)
				{
					pcpg_max[0] = countup[i];
				}
				countup[i] = 0.0;

				if (pcpg_max[1] == 0.0){
					ydown[i] = 0.0;
				}else{
					if (i == 0)
					{
						ydown[0] = ((-2.0 / (pcpg_max[1])) * countdown[0]) + 1.0;
					}else{
						ydown[1] = ((mu_1 / (pcpg_max[1])) * countdown[1]) + 1.0;
					}
				}
			}
			
		}
		setold = sett;

		for (int i=0;i<2;i++){

			if (sett >= 0.0){
                pcpg_out[i] = yup[i];
			}

            if (sett < 0.0) {
                pcpg_out[i] = ydown[i];
            }

            if (pcpg_out[i] > 1.0){
                pcpg_out[i] = 1.0;
            }

            if (pcpg_out[i] < -1.0){
                pcpg_out[i] = -1.0;
            }

			setOutput(i,pcpg_out[i]);
		}
		//setOutput(1,pcpg_max[1]*0.01);
		//printf("%f\n\r",float(pcpg_out[0]));








			/*cpg_step.at(0) = getActivity(0);
			pcpg_step.at(1) = getActivity(1);

			setold.at(0) = set.at(0);
			setold.at(1) = set.at(1);


			countupold.at(0) = countup.at(0);
			countupold.at(1) = countup.at(1);


			countdownold.at(0) = countdown.at(0);
			countdownold.at(1) = countdown.at(1);

			//1) Linear threshold transfer function neuron 1 , or called step function neuron//
			/********************************************************/

			/*if ((pcpg_step.at(1)>=mu_0) && (pcpg_step.at(0)<=mu_0)) ////////////////////Intuitively select
			{
				set.at(0) = 1.0;
			}else
			{
				set.at(0) = -1.0;
			}


			if ( (pcpg_step.at(1)>=mu_0) && (pcpg_step.at(0)<=mu_0)) ////////////////////Intuitively select
			{
				set.at(1) = 1.0;
			}else
			{
				set.at(1) = -1.0;
			}


			diffset.at(0) = set.at(0)-setold.at(0); // double
			diffset.at(1) = set.at(1)-setold.at(1); // double


			//2) Count how many step of Swing
			/********************************************************/

			/*if (set.at(0) == 1.0)
			{
			countup.at(0) = countup.at(0)+1.0; //Delta x0 up
			countdown.at(0) = 0.0;
			}

			// Count how many step of Stance
			else if (set.at(0) == -1.0)
			{
			countdown.at(0) = countdown.at(0)+1.0; //Delta x0 down
			countup.at(0) = 0.0;
			}


			if (set.at(1) == 1.0)
			{
			countup.at(1) = countup.at(1)+1.0; //Delta x0 up
			countdown.at(1) = 0.0;
			}

			// Count how many step of Stance
			else if (set.at(1) == -1.0)
			{
			countdown.at(1) = countdown.at(1)+1.0; //Delta x0 down
			countup.at(1) = 0.0;
			}

			//3) Memorized the total steps of swing and stance
			/********************************************************/



			/*f (countup.at(0) == 0.0 && diffset.at(0) == -2.0 && set.at(0) == -1.0)
			deltaxup.at(0) = countupold.at(0);
	//
			if (countdown.at(0) == 0.0 && diffset.at(0) == 2.0 && set.at(0) == 1.0)
			deltaxdown.at(0) = countdownold.at(0);
	//
	//
			if (countup.at(1) == 0.0 && diffset.at(1) == -2.0 && set.at(1) == -1.0)
			deltaxup.at(1) = countupold.at(1);
	//
			if (countdown.at(1) == 0.0 && diffset.at(1) == 2.0 && set.at(1) == 1.0)
			deltaxdown.at(1) = countdownold.at(1);

			//4) Comput y up and down !!!!
			/********************************************************/

			/*xup.at(0) =  countup.at(0);
			xdown.at(0) = countdown.at(0);

			xup.at(1) =  countup.at(1);
			xdown.at(1) = countdown.at(1);



			////////////Scaling Slope Up calculation////////
			yup.at(0) = ((2./deltaxup.at(0))*xup.at(0))-1;
			////////////Scaling  Slope Down calculation//////
			ydown.at(0) = ((-2./deltaxdown.at(0))*xdown.at(0))+1;


			////////////Scaling Slope Up calculation////////
			yup.at(1) = ((2./deltaxup.at(1))*xup.at(1))-1;
			////////////Scaling  Slope Down calculation//////
			ydown.at(1) = ((1.0*mu_1/deltaxdown.at(1))*xdown.at(1))+1;


			//5) Combine y up and down !!!!
			/********************************************************/

			/*if (set.at(0) >= 0.0)
			pcpg_output.at(0) = yup.at(0);

			if (set.at(0) < 0.0)
			pcpg_output.at(0) = ydown.at(0);


			if (set.at(1) >= 0.0)
			pcpg_output.at(1) = yup.at(1);

			if (set.at(1) < 0.0)
			pcpg_output.at(1) = ydown.at(1);


			//********Limit upper and lower boundary

			if(pcpg_output.at(0)>1.0)
			pcpg_output.at(0) = 1.0;
			else if(pcpg_output.at(0)<-1.0)
			pcpg_output.at(0) = -1.0;

			if(pcpg_output.at(1)>1.0)
			pcpg_output.at(1) = 1.0;
			else if(pcpg_output.at(1)<-1.0)
			pcpg_output.at(1) = -1.0;

			//***CPG post processing*end*

			setOutput(0,pcpg_output.at(0));
			setOutput(1,pcpg_output.at(1));

			//setOutput(0,0.7);//pcpg_output.at(0));
			//setOutput(1,0.7);//pcpg_output.at(1));*/


}


