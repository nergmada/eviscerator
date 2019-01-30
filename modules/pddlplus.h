//
// Created by adamgreen on 30/01/19.
//

#ifndef EVISCERATOR_PDDLPLUS_H
#define EVISCERATOR_PDDLPLUS_H

#include <string>

#include "../TestResults.h"
#include "../utilities/Executor.h"

class pddlplus {
private:
    Executor & executor;
    std::string & planRegex;
    void conductTest(std::string feature, std::string stylisedName, TestResults::test t, TestResults & results, int planSize);
    std::string buildDomainName(const std::string & feature) {
        return "/pddl/pddlplus/domain-" + feature + ".pddl";
    }

    std::string buildProblemName(const std::string & feature) {
        return "/pddl/pddlplus/problem-" + feature + ".pddl";
    }
public:
    pddlplus(Executor & e, std::string & pr) : executor(e), planRegex(pr) {};

    void testTime(TestResults & results);
};


#endif //EVISCERATOR_PDDLPLUS_H
