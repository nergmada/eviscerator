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

void pddl12::testStrips(std::string & planner, std::string & command, TestResults & results) {
    auto execution = utilities::buildExecutionString(planner, command, results.getApplicationDirectory()->string() + "/pddl/pddl12/domain-strips.pddl", results.getApplicationDirectory()->string() + "/pddl/pddl12/problem-strips.pddl");
    try {
        Ellipsis ellipsis(1000000, "Testing how planner handles a STRIPS problem");
        bp::child c(execution, bp::std_out > bp::null, bp::std_err > bp::null);
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
    } catch (const std::exception& e) {
        std::cout << std::endl << "Critical execution error, no exit code given, proceeding..." << std::endl;
    }
}