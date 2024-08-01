#ifndef _RAT_H
#define _RAT_H

class CRat {
    public:
        CRat();
        ~CRat();
        static void showNum();
        void squeak();
    private:
        int m_id;
        static int m_count;
};

#endif