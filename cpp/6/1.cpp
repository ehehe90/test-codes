#include "car.h"
#include "ambulance.h"

int main()
{
    CCar c;
    c.supply(10);
    c.move();
    c.move();
    CAmbulance a;
    a.supply(10);
    a.move();
    a.savePeople();
    return 0;
}