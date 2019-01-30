//
// Created by adamgreen on 30/01/19.
//

#ifndef EVISCERATOR_PDDLPLUS_H
#define EVISCERATOR_PDDLPLUS_H


#include "TestSuite.h"

class pddlplus : TestSuite {
private:
    std::string buildDomainName(const std::string & feature) override {
        return "/pddl/pddlplus/domain-" + feature + ".pddl";
    }

    std::string buildProblemName(const std::string & feature) override {
        return "/pddl/pddlplus/problem-" + feature + ".pddl";
    }
    void testTime(TestResults & results);
public:
    pddlplus(Executor & e, std::string & pr) : TestSuite(e, pr) {};

    bool runCritical(TestResults &results) override;

    void runNonCritical(TestResults &results) override;
};


#endif //EVISCERATOR_PDDLPLUS_H
