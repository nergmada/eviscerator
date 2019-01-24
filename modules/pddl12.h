//
// Created by adamgreen on 21/01/19.
//

#ifndef EVISCERATOR_PDDL12_H
#define EVISCERATOR_PDDL12_H


#include <string>

#include "../TestResults.h"


class pddl12 {
public:
    static void testStrips(std::string & planner, std::string & command, TestResults & results);
};


#endif //EVISCERATOR_PDDL12_H
