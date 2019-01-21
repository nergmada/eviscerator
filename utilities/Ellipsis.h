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
    std::string message;
public:
    explicit Ellipsis(double changeTime, std::string m = "Running") : change(changeTime), message(std::move(m)) {
        std::cout << std::endl << std::unitbuf << "   ";// << std::flush;
    }
    void updateEllipsis(double newTime) {
        if (ellipsisEnded)
            return;
        if (newTime - previousTime < change)
            return;
        state = (state + 1) % 3;
        previousTime = newTime;
        std::cout << "\r" << message;
        switch (state) {
            case 0:
                std::cout << ".  ";
                break;
            case 1:
                std::cout << ".. ";
                break;
            case 2:
                std::cout << "...";
                break;
            default:
                return;
        }
    }
    void endEllipsis() {
        std::cout << std::endl << std::nounitbuf;
    }
};


#endif //EVISCERATOR_ELLIPSIS_H
