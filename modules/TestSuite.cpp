//
// Created by adamgreen on 30/01/19.
//

#include "TestSuite.h"

#include <boost/process.hpp>
#include <boost/timer/timer.hpp>

#include "../utilities/functions.cpp"
#include "../utilities/Executor.h"
#include "../utilities/Ellipsis.h"

namespace bp = boost::process;
namespace bt = boost::timer;

bool TestSuite::conductTest(std::string feature, std::string stylisedName, TestResults::test t, TestResults & results, int planSize) {
    bp::ipstream out;
    auto execResult = executor.execute(std::string("Testing how planner handles a ") + stylisedName + " problem", buildDomainName(feature), buildProblemName(feature), out);
    if (execResult == -1) {
        std::cout << "FAILED: Planner failed to run properly..." << std::endl;
    }
    std::cout << "Exit code when given " << stylisedName << " problem: " << execResult << std::endl;
    results.addTestResult(t, execResult);

    auto plan = utilities::extractPlan(utilities::getStringOutput(out), planRegex);
    if (!plan.empty()) {
        std::cout << "PASSED: Plan identified in output successfully" << std::endl;
        if (plan.size() != planSize) {
            std::cout << "Warning: Plan is not the expected length! Printing plan: " << std::endl;
            utilities::printPlan(plan, buildDomainName(feature), buildProblemName(feature));
        }
    } else {
        if (t == TestResults::pddl12Strips) {
            std::cout << "Failed to identify plan... Ending Evisceration" << std::endl;
            std::cout << "More info: We use a simple solvable " << stylisedName << " problem to allow eviscerator to check that it understands how the planner outputs a plan" << std::endl;
            std::cout << "if we can't identify the plan in the output, then we cannot check that a problem has actually been solved and so may pass planners that should fail" << std::endl;
            return false;
        } else if (results.getTestResult(TestResults::test::pddl12Strips).second == execResult) {
            std::cout << "Failed to identify plan... Comparing exit code" << std::endl;
            std::cout << "MAYBE PASSED: Exit code corresponds to successful planning exit code, assuming success..." << std::endl;
        } else {
            std::cout << "FAILED: Exit code does not correspond, could not plan a " << stylisedName << " problem" << std::endl;
            std::cout << "Command: " << executor.generateCommand(buildDomainName(feature), buildProblemName(feature)) << std::endl;
        }
    }
    return true;
}