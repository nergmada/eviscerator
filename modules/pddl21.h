//
// Created by adamgreen on 24/01/19.
//

#ifndef EVISCERATOR_PDDL21_H
#define EVISCERATOR_PDDL21_H

#include <string>

#include "../TestResults.h"
#include "../utilities/Executor.h"

class pddl21 {
private:
    Executor & executor;
    std::string & planRegex;
    void conductTest(std::string feature, std::string stylisedName, TestResults::test t, TestResults & results, int planSize);
public:
    pddl21(Executor & e, std::string & pr) : executor(e), planRegex(pr) {};
    
};


#endif //EVISCERATOR_PDDL21_H
