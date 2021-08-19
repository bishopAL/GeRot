#ifndef RBF_H_
#define RBF_H_

#include "utils/ann-framework/ann.h"
#include <cmath>
#include "utils/ann-library/so2cpg.h"
#include "utils/ann-framework/transferfunction.h"
#include "utils/ann-framework/neuron.h"

class RBF : public ANN {
public:

	
    RBF(); //initialize RBF network

    void setParameters(float value); // set rbf_s
    void setReference(const double array[]);  // set reference

    void train(); // train the network
    void step(); // update rbf network

private:

	SO2CPG * so2cpg;

	std::vector<double> cpg;

	static const int n_rbf = 44;
	int n_iteration = 500;
	static const int n_period = 88;//631;
	int count = 0;
	int offset = 5; // 80


	double rbf_s = 1.0;

	double K[n_rbf][n_rbf] = {{0}}; 
	double M[n_rbf] = {0};
	double W[n_rbf] = {0};
	double cx[n_rbf] = {0};
	double cy[n_rbf] = {0};
	double cpg_train[2][n_period] = {{0}};
	double reference[n_period] = {0};

	

	void setup();
	double rbfFunction(double inputx,double inputy,double rx,double ry);

};


#endif /* PCPG_H_ */
