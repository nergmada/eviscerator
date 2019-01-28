//
// Created by adamgreen on 28/01/19.
//

#ifndef EVISCERATOR_PDDL22_H
#define EVISCERATOR_PDDL22_H

#include <string>

#include "../TestResults.h"
#include "../utilities/Executor.h"

class pddl22 {
private:
    Executor & executor;
    std::string & planRegex;
    void conductTest(std::string feature, std::string stylisedName, TestResults::test t, TestResults & results, int planSize);
    std::string buildDomainName(const std::string & feature) {
        return "/pddl/pddl22/domain-" + feature + ".pddl";
    }

    std::string buildProblemName(const std::string & feature) {
        return "/pddl/pddl22/problem-" + feature + ".pddl";
    }
public:
    pddl22(Executor & e, std::string & pr) : executor(e), planRegex(pr) {};

    void testDerivedPredicates(TestResults & results);
    void testTimedInitialLiterals(TestResults & results);
};


#endif //EVISCERATOR_PDDL22_H
