//
// Created by adamgreen on 24/01/19.
//

#include "existential.h"

#include <cmath>

#include <boost/process.hpp>
#include <boost/timer/timer.hpp>

#include "../utilities/Executor.h"
#include "../utilities/Ellipsis.h"
#include "../utilities/functions.cpp"

namespace bp = boost::process;
namespace bt = boost::timer;

bool existential::testPlannerExistence(Executor & executor, TestResults & results) {
    auto execResult = executor.execute("Checking if planner exists");
    if (execResult == -1) {
        std::cout << std::endl << "CRITICAL FAIL: Planner not found, terminating Evisceration..." << std::endl;
        return false;
    }
    std::cout << "PASSED: Planner exists" << std::endl;
    std::cout << "Exit code when no problem given: " << execResult << std::endl;
    results.addTestResult(test::plannerExists, execResult);

    return true;
}

void existential::testHowPlannerHandlesNonExistentDomainAndProblem(Executor & executor, TestResults & results) {
    auto execResult = executor.execute("Testing how planner handles non-existent domain and problem file", "not.pddl", "not.pddl", true);
    if (execResult == -1) {
        std::cout << "FAILED: Planner failed to run properly..." << std::endl;
        return;
    }
    std::cout << "PASSED: Exit code when non-existent domain and problem given: " << execResult << std::endl;
    results.addTestResult(test::noDomainProblem, execResult);

}

void existential::testHowPlannerHandlesNonExistentProblem(Executor & executor, TestResults & results) {
    auto execResult = executor.execute("Testing how planner handles non-existent domain and problem file", "/pddl/existential/domain.pddl", "not.pddl");
    if (execResult == -1) {
        std::cout << "FAILED: Planner failed to run properly..." << std::endl;
        return;
    }
    std::cout << "PASSED: Exit code when non-existent problem given: " << execResult << std::endl;
    results.addTestResult(test::noProblem, execResult);
}

void existential::testHowPlannerHandlesNonExistentDomain(Executor & executor, TestResults & results) {
    auto execResult = executor.execute("Testing how planner handles non-existent domain and problem file", "not.pddl", "/pddl/existential/problem.pddl");
    if (execResult == -1) {
        std::cout << "FAILED: Planner failed to run properly..." << std::endl;
        return;
    }
    std::cout << "PASSED: Exit code when non-existent domain given: " << execResult << std::endl;
    results.addTestResult(test::noDomain, execResult);
}
