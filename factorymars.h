#ifndef FACTORYMARS_H
#define FACTORYMARS_H
#include "factorychocolate.h"
#include "chocomars.h"


//Implementation of the FactoryChocolate with a kind of chocolate productible
class FactoryMars : public FactoryChocolate
{
public:
    FactoryMars():FactoryChocolate(ChocoMars()){}
};

#endif // FACTORYMARS_H
