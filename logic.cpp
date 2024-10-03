#include "logic.h"

Logic::Logic() {}

    double Logic::plus(double a, double b)
    {
        return a + b;
    }

    double Logic::minus(double a, double b)
    {
        return a - b;
    }

    double Logic::stars(double a, double b)
    {
        return a * b;
    }

    double Logic::divide(double a, double b)
    {
        if(b == 0)
        {
            return 0;
        }
        else
            return a / b;
    }



