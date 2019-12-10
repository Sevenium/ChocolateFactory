#ifndef FACTORYKINDER_H
#define FACTORYKINDER_H
#include "factorychocolate.h"
#include "chocokinder.h"

//Implementation of the FactoryChocolate with a kind of chocolate productible
class FactoryKinder : public FactoryChocolate
{
public:
    FactoryKinder():FactoryChocolate(ChocoKinder()){}
};

#endif // FACTORYKINDER_H
