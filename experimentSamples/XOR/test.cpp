// Se prueba el benchmark XOR
#include <NEATSpikes> // NEAT Library needed see README if you have not installed.
#include <memory> // make_unique
#include <iostream> // cout
#include <cstdlib>     // srand, rand 
#include <ctime>       // time 
#include <cmath>

using namespace NEAT;
using namespace std;

float maxFitness = 0.f;
float fitnessAcumm = 0.f;
uint contador = 0;
float maxGeneration = 0.f;

void experiment( Organism& orgm )
{
	//XOR {0,0}->{0}
	orgm.ann->setInputs({0.f,0.f}); 
	orgm.ann->spread();
	vector<float> out1 = orgm.ann->getOutputs();
	float error = fabs(fabs(out1.at(0))- 0.f);
	//XOR {0,1} -> {1}
	orgm.ann->setInputs({0.f,1.f}); 
	orgm.ann->spread();
	vector<float> out2 = orgm.ann->getOutputs();
	error += fabs(fabs(out2.at(0)) - 1.f);
	//XOR {1,0} -> {1}
	orgm.ann->setInputs({1.f,0.f}); 
	orgm.ann->spread();
	vector<float> out3 = orgm.ann->getOutputs();
	error += fabs(fabs(out3.at(0)) - 1.f);
	//XOR {1,1} -> {0}
	orgm.ann->setInputs({1.f,1.f}); 
	orgm.ann->spread();
	vector<float> out4 = orgm.ann->getOutputs();
	error += fabs(fabs(out4.at(0)) - 0.f);

	float error_MAX = 4.0;
	float fitness = (error_MAX - error)*(error_MAX - error);
	if(fitness > maxFitness){
		maxFitness = fitness; 
		cout << "MF: " << maxFitness << "\t{" << out1.at(0) <<", " << out2.at(0) <<", " << out3.at(0) << ", " << out4.at(0) << endl;
	} 

	if(fitness > maxGeneration){
		maxGeneration = fitness; 
	}

	orgm.setFitness(fitness);
	fitnessAcumm += fitness;
	contador++;
}

void sendAllOrganismToExperiment( Life& life ); // function prototype

int main()
{
	srand(time(0));//  Para que cada vez que se use el método random tenga una piscina de números randoms 
	auto BNseed = make_shared < BasicNeuron > ( );
	auto BSWseed = make_shared < BasicSynapticWeight > ( );
	auto neatExp = make_unique <NEATExperiment>(BNseed, BSWseed);
	uint generations = 100;
	for (uint i = 0; i < generations ; ++i)
	{
		fitnessAcumm = 0.f;
		contador = 0;
		auto organismsAmount = neatExp->getAmountOfOrganismsInCurrentGeneration();
		for (uint j = 0; j < organismsAmount; ++j)
		{
			
			experiment(*neatExp->getOrganismAt(j));
		}
		neatExp->epoch();
		cout << "MG: " << maxGeneration << endl;
		maxGeneration = 0.f;
	}
}