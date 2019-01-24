//
// Created by adamgreen on 18/01/19.
//

#ifndef EVISCERATOR_ELLIPSIS_H
#define EVISCERATOR_ELLIPSIS_H

#include <string>

class Ellipsis {
private:
    bool debounce = false;
    bool ellipsisEnded = false;
    double change;
    double previousTime = 0;
    int state = 0;
    std::string message;
public:
    explicit Ellipsis(double changeTime, std::string m = "Running");
    void updateEllipsis(double newTime);
    void endEllipsis();
};


#endif //EVISCERATOR_ELLIPSIS_H
