//
// Created by adamgreen on 18/01/19.
//

#include <string>
#include <cmath>
#include <boost/regex.hpp>
#include <boost/process.hpp>
#include <boost/timer/timer.hpp>

#include "../TestResults.h"
#include "../utilities/functions.cpp"
#include "../utilities/Ellipsis.h"

#ifndef EVISCERATOR_EXISTENTIAL_H
#define EVISCERATOR_EXISTENTIAL_H

namespace bp = boost::process;
namespace bt = boost::timer;
class existential {
public:
    static bool testPlannerExistence(std::string planner, TestResults & results) {
        std::cout << "Checking if planner exists";
        try {
            Ellipsis ellipsis(1000000);
            bp::child c(planner, bp::std_out > bp::null, bp::std_err > bp::null);
            bt::cpu_timer timer;
            timer.start();
            while (c.running()){
                ellipsis.updateEllipsis(timer.elapsed().wall);
            }
            ellipsis.endEllipsis();
            timer.stop();
            std::cout << "Planner exists" << std::endl;
            std::cout << "\t" << bt::format(timer.elapsed(), 3, "%w seconds taken") << std::endl;
            std::cout << "Exit code when no problem given: " << c.exit_code() << std::endl;
            results.existentialResult(true, c.exit_code());
        } catch (const std::exception& e) {
            std::cout << std::endl << "Planner not found, terminating Evisceration..." << std::endl;
            return false;
        }

        return true;
    }

    static void testHowPlannerHandlesNonExistentProblem(std::string planner, std::string command, TestResults & results) {
        auto execution = utilities::buildExecutionString(planner, command, "not.pddl", "not.pddl");
        std::cout << "Command: " << execution;
        try {
            Ellipsis ellipsis(1000000);
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
            results.existentialResult(true, c.exit_code());
        } catch (const std::exception& e) {
            std::cout << std::endl << "Critical execution error, no exit code given, proceeding..." << std::endl;
        }
    }
};


#endif //EVISCERATOR_EXISTENTIAL_H
