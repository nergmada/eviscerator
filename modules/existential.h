//
// Created by adamgreen on 18/01/19.
//

#include <string>

#include "../TestResults.h"
#include "../utilities/Executor.h"

#ifndef EVISCERATOR_EXISTENTIAL_H
#define EVISCERATOR_EXISTENTIAL_H


class existential {
public:
    static bool testPlannerExistence(Executor & executor, TestResults & results);

    static void testHowPlannerHandlesNonExistentDomainAndProblem(Executor & executor, TestResults & results);

    static void testHowPlannerHandlesNonExistentProblem(Executor & executor, TestResults & results);

    static void testHowPlannerHandlesNonExistentDomain(Executor & executor, TestResults & results);
};


#endif //EVISCERATOR_EXISTENTIAL_H
