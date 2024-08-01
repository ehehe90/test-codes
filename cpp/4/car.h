#ifndef _CAR_H
#define _CAR_H

class CCar{
    public:
        CCar();
        ~CCar();
        void move();
        void supply(int fuel);
    private:
        int m_fuel;
        int m_migration;
};

#endif