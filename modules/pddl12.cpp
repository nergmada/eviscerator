//
// Created by adamgreen on 24/01/19.
//

#include "pddl12.h"

#include <boost/process.hpp>
#include <boost/timer/timer.hpp>

#include "../utilities/functions.cpp"
#include "../utilities/Ellipsis.h"

namespace bp = boost::process;
namespace bt = boost::timer;

bool pddl12::testStrips(std::string & planner, std::string & command, std::string & planRegex, TestResults & results) {
    auto execution = utilities::buildExecutionString(planner, command, results.getApplicationDirectory()->string() + "/pddl/pddl12/domain-strips.pddl", results.getApplicationDirectory()->string() + "/pddl/pddl12/problem-strips.pddl");
    try {
        Ellipsis ellipsis(1000000, "Testing how planner handles a STRIPS problem");
        bp::ipstream out;
        bp::child c(execution, bp::std_out > out, bp::std_err > bp::null);
        bt::cpu_timer timer;
        timer.start();

        while (c.running()){
            ellipsis.updateEllipsis(timer.elapsed().wall);
        }
        ellipsis.endEllipsis();
        timer.stop();
        std::cout << "\t" << bt::format(timer.elapsed(), 3, "%w seconds taken") << std::endl;
        std::cout << "Exit code when given simple solvable strips problem: " << c.exit_code() << std::endl;
        results.addTestResult(test::pdd12Strips, c.exit_code());

        auto plan = utilities::extractPlan(utilities::getStringOutput(out), planRegex);
        if (!plan.empty()) {
            std::cout << "PASSED: Plan identified in output successfully" << std::endl;
            if (plan.size() != 1) {
                std::cout << "Warning: Plan is not the expected length! Printing plan: " << std::endl;
                utilities::printPlan(plan, results.getApplicationDirectory()->string() + "/pddl/pddl12/domain-strips.pddl", results.getApplicationDirectory()->string() + "/pddl/pddl12/problem-strips.pddl");
            }
        } else {
            std::cout << "Failed to identify plan... Ending Evisceration" << std::endl;
            std::cout << "More info: We use a simple solvable strips problem to allow eviscerator to check that it understands how the planner outputs a plan" << std::endl;
            std::cout << "if we can't identify the plan in the output, then we cannot check that a problem has actually been solved and so may pass planners that should fail" << std::endl;
            return false;
        }
        return true;

    } catch (const std::exception& e) {
        std::cout << std::endl << "Critical execution error, no exit code given, ending evisceration..." << std::endl;
        return false;
    }
}

void pddl12::testTyping(std::string &planner, std::string &command, std::string &planRegex, TestResults &results) {
    auto execution = utilities::buildExecutionString(planner, command, results.getApplicationDirectory()->string() + "/pddl/pddl12/domain-typing.pddl", results.getApplicationDirectory()->string() + "/pddl/pddl12/problem-typing.pddl");
    try {
        Ellipsis ellipsis(1000000, "Testing how planner handles a STRIPS + Typing problem");
        bp::ipstream out;
        bp::child c(execution, bp::std_out > out, bp::std_err > bp::null);
        bt::cpu_timer timer;
        timer.start();

        while (c.running()){
            ellipsis.updateEllipsis(timer.elapsed().wall);
        }
        ellipsis.endEllipsis();
        timer.stop();
        std::cout << "\t" << bt::format(timer.elapsed(), 3, "%w seconds taken") << std::endl;
        std::cout << "Exit code when given STRIPS + Typing problem: " << c.exit_code() << std::endl;
        results.addTestResult(test::pddl12Typing, c.exit_code());

        auto plan = utilities::extractPlan(utilities::getStringOutput(out), planRegex);
        if (!plan.empty()) {
            std::cout << "PASSED: Plan identified in output successfully" << std::endl;
            if (plan.size() != 1) {
                std::cout << "Warning: Plan is not the expected length! Printing plan: " << std::endl;
                utilities::printPlan(plan, results.getApplicationDirectory()->string() + "/pddl/pddl12/domain-strips.pddl", results.getApplicationDirectory()->string() + "/pddl/pddl12/problem-strips.pddl");
            }
        } else {
            std::cout << "Failed to identify plan... Comparing exit code" << std::endl;
            if (results.getTestResult(test::pdd12Strips).second == c.exit_code()) {
                std::cout << "MAYBE PASSED: Exit code corresponds to successful planning exit code, assuming success..." << std::endl;
            } else {
                std::cout << "FAILED: Exit code does not correspond, could not plan a typing problem" << std::endl;
                std::cout << "Command: " << execution << std::endl;
            }
        }

    } catch (const std::exception& e) {
        std::cout << std::endl << "Critical execution error, no exit code given, ending evisceration..." << std::endl;
    }
}
