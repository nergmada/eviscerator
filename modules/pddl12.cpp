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

std::string buildDomainName(const std::string & feature) {
    return "/pddl/pddl12/domain-" + feature + ".pddl";
}

std::string buildProblemName(const std::string & feature) {
    return "/pddl/pddl12/problem-" + feature + ".pddl";
}

bool pddl12::testStrips(Executor & executor, std::string & planRegex, TestResults & results) {
    auto feature = "strips";
    auto stylisedName = "STRIPS";
    bp::ipstream out;
    auto execResult = executor.execute(std::string("Testing how planner handles a ") + stylisedName + " problem", buildDomainName(feature), buildProblemName(feature), out);
    if (execResult == -1) {
        std::cout << "FAILED: Planner failed to run properly..." << std::endl;
    }
    std::cout << "Exit code when given simple solvable " << stylisedName << " problem: " << execResult << std::endl;
    results.addTestResult(test::pdd12Strips, execResult);

    auto plan = utilities::extractPlan(utilities::getStringOutput(out), planRegex);
    if (!plan.empty()) {
        std::cout << "PASSED: Plan identified in output successfully" << std::endl;
        if (plan.size() != 1) {
            std::cout << "Warning: Plan is not the expected length! Printing plan: " << std::endl;
            utilities::printPlan(plan, buildProblemName(feature), buildProblemName(feature));
        }
    } else {
        std::cout << "Failed to identify plan... Ending Evisceration" << std::endl;
        std::cout << "More info: We use a simple solvable " << stylisedName << " problem to allow eviscerator to check that it understands how the planner outputs a plan" << std::endl;
        std::cout << "if we can't identify the plan in the output, then we cannot check that a problem has actually been solved and so may pass planners that should fail" << std::endl;
        return false;
    }
    return true;
}

void pddl12::testTyping(Executor & executor, std::string & planRegex, TestResults & results) {
    auto feature = "typing";
    auto stylisedName = "Typing";
    test testCase = pddl12Typing;
    bp::ipstream out;
    auto execResult = executor.execute(std::string("Testing how planner handles a STRIPS + ") + stylisedName + " problem", buildDomainName(feature), buildProblemName(feature), out);
    if (execResult == -1) {
        std::cout << "FAILED: Planner failed to run properly..." << std::endl;
    }
    std::cout << "Exit code when given STRIPS + " << stylisedName << " problem: " << execResult << std::endl;
    results.addTestResult(testCase, execResult);

    auto plan = utilities::extractPlan(utilities::getStringOutput(out), planRegex);
    if (!plan.empty()) {
        std::cout << "PASSED: Plan identified in output successfully" << std::endl;
        if (plan.size() != 1) {
            std::cout << "Warning: Plan is not the expected length! Printing plan: " << std::endl;
            utilities::printPlan(plan, buildDomainName(feature), buildProblemName(feature));
        }
    } else {
        std::cout << "Failed to identify plan... Comparing exit code" << std::endl;
        if (results.getTestResult(test::pdd12Strips).second == execResult) {
            std::cout << "MAYBE PASSED: Exit code corresponds to successful planning exit code, assuming success..." << std::endl;
        } else {
            std::cout << "FAILED: Exit code does not correspond, could not plan a typing problem" << std::endl;
            std::cout << "Command: " << executor.generateCommand(buildDomainName(feature), buildProblemName(feature)) << std::endl;
        }
    }
}

