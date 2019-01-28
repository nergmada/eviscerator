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
    std::string buildDomainName(const std::string & feature) {
        return "/pddl/pddl21/domain-" + feature + ".pddl";
    }

    std::string buildProblemName(const std::string & feature) {
        return "/pddl/pddl21/problem-" + feature + ".pddl";
    }
public:
    pddl21(Executor & e, std::string & pr) : executor(e), planRegex(pr) {};
    void testNumericFluents(TestResults & results);
    void testDurativeActions(TestResults & results);
    void testDurativeInequalities(TestResults & results);
    void testDurativeInequalitiesWithoutRequirement(TestResults & results);
    void testContinuousEffects(TestResults & results);
    void testNegativePreconditions(TestResults & results);
};


#endif //EVISCERATOR_PDDL21_H
