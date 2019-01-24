//
// Created by adamgreen on 24/01/19.
//

#include "Ellipsis.h"

#include <iostream>

Ellipsis::Ellipsis(double changeTime, std::string m) : change(changeTime), message(std::move(m)) {
    std::cout << "\n" << message << "   " << std::flush;
}

void Ellipsis::updateEllipsis(double newTime) {
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
    std::cout << std::flush;
}

void Ellipsis::endEllipsis() {
    std::cout << std::endl;
}