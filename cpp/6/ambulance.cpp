#include "ambulance.h"
#include <iostream>

using namespace std;

CAmbulance::CAmbulance() : m_number(19)
{
    cout << "CAmbulanceオブジェクト生成" << endl;
}

CAmbulance::~CAmbulance()
{
    cout << "CAmbulaceオブジェクト破棄" << endl;
}

void CAmbulance::savePeople()
{
    cout << "救命救急活動" << endl << "呼び出しは" << m_number << "番" << endl;
}