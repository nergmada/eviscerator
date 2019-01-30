//
// Created by adamgreen on 24/01/19.
//

#ifndef EVISCERATOR_PDDL21_H
#define EVISCERATOR_PDDL21_H

#include "TestSuite.h"

class pddl21 : TestSuite {
private:
    std::string buildDomainName(const std::string & feature) override {
        return "/pddl/pddl21/domain-" + feature + ".pddl";
    }

    std::string buildProblemName(const std::string & feature) override {
        return "/pddl/pddl21/problem-" + feature + ".pddl";
    }
    void testNumericFluents(TestResults & results);
    void testDurativeActions(TestResults & results);
    void testDurativeInequalities(TestResults & results);
    void testDurativeInequalitiesWithoutRequirement(TestResults & results);
    void testContinuousEffects(TestResults & results);
    void testNegativePreconditions(TestResults & results);
public:
    pddl21(Executor & e, std::string & pr) : TestSuite(e, pr) {};

    bool runCritical(TestResults &results) override;

    void runNonCritical(TestResults &results) override;
};


#endif //EVISCERATOR_PDDL21_H
