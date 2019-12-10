#ifndef CHOCOKINDER_H
#define CHOCOKINDER_H
#include "chocolate.h"

// SubClass of Chocolate with real values
class ChocoKinder : public Chocolate
{
public:
    ChocoKinder():Chocolate("Kinder",100,250,70,30){}
};

#endif // CHOCOKINDER_H
