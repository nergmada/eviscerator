//
// Created by adamgreen on 18/01/19.
//

#ifndef EVISCERATOR_TESTRESULTS_H
#define EVISCERATOR_TESTRESULTS_H


class TestResults {
private:
    bool testedExistence = false;
    bool plannerExists;
    int exitCodeWhenNoProblemProvided;
public:
    void existentialResult(bool plannerFound, int exitCode) {
        if (!testedExistence) {
            plannerExists = plannerFound;
            exitCodeWhenNoProblemProvided = exitCode;
        }
    }
};


#endif //EVISCERATOR_TESTRESULTS_H
