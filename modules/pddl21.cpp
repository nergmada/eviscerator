//
// Created by adamgreen on 24/01/19.
//

#include "pddl21.h"

#include <boost/process.hpp>
#include <boost/timer/timer.hpp>

#include "../utilities/functions.cpp"
#include "../utilities/Executor.h"
#include "../utilities/Ellipsis.h"

namespace bp = boost::process;
namespace bt = boost::timer;


void pddl21::conductTest(std::string feature, std::string stylisedName, TestResults::test t, TestResults & results, int planSize) {
    bp::ipstream out;
    auto execResult = executor.execute(std::string("Testing how planner handles a STRIPS + ") + stylisedName + " problem", buildDomainName(feature), buildProblemName(feature), out);
    if (execResult == -1) {
        std::cout << "FAILED: Planner failed to run properly..." << std::endl;
    }
    std::cout << "Exit code when given STRIPS + " << stylisedName << " problem: " << execResult << std::endl;
    results.addTestResult(t, execResult);

    auto plan = utilities::extractPlan(utilities::getStringOutput(out), planRegex);
    if (!plan.empty()) {
        std::cout << "PASSED: Plan identified in output successfully" << std::endl;
        if (plan.size() != planSize) {
            std::cout << "Warning: Plan is not the expected length! Printing plan: " << std::endl;
            utilities::printPlan(plan, buildDomainName(feature), buildProblemName(feature));
        }
    } else {
        std::cout << "Failed to identify plan... Comparing exit code" << std::endl;
        if (results.getTestResult(TestResults::test::pddl12Strips).second == execResult) {
            std::cout << "MAYBE PASSED: Exit code corresponds to successful planning exit code, assuming success..." << std::endl;
        } else {
            std::cout << "FAILED: Exit code does not correspond, could not plan a " << stylisedName << " problem" << std::endl;
            std::cout << "Command: " << executor.generateCommand(buildDomainName(feature), buildProblemName(feature)) << std::endl;
        }
    }
}

void pddl21::testNumericFluents(TestResults &results) {
    conductTest("numeric-fluents", "Numeric Fluents", TestResults::pddl21NumericFluents, results, 1);
}

void pddl21::testDurativeActions(TestResults &results) {
    conductTest("durative-actions", "Durative Actions", TestResults::pddl21DurativeActions, results, 1);
}

void pddl21::testDurativeInequalities(TestResults &results) {
    conductTest("durative-inequalities", "Durative Inequalities", TestResults::pddl21DurativeInequalities, results, 1);
}

void pddl21::testContinuousEffects(TestResults &results) {
    conductTest("continuous-effects", "Continuous Effects", TestResults::pddl21ContinuousEffects, results, 1);
}

void pddl21::testNegativePreconditions(TestResults &results) {
    conductTest("negative-preconditions", "Negative Preconditions", TestResults::pddl21NegativePreconditions, results, 1);
}

void pddl21::testDurativeInequalitiesWithoutRequirement(TestResults &results) {
    conductTest("durative-inequalities-wr", "Durative Inequalities Without Requirement", TestResults::pddl21DurativeInequalitiesWithoutRequirement, results, 1);
}

