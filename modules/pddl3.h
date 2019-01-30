//
// Created by adamgreen on 30/01/19.
//

#ifndef EVISCERATOR_PDDL3_H
#define EVISCERATOR_PDDL3_H

#include "TestSuite.h"

class pddl3 : TestSuite {
private:
    std::string buildDomainName(const std::string & feature) override {
        return "/pddl/pddl3/domain-" + feature + ".pddl";
    }

    std::string buildProblemName(const std::string & feature) override {
        return "/pddl/pddl3/problem-" + feature + ".pddl";
    }
    void testConstraints(TestResults & results);
    void testPreferences(TestResults & results);
public:
    pddl3(Executor & e, std::string & pr) : TestSuite(e, pr) {};

    bool runCritical(TestResults &results) override;

    void runNonCritical(TestResults &results) override;
};


#endif //EVISCERATOR_PDDL3_H
