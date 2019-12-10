#ifndef CHOCOLATE_H
#define CHOCOLATE_H
#include <string>
#include "Ressources.h"

// Class chocolate that will not be implemented but containing every important method
class Chocolate
{

protected:
     string name;
     float weight;
     int calories;
     int milkPercentage;
     int chocoPercentage;

public:
    Chocolate(string name,float weight,int calories,int milkPercentage,int chocoPercentage):name(name),weight(weight),calories(calories),milkPercentage(milkPercentage),chocoPercentage(chocoPercentage){}
    Ressources requiresProd();
    Chocolate(const Chocolate& c2):name(c2.name),weight(c2.weight),calories(c2.calories),milkPercentage(c2.milkPercentage),chocoPercentage(c2.chocoPercentage){}
    string getName(){return this->name;}
    float getWeight(){return this->weight;}
    int getCalories(){return this->calories;}
    int getMilkPercentage(){return this->milkPercentage;}
    int getChocoPercentage(){return this->chocoPercentage;}
};

#endif // CHOCOLATE_H
