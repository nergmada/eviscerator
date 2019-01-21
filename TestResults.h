//
// Created by adamgreen on 18/01/19.
//

#ifndef EVISCERATOR_TESTRESULTS_H
#define EVISCERATOR_TESTRESULTS_H
#include <boost/filesystem.hpp>

namespace bfs = boost::filesystem;
class TestResults {
private:
    bfs::path appDirectory;

    bool testedExistence = false;
    bool plannerExists;
    int exitCodeWhenNoProblemProvided;

    bool testedPlannerHandlingNonExistentDomainProblem = false;
    int exitCodeWhenNonExistentDomainProblemProvided;

    bool testedPlannerHandlingNonExistentProblem = false;
    int exitCodeWhenNonExistentProblemProvided;

    bool testedPlannerHandlingNonExistentDomain = false;
    int exitCodeWhenNonExistentDomainProvided;
public:
    TestResults(bfs::path p) : appDirectory(std::move(p)) {};

    bfs::path* getApplicationDirectory() {
        return & appDirectory;
    }

    void existentialResult(bool plannerFound, int exitCode) {
        if (!testedExistence) {
            testedExistence = true;
            plannerExists = plannerFound;
            exitCodeWhenNoProblemProvided = exitCode;
        }
    }

    void NonExistentDomainProblemResult(int exitCode) {
        if (!testedPlannerHandlingNonExistentDomainProblem) {
            testedPlannerHandlingNonExistentDomainProblem = true;
            exitCodeWhenNonExistentDomainProblemProvided = exitCode;
        }
    }

    void NonExistentProblemResult(int exitCode) {
        if (!testedPlannerHandlingNonExistentProblem) {
            testedPlannerHandlingNonExistentProblem = true;
            exitCodeWhenNonExistentProblemProvided = exitCode;
        }
    }

    void NonExistentDomainResult(int exitCode) {
        if (!testedPlannerHandlingNonExistentDomain) {
            testedPlannerHandlingNonExistentDomain = true;
            exitCodeWhenNonExistentDomainProvided = exitCode;
        }
    }
};


#endif //EVISCERATOR_TESTRESULTS_H
