#include "mySystem.h"
#include <QDebug>

MySystem::MySystem(float milk,float choco,QObject *parent,QObject *rootObject) : r(milk,choco),QObject(parent),rootObject(rootObject){
    QVariant returnValue;

    // Setting of the milk value
    QMetaObject::invokeMethod(rootObject, "setTextChoco",
    Q_RETURN_ARG(QVariant, returnValue),
    Q_ARG(QVariant, this->getChoco()));

    // Setting of the chocolate value
    QMetaObject::invokeMethod(rootObject, "setTextMilk",
    Q_RETURN_ARG(QVariant, returnValue),
    Q_ARG(QVariant, this->getMilk()));

    // For every factory, get every features to display them on the view
    string types[]={"Black","Kinder","Mars"};
    for(size_t i = 0;i<3;i++){
        string a = "setWeight"+types[i];
        QMetaObject::invokeMethod(rootObject, a.c_str(),
        Q_RETURN_ARG(QVariant, returnValue),
        Q_ARG(QVariant, this->myFactories[i].getChocoProduced().getWeight()));

        a = "setCalories"+types[i];
        QMetaObject::invokeMethod(rootObject, a.c_str(),
        Q_RETURN_ARG(QVariant, returnValue),
        Q_ARG(QVariant, this->myFactories[i].getChocoProduced().getCalories()));

        a = "setPM"+types[i];
        QMetaObject::invokeMethod(rootObject, a.c_str(),
        Q_RETURN_ARG(QVariant, returnValue),
        Q_ARG(QVariant, this->myFactories[i].getChocoProduced().getMilkPercentage()));

        a = "setPC"+types[i];
        QMetaObject::invokeMethod(rootObject, a.c_str(),
        Q_RETURN_ARG(QVariant, returnValue),
        Q_ARG(QVariant, this->myFactories[i].getChocoProduced().getChocoPercentage()));

        Ressources rr = this->myFactories[i].getChocoProduced().requiresProd();
        a = "setMilk"+types[i];
        QMetaObject::invokeMethod(rootObject, a.c_str(),
        Q_RETURN_ARG(QVariant, returnValue),
        Q_ARG(QVariant, rr.milk));

        a = "setChoco"+types[i];
        QMetaObject::invokeMethod(rootObject, a.c_str(),
        Q_RETURN_ARG(QVariant, returnValue),
        Q_ARG(QVariant, rr.choco));
    }


};

FactoryChocolate MySystem::getFactoryBlack(){
   return myFactories[0];
}


 FactoryChocolate MySystem::getFactoryKinder(){
    return myFactories[1];
}

 FactoryChocolate MySystem::getFactoryMars(){
    return myFactories[2];
}

void MySystem::productionBlack(){
    Ressources rr = this->getFactoryBlack().getChocoProduced().requiresProd();
    useRessources(rr.milk,rr.choco);
}
void MySystem::productionMars(){
    Ressources rr = this->getFactoryMars().getChocoProduced().requiresProd();
    useRessources(rr.milk,rr.choco);
}
void MySystem::productionKinder(){
    Ressources rr = this->getFactoryKinder().getChocoProduced().requiresProd();
    useRessources(rr.milk,rr.choco);
}
void MySystem::milkSupply(){
    useRessources(-100,0);
}
void MySystem::chocoSupply(){
    useRessources(0,-100);
}


void MySystem::useRessources(float m, float c){
    QVariant returnValue;

    // In case ressources are insufficient
    if (r.choco-c<0 && r.milk-m<0){
        QMetaObject::invokeMethod(rootObject, "openPopup",
        Q_RETURN_ARG(QVariant, returnValue),
        Q_ARG(QVariant, "Chocolate and Milk are insufficient"));
    }else if(r.choco-c<0){
        QMetaObject::invokeMethod(rootObject, "openPopup",
        Q_RETURN_ARG(QVariant, returnValue),
        Q_ARG(QVariant, "Chocolate is insufficient"));
    }else if(r.milk-m<0){
        QMetaObject::invokeMethod(rootObject, "openPopup",
        Q_RETURN_ARG(QVariant, returnValue),
        Q_ARG(QVariant, "Milk is insufficient"));
    }else{

        // Else change the value of the model and the view
        r.choco-=c;
        QMetaObject::invokeMethod(rootObject, "setTextChoco",
        Q_RETURN_ARG(QVariant, returnValue),
        Q_ARG(QVariant, this->getChoco()));

        r.milk-=m;
        QMetaObject::invokeMethod(rootObject, "setTextMilk",
        Q_RETURN_ARG(QVariant, returnValue),
        Q_ARG(QVariant, this->getMilk()));
    }

}

