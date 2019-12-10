#ifndef FACTORYBLACK_H
#define FACTORYBLACK_H
#include "factorychocolate.h"
#include "chocoblack.h"


//Implementation of the FactoryChocolate with a kind of chocolate productible
class FactoryBlack : public FactoryChocolate
{
public:
    FactoryBlack():FactoryChocolate(ChocoBlack()){}
};

#endif // FACTORYBLACK_H
