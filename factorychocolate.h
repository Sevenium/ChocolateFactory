#ifndef FACTORYCHOCOLATE_H
#define FACTORYCHOCOLATE_H

#include "chocolate.h"

// For the design pattern factory, creation of the abstract class
class FactoryChocolate
{

protected:
    Chocolate chocoProduced;
    void createChocolate();


public:
    FactoryChocolate(Chocolate chocoProduced): chocoProduced(chocoProduced){}
    Chocolate getChocoProduced(){return this->chocoProduced; }
    FactoryChocolate(const FactoryChocolate& f2):chocoProduced(f2.chocoProduced){}

};

#endif // FACTORYCHOCOLATE_H
