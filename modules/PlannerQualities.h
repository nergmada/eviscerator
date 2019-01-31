//
// Created by adamgreen on 31/01/19.
//

#ifndef EVISCERATOR_PLANNERQUALITIES_H
#define EVISCERATOR_PLANNERQUALITIES_H


#include "TestSuite.h"

class PlannerQualities : TestSuite {
private:
    std::string buildDomainName(const std::string & feature) override {
        return "/pddl/other/domain-" + feature + ".pddl";
    }

    std::string buildProblemName(const std::string & feature) override {
        return "/pddl/other/problem-" + feature + ".pddl";
    }
    void testDeterminism(TestResults &results);

public:
    PlannerQualities(Executor & e, std::string & pr) : TestSuite(e, pr) {};

    bool runCritical(TestResults &results) override;

    void runNonCritical(TestResults &results) override;
};


#endif //EVISCERATOR_PLANNERQUALITIES_H
