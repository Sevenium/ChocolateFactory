#ifndef CHOCOMARS_H
#define CHOCOMARS_H
#include "chocolate.h"

// SubClass of Chocolate with real values
class ChocoMars : public Chocolate
{

public:
    ChocoMars():Chocolate("Mars",100,200,50,50){}
};

#endif // CHOCOMARS_H
