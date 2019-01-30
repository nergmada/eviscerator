//
// Created by adamgreen on 30/01/19.
//

#ifndef EVISCERATOR_PDDL3_H
#define EVISCERATOR_PDDL3_H

#include <string>

#include "../TestResults.h"
#include "../utilities/Executor.h"

class pddl3 {
private:
    Executor & executor;
    std::string & planRegex;
    void conductTest(std::string feature, std::string stylisedName, TestResults::test t, TestResults & results, int planSize);
    std::string buildDomainName(const std::string & feature) {
        return "/pddl/pddl3/domain-" + feature + ".pddl";
    }

    std::string buildProblemName(const std::string & feature) {
        return "/pddl/pddl3/problem-" + feature + ".pddl";
    }
public:
    pddl3(Executor & e, std::string & pr) : executor(e), planRegex(pr) {};

    void testConstraints(TestResults & results);
    void testPreferences(TestResults & results);
};


#endif //EVISCERATOR_PDDL3_H
