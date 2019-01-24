//
// Created by adamgreen on 21/01/19.
//

#ifndef EVISCERATOR_PDDL12_H
#define EVISCERATOR_PDDL12_H


#include <string>

#include "../TestResults.h"
#include "../utilities/Executor.h"


class pddl12 {
public:
    static bool testStrips(Executor & executor, std::string & planRegex, TestResults & results);
    static void testTyping(Executor & executor, std::string & planRegex, TestResults & results);
    static void testDisjunctivePreconditions(Executor & executor, std::string & planRegex, TestResults & results);
};


#endif //EVISCERATOR_PDDL12_H
