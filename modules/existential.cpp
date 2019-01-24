//
// Created by adamgreen on 24/01/19.
//

#include "existential.h"

#include <cmath>

#include <boost/process.hpp>
#include <boost/timer/timer.hpp>

#include "../utilities/Ellipsis.h"
#include "../utilities/functions.cpp"

namespace bp = boost::process;
namespace bt = boost::timer;

bool existential::testPlannerExistence(std::string planner, TestResults & results) {
    try {
        Ellipsis ellipsis(1000000, "Checking if planner exists");
        bp::child c(planner, bp::std_out > bp::null, bp::std_err > bp::null);
        bt::cpu_timer timer;
        timer.start();
        while (c.running()){
            ellipsis.updateEllipsis(timer.elapsed().wall);
        }
        ellipsis.endEllipsis();
        timer.stop();
        std::cout << "PASSED: Planner exists" << std::endl;
        std::cout << "\t" << bt::format(timer.elapsed(), 3, "%w seconds taken") << std::endl;
        std::cout << "Exit code when no problem given: " << c.exit_code() << std::endl;
        results.addTestResult(test::plannerExists, c.exit_code());
    } catch (const std::exception& e) {
        std::cout << std::endl << "Planner not found, terminating Evisceration..." << std::endl;
        return false;
    }

    return true;
}

void existential::testHowPlannerHandlesNonExistentDomainAndProblem(std::string planner, std::string command, TestResults & results) {
    auto execution = utilities::buildExecutionString(planner, command, "not.pddl", "not.pddl");
    try {
        Ellipsis ellipsis(1000000, "Testing how planner handles non-existent domain and problem file");
        bp::child c(execution, bp::std_out > bp::null, bp::std_err > bp::null);
        bt::cpu_timer timer;
        timer.start();
        while (c.running()){
            ellipsis.updateEllipsis(timer.elapsed().wall);
        }
        ellipsis.endEllipsis();
        timer.stop();
        std::cout << "\t" << bt::format(timer.elapsed(), 3, "%w seconds taken") << std::endl;
        std::cout << "Exit code when non-existent domain and problem given: " << c.exit_code() << std::endl;
        results.addTestResult(test::noDomainProblem, c.exit_code());
    } catch (const std::exception& e) {
        std::cout << std::endl << "Critical execution error, no exit code given, proceeding..." << std::endl;
    }
}

void existential::testHowPlannerHandlesNonExistentProblem(std::string planner, std::string command, TestResults & results) {
    auto execution = utilities::buildExecutionString(planner, command,
                                                     results.getApplicationDirectory()->string() + "/pddl/existential/domain.pddl", "not.pddl");
    try {
        Ellipsis ellipsis(1000000, "Testing how planner handles non-existent problem file only");
        bp::child c(execution, bp::std_out > bp::null, bp::std_err > bp::null);
        bt::cpu_timer timer;
        timer.start();
        while (c.running()){
            ellipsis.updateEllipsis(timer.elapsed().wall);
        }
        ellipsis.endEllipsis();
        timer.stop();
        std::cout << "\t" << bt::format(timer.elapsed(), 3, "%w seconds taken") << std::endl;
        std::cout << "Exit code when non-existent problem given: " << c.exit_code() << std::endl;
        results.addTestResult(test::noProblem, c.exit_code());
    } catch (const std::exception& e) {
        std::cout << std::endl << "Critical execution error, no exit code given, proceeding..." << std::endl;
    }
}

void existential::testHowPlannerHandlesNonExistentDomain(std::string planner, std::string command, TestResults & results) {
    auto execution = utilities::buildExecutionString(planner, command,
                                                     "not.pddl", results.getApplicationDirectory()->string() + "/pddl/existential/problem.pddl");
    try {
        Ellipsis ellipsis(1000000, "Testing how planner handles non-existent domain file only");
        bp::child c(execution, bp::std_out > bp::null, bp::std_err > bp::null);
        bt::cpu_timer timer;
        timer.start();
        while (c.running()){
            ellipsis.updateEllipsis(timer.elapsed().wall);
        }
        ellipsis.endEllipsis();
        timer.stop();
        std::cout << "\t" << bt::format(timer.elapsed(), 3, "%w seconds taken") << std::endl;
        std::cout << "Exit code when non-existent domain given: " << c.exit_code() << std::endl;
        results.addTestResult(test::noDomain, c.exit_code());
    } catch (const std::exception& e) {
        std::cout << std::endl << "Critical execution error, no exit code given, proceeding..." << std::endl;
    }
}
