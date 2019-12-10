#ifndef SYSTEM_H
#define SYSTEM_H
#include "chocolate.h"
#include "factoryblack.h"
#include "factorykinder.h"
#include "factorymars.h"
#include <iterator>
#include <map>
#include <QObject>
#include <iostream>
#include <QQmlContext>

//Facade for the user, content all the factories
class MySystem : public QObject
{
    Q_OBJECT
public:
    MySystem(float milk,float choco,QObject *parent = 0, QObject* rootObject=0);
    FactoryChocolate getFactoryMars();
    FactoryChocolate getFactoryBlack();
    FactoryChocolate getFactoryKinder();
    float getMilk(){return r.milk;}
    float getChoco(){return r.choco;}

// Method associated to the buttons
public slots:

    void productionBlack();
    void productionMars();
    void productionKinder();
    void chocoSupply();
    void milkSupply();

private:
    Ressources r; // Ressources milk and chocolate
    QObject* rootObject; // access to the view
    FactoryChocolate myFactories[3]{FactoryBlack(), FactoryKinder(),FactoryMars() }; // storage of the factories
    void useRessources(float m, float c); // Don't want to let access to it.

};

#endif // SYSTEM_H
