//
// Created by adamgreen on 18/01/19.
//

#include <string>

#include "../TestResults.h"

#ifndef EVISCERATOR_EXISTENTIAL_H
#define EVISCERATOR_EXISTENTIAL_H


class existential {
public:
    static bool testPlannerExistence(std::string planner, TestResults & results);

    static void testHowPlannerHandlesNonExistentDomainAndProblem(std::string planner, std::string command, TestResults & results);

    static void testHowPlannerHandlesNonExistentProblem(std::string planner, std::string command, TestResults & results);

    static void testHowPlannerHandlesNonExistentDomain(std::string planner, std::string command, TestResults & results);
};


#endif //EVISCERATOR_EXISTENTIAL_H
