//
// Created by adamgreen on 18/01/19.
//

#ifndef EVISCERATOR_ELLIPSIS_H
#define EVISCERATOR_ELLIPSIS_H


#include <iostream>

class Ellipsis {
private:
    bool debounce = false;
    bool ellipsisEnded = false;
    double change;
    double previousTime = 0;
    int state = 0;
public:
    Ellipsis(double changeTime) {
        change = changeTime;
        std::cout << "   ";
        std::cout.flush();
    }
    void updateEllipsis(double newTime) {
        if (ellipsisEnded)
            return;
        if (newTime - previousTime < change)
            return;
        ++state;
        previousTime = newTime;
        std::cout << "\b\b\b   \b\b\b";
        switch (state % 3) {
            case 0:
                std::cout << ".  ";
                std::cout.flush();
            case 1:
                std::cout << ".. ";
                std::cout.flush();
            case 2:
                std::cout << "...";
                std::cout.flush();
            default:
                return;
        }
    }
    void endEllipsis() {
        std::cout << "\b\b\b..." << std::endl;
    }
};


#endif //EVISCERATOR_ELLIPSIS_H