void pddl12::testDisjunctivePreconditions(Executor & executor, std::string & planRegex, TestResults & results) {
    auto feature = "disjunctive-preconditions";
    auto stylisedName = "Disjunctive Preconditions";
    test testCase = pddl12DisjunctivePreconditions;
    bp::ipstream out;
    auto execResult = executor.execute(std::string("Testing how planner handles a STRIPS + ") + stylisedName + " problem", buildDomainName(feature), buildProblemName(feature), out);
    if (execResult == -1) {
        std::cout << "FAILED: Planner failed to run properly..." << std::endl;
    }
    std::cout << "Exit code when given STRIPS + " << stylisedName << " problem: " << execResult << std::endl;
    results.addTestResult(testCase, execResult);

    auto plan = utilities::extractPlan(utilities::getStringOutput(out), planRegex);
    if (!plan.empty()) {
        std::cout << "PASSED: Plan identified in output successfully" << std::endl;
        if (plan.size() != 1) {
            std::cout << "Warning: Plan is not the expected length! Printing plan: " << std::endl;
            utilities::printPlan(plan, buildDomainName(feature), buildProblemName(feature));
        }
    } else {
        std::cout << "Failed to identify plan... Comparing exit code" << std::endl;
        if (results.getTestResult(test::pdd12Strips).second == execResult) {
            std::cout << "MAYBE PASSED: Exit code corresponds to successful planning exit code, assuming success..." << std::endl;
        } else {
            std::cout << "FAILED: Exit code does not correspond, could not plan a typing problem" << std::endl;
            std::cout << "Command: " << executor.generateCommand(buildDomainName(feature), buildProblemName(feature)) << std::endl;
        }
    }
}

void pddl12::testEquality(Executor & executor, std::string & planRegex, TestResults & results) {
    auto feature = "equality";
    auto stylisedName = "Equality";
    test testCase = pddl12Equality;
    bp::ipstream out;
    auto execResult = executor.execute(std::string("Testing how planner handles a STRIPS + ") + stylisedName + " problem", buildDomainName(feature), buildProblemName(feature), out);
    if (execResult == -1) {
        std::cout << "FAILED: Planner failed to run properly..." << std::endl;
    }
    std::cout << "Exit code when given STRIPS + " << stylisedName << " problem: " << execResult << std::endl;
    results.addTestResult(testCase, execResult);

    auto plan = utilities::extractPlan(utilities::getStringOutput(out), planRegex);
    if (!plan.empty()) {
        std::cout << "PASSED: Plan identified in output successfully" << std::endl;
        if (plan.size() != 1) {
            std::cout << "Warning: Plan is not the expected length! Printing plan: " << std::endl;
            utilities::printPlan(plan, buildDomainName(feature), buildProblemName(feature));
        }
    } else {
        std::cout << "Failed to identify plan... Comparing exit code" << std::endl;
        if (results.getTestResult(test::pdd12Strips).second == execResult) {
            std::cout << "MAYBE PASSED: Exit code corresponds to successful planning exit code, assuming success..." << std::endl;
        } else {
            std::cout << "FAILED: Exit code does not correspond, could not plan a typing problem" << std::endl;
            std::cout << "Command: " << executor.generateCommand(buildDomainName(feature), buildProblemName(feature)) << std::endl;
        }
    }
}

void pddl12::testExistentialPreconditions(Executor & executor, std::string & planRegex, TestResults & results) {
    auto feature = "existential-preconditions";
    auto stylisedName = "Existential Preconditions";
    test testCase = pddl12ExistentialPreconditions;
    bp::ipstream out;
    auto execResult = executor.execute(std::string("Testing how planner handles a STRIPS + ") + stylisedName + " problem", buildDomainName(feature), buildProblemName(feature), out);
    if (execResult == -1) {
        std::cout << "FAILED: Planner failed to run properly..." << std::endl;
    }
    std::cout << "Exit code when given STRIPS + " << stylisedName << " problem: " << execResult << std::endl;
    results.addTestResult(testCase, execResult);

    auto plan = utilities::extractPlan(utilities::getStringOutput(out), planRegex);
    if (!plan.empty()) {
        std::cout << "PASSED: Plan identified in output successfully" << std::endl;
        if (plan.size() != 1) {
            std::cout << "Warning: Plan is not the expected length! Printing plan: " << std::endl;
            utilities::printPlan(plan, buildDomainName(feature), buildProblemName(feature));
        }
    } else {
        std::cout << "Failed to identify plan... Comparing exit code" << std::endl;
        if (results.getTestResult(test::pdd12Strips).second == execResult) {
            std::cout << "MAYBE PASSED: Exit code corresponds to successful planning exit code, assuming success..." << std::endl;
        } else {
            std::cout << "FAILED: Exit code does not correspond, could not plan a typing problem" << std::endl;
            std::cout << "Command: " << executor.generateCommand(buildDomainName(feature), buildProblemName(feature)) << std::endl;
        }
    }
}

