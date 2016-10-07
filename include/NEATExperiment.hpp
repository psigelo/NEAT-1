#ifndef NEATEXPERIMENT_NEURON_HPP
#define NEATEXPERIMENT_NEURON_HPP


#include "Neuron.hpp"
#include "SynapticWeight.hpp"
#include "Life.hpp"
#include <memory>

namespace NEAT
{

class NEATExperiment
{
public:
	NEATExperiment(  std::shared_ptr<Neuron> neuron, std::shared_ptr<SynapticWeight> synapticWeight );
	Organism * getOrganismAt(uint place);
	uint getAmountOfOrganismsInCurrentGeneration();
	void epoch();
private:
	std::unique_ptr <Life> life;
};

} //End namespace NEAT

#endif