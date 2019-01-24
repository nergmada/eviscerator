//
// Created by adamgreen on 24/01/19.
//

#include "pddl12.h"

#include <boost/process.hpp>
#include <boost/timer/timer.hpp>

#include "../utilities/functions.cpp"
#include "../utilities/Executor.h"
#include "../utilities/Ellipsis.h"

namespace bp = boost::process;
namespace bt = boost::timer;

bool pddl12::testStrips(Executor & executor, std::string & planRegex, TestResults & results) {
    bp::ipstream out;
    auto execResult = executor.execute("Testing how planner handles a STRIPS problem", "/pddl/pddl12/domain-strips.pddl", "/pddl/pddl12/problem-strips.pddl", out);
    if (execResult == -1) {
        std::cout << "FAILED: Planner failed to run properly..." << std::endl;
    }
    std::cout << "Exit code when given simple solvable strips problem: " << execResult << std::endl;
    results.addTestResult(test::pdd12Strips, execResult);

    auto plan = utilities::extractPlan(utilities::getStringOutput(out), planRegex);
    if (!plan.empty()) {
        std::cout << "PASSED: Plan identified in output successfully" << std::endl;
        if (plan.size() != 1) {
            std::cout << "Warning: Plan is not the expected length! Printing plan: " << std::endl;
            utilities::printPlan(plan, "<eviscerator>/pddl/pddl12/domain-strips.pddl", "<eviscerator>/pddl/pddl12/problem-strips.pddl");
        }
    } else {
        std::cout << "Failed to identify plan... Ending Evisceration" << std::endl;
        std::cout << "More info: We use a simple solvable strips problem to allow eviscerator to check that it understands how the planner outputs a plan" << std::endl;
        std::cout << "if we can't identify the plan in the output, then we cannot check that a problem has actually been solved and so may pass planners that should fail" << std::endl;
        return false;
    }
    return true;
}

void pddl12::testTyping(Executor & executor, std::string & planRegex, TestResults & results) {
    bp::ipstream out;
    auto execResult = executor.execute("Testing how planner handles a STRIPS + Typing problem", "/pddl/pddl12/domain-typing.pddl", "/pddl/pddl12/problem-typing.pddl", out);
    if (execResult == -1) {
        std::cout << "FAILED: Planner failed to run properly..." << std::endl;
    }
    std::cout << "Exit code when given STRIPS + Typing problem: " << execResult << std::endl;
    results.addTestResult(test::pddl12Typing, execResult);

    auto plan = utilities::extractPlan(utilities::getStringOutput(out), planRegex);
    if (!plan.empty()) {
        std::cout << "PASSED: Plan identified in output successfully" << std::endl;
        if (plan.size() != 1) {
            std::cout << "Warning: Plan is not the expected length! Printing plan: " << std::endl;
            utilities::printPlan(plan, "<eviscerator>/pddl/pddl12/domain-strips.pddl", "<eviscerator>/pddl/pddl12/problem-strips.pddl");
        }
    } else {
        std::cout << "Failed to identify plan... Comparing exit code" << std::endl;
        if (results.getTestResult(test::pdd12Strips).second == execResult) {
            std::cout << "MAYBE PASSED: Exit code corresponds to successful planning exit code, assuming success..." << std::endl;
        } else {
            std::cout << "FAILED: Exit code does not correspond, could not plan a typing problem" << std::endl;
            std::cout << "Command: " << executor.generateCommand("/pddl/pddl12/domain-typing.pddl", "/pddl/pddl12/problem-typing.pddl") << std::endl;
        }
    }
}

void pddl12::testDisjunctivePreconditions(Executor & executor, std::string & planRegex, TestResults & results) {
    bp::ipstream out;
    auto execResult = executor.execute("Testing how planner handles a STRIPS + Disjunctive preconditions problem", "/pddl/pddl12/domain-disjunctive-preconditions.pddl", "/pddl/pddl12/problem-disjunctive-preconditions.pddl", out);
    if (execResult == -1) {
        std::cout << "FAILED: Planner failed to run properly..." << std::endl;
    }
    std::cout << "Exit code when given STRIPS + Disjunctive preconditions problem: " << execResult << std::endl;
    results.addTestResult(test::pddl12DisjunctivePreconditions, execResult);

    auto plan = utilities::extractPlan(utilities::getStringOutput(out), planRegex);
    if (!plan.empty()) {
        std::cout << "PASSED: Plan identified in output successfully" << std::endl;
        if (plan.size() != 1) {
            std::cout << "Warning: Plan is not the expected length! Printing plan: " << std::endl;
            utilities::printPlan(plan, "<eviscerator>/pddl/pddl12/domain-strips.pddl", "<eviscerator>/pddl/pddl12/problem-strips.pddl");
        }
    } else {
        std::cout << "Failed to identify plan... Comparing exit code" << std::endl;
        if (results.getTestResult(test::pdd12Strips).second == execResult) {
            std::cout << "MAYBE PASSED: Exit code corresponds to successful planning exit code, assuming success..." << std::endl;
        } else {
            std::cout << "FAILED: Exit code does not correspond, could not plan a disjunctive preconditions problem" << std::endl;
            std::cout << "Command: " << executor.generateCommand("/pddl/pddl12/domain-typing.pddl", "/pddl/pddl12/problem-typing.pddl") << std::endl;
        }
    }
}