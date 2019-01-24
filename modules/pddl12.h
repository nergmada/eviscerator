//
// Created by adamgreen on 21/01/19.
//

#ifndef EVISCERATOR_PDDL12_H
#define EVISCERATOR_PDDL12_H


#include <string>

#include "../TestResults.h"


class pddl12 {
public:
    static bool testStrips(std::string & planner, std::string & command, std::string & planRegex, TestResults & results);
    static void testTyping(std::string & planner, std::string & command, std::string & planRegex, TestResults & results);
};


#endif //EVISCERATOR_PDDL12_H
