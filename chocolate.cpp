#include "chocolate.h"


Ressources Chocolate::requiresProd(){
    return Ressources(milkPercentage*weight/100,chocoPercentage*weight/100);
}
