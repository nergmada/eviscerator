//
// Created by adamgreen on 30/01/19.
//

#ifndef EVISCERATOR_TESTSUITE_H
#define EVISCERATOR_TESTSUITE_H

#include <string>

#include "../TestResults.h"
#include "../utilities/Executor.h"

class TestSuite {
private:
    Executor & executor;
    std::string & planRegex;
protected:
    bool conductTest(std::string feature, std::string stylisedName, TestResults::test t, TestResults & results, int planSize);
    virtual std::string buildDomainName(const std::string & feature) = 0;
    virtual std::string buildProblemName(const std::string & feature) = 0;
public:
    TestSuite(Executor & e, std::string & pr) : executor(e), planRegex(pr) {};
    virtual bool runCritical(TestResults & results) {};
    virtual void runNonCritical(TestResults & results) = 0;
};


#endif //EVISCERATOR_TESTSUITE_H
