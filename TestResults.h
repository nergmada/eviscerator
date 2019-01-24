//
// Created by adamgreen on 18/01/19.
//

#ifndef EVISCERATOR_TESTRESULTS_H
#define EVISCERATOR_TESTRESULTS_H

#include <map>
#include <boost/filesystem.hpp>

enum test {
    plannerExists,
    noDomainProblem,
    noProblem,
    noDomain,
    pdd12Strips,
    pddl12Typing,
    pddl12DisjunctivePreconditions,
    pddl12Equality,
    pddl12ExistentialPreconditions
};

class TestResults {
private:
    boost::filesystem::path appDirectory;

    bool plannerExists;

    std::map<test, bool> conducted;
    std::map<test, int> exitCodes;

public:
    TestResults() {};

    void addTestResult(test t, int exitCode) {
        if (!conducted[t]) {
            conducted[t] = true;
            exitCodes[t] = exitCode;
            if (t == test::plannerExists) {
                plannerExists = true;
            }
        }
    }

    std::pair<bool, int> getTestResult(test t) {
        return {conducted[t], exitCodes[t]};
    }
};


#endif //EVISCERATOR_TESTRESULTS_H
