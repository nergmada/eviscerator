//
// Created by adamgreen on 28/01/19.
//

#ifndef EVISCERATOR_PDDL22_H
#define EVISCERATOR_PDDL22_H

#include <string>
#include "TestSuite.h"


class pddl22 : TestSuite {
private:
    std::string buildDomainName(const std::string & feature) override {
        return "/pddl/pddl22/domain-" + feature + ".pddl";
    }

    std::string buildProblemName(const std::string & feature) override {
        return "/pddl/pddl22/problem-" + feature + ".pddl";
    }
    void testDerivedPredicates(TestResults & results);
    void testTimedInitialLiterals(TestResults & results);
public:
    pddl22(Executor & e, std::string & pr) : TestSuite(e, pr) {};

    bool runCritical(TestResults &results) override;

    void runNonCritical(TestResults &results) override;
};


#endif //EVISCERATOR_PDDL22_H
