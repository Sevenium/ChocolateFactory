#ifndef RESSOURCES_H
#define RESSOURCES_H

using namespace std;

//To manage Milk and Chocolat easily.
class Ressources
{
private:


public:
    float milk;
    float choco;

    Ressources(float milk,float choco):milk(milk),choco(choco){}
    //Probably operator =
    Ressources& operator+=(const Ressources& r2){
        milk+=r2.milk;
        choco+=r2.choco;
        return *this;
    }
    friend Ressources operator+(Ressources r1,const Ressources& r2){
        r1.milk+=r2.milk;
        r1.choco+=r2.choco;
        return r1;
    }
    Ressources& operator-=(const Ressources& r2){
        milk-=r2.milk;
        choco-=r2.choco;
        return *this;
    }
    friend Ressources operator-(Ressources r1,const Ressources& r2){
        r1.milk-=r2.milk;
        r1.choco-=r2.choco;
        return r1;
    }
    Ressources& operator*=(const int& r2){
        milk*=r2;
        choco*=r2;
        return *this;
    }
    friend Ressources operator*(Ressources r1,const int& r2){
        r1.milk*=r2;
        r1.choco*=r2;
        return r1;
    }
    friend inline bool operator<(const Ressources& r1, const Ressources& r2){ return r1.milk<r2.milk && r1.choco<r2.choco; }
    friend inline bool operator>(const Ressources& r1, const Ressources& r2){ return r1.milk>r2.milk && r1.choco>r2.choco; }
    friend inline bool operator<=(const Ressources& r1, const Ressources& r2){ return r1.milk<=r2.milk && r1.choco<=r2.choco; }
    friend inline bool operator>=(const Ressources& r1, const Ressources& r2){ return r1.milk>=r2.milk && r1.choco>=r2.choco; }
};

#endif // RESSOURCES_H