void pddl12::testUniversalPreconditions(Executor & executor, std::string & planRegex, TestResults & results) {
    auto feature = "universal-preconditions";
    auto stylisedName = "Universal Preconditions";
    test testCase = pddl12UniversalPreconditions;
    bp::ipstream out;
    auto execResult = executor.execute(std::string("Testing how planner handles a STRIPS + ") + stylisedName + " problem", buildDomainName(feature), buildProblemName(feature), out);
    if (execResult == -1) {
        std::cout << "FAILED: Planner failed to run properly..." << std::endl;
    }
    std::cout << "Exit code when given STRIPS + " << stylisedName << " problem: " << execResult << std::endl;
    results.addTestResult(testCase, execResult);

    auto plan = utilities::extractPlan(utilities::getStringOutput(out), planRegex);
    if (!plan.empty()) {
        std::cout << "PASSED: Plan identified in output successfully" << std::endl;
        if (plan.size() != 1) {
            std::cout << "Warning: Plan is not the expected length! Printing plan: " << std::endl;
            utilities::printPlan(plan, buildDomainName(feature), buildProblemName(feature));
        }
    } else {
        std::cout << "Failed to identify plan... Comparing exit code" << std::endl;
        if (results.getTestResult(test::pdd12Strips).second == execResult) {
            std::cout << "MAYBE PASSED: Exit code corresponds to successful planning exit code, assuming success..." << std::endl;
        } else {
            std::cout << "FAILED: Exit code does not correspond, could not plan a typing problem" << std::endl;
            std::cout << "Command: " << executor.generateCommand(buildDomainName(feature), buildProblemName(feature)) << std::endl;
        }
    }
}

void pddl12::testConditionalEffects(Executor & executor, std::string & planRegex, TestResults & results) {
    auto feature = "conditional-effects";
    auto stylisedName = "Conditional Effects";
    test testCase = pddl12ConditionalEffects;
    bp::ipstream out;
    auto execResult = executor.execute(std::string("Testing how planner handles a STRIPS + ") + stylisedName + " problem", buildDomainName(feature), buildProblemName(feature), out);
    if (execResult == -1) {
        std::cout << "FAILED: Planner failed to run properly..." << std::endl;
    }
    std::cout << "Exit code when given STRIPS + " << stylisedName << " problem: " << execResult << std::endl;
    results.addTestResult(testCase, execResult);

    auto plan = utilities::extractPlan(utilities::getStringOutput(out), planRegex);
    if (!plan.empty()) {
        std::cout << "PASSED: Plan identified in output successfully" << std::endl;
        if (plan.size() != 2) {
            std::cout << "Warning: Plan is not the expected length! Printing plan: " << std::endl;
            utilities::printPlan(plan, buildDomainName(feature), buildProblemName(feature));
        }
    } else {
        std::cout << "Failed to identify plan... Comparing exit code" << std::endl;
        if (results.getTestResult(test::pdd12Strips).second == execResult) {
            std::cout << "MAYBE PASSED: Exit code corresponds to successful planning exit code, assuming success..." << std::endl;
        } else {
            std::cout << "FAILED: Exit code does not correspond, could not plan a typing problem" << std::endl;
            std::cout << "Command: " << executor.generateCommand(buildDomainName(feature), buildProblemName(feature)) << std::endl;
        }
    }
}