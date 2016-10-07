#include "NEATExperiment.hpp"

using namespace std;
using namespace NEAT;

NEATExperiment::NEATExperiment( std::shared_ptr<Neuron> neuron, std::shared_ptr<SynapticWeight> synapticWeight)
{
	auto ann1  = make_unique < ANN > ( move(neuron), move(synapticWeight) );
	life = make_unique <Life>( move(ann1) );
}

uint NEATExperiment::getAmountOfOrganismsInCurrentGeneration( )
{
	uint result = 0;
	for ( auto& spicie : life->spicies)
	{
		for( auto& race: spicie->youngRaces)
		{
			result += race->newOrganisms.size();
		}
		for( auto& race: spicie->oldRaces)
		{
			result += race->newOrganisms.size();
		}
	}
	return result;
}

Organism * NEATExperiment::getOrganismAt(uint place)
{
	uint counter = 0;
	for ( auto& spicie : life->spicies)
	{
		for( auto& race: spicie->youngRaces)
		{
			for (uint i = 0; i < race->newOrganisms.size(); ++i)
			{
				if(counter == place)
				{
					return race->newOrganisms.at(i).get();
				}	
				counter++;
			}
		}
		for( auto& race: spicie->oldRaces)
		{
			for (uint i = 0; i < race->newOrganisms.size(); ++i)
			{
				if(counter == place)
				{
					return race->newOrganisms.at(i).get();
				}	
				counter++;
			}
		}
	}
	return nullptr; // En caso que place > numero de organismos
}


void NEATExperiment::epoch()
{
	life->epoch();
}