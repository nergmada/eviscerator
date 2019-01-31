//
// Created by adamgreen on 24/01/19.
//

#include "Executor.h"
#include <boost/process.hpp>
#include <boost/timer/timer.hpp>

#include "../utilities/Ellipsis.h"
#include "../utilities/functions.cpp"

namespace bp = boost::process;
namespace bt = boost::timer;

Executor::Executor(std::string & p, std::string &c, boost::filesystem::path &appDir) : planner(p), command(c), appPath(appDir) {}

int Executor::execute(std::string comment) {
    auto execution = utilities::buildExecutionString(planner, command, "", "");
    try {
        Ellipsis ellipsis(1000000, comment);
        bp::child c(execution, bp::std_out > bp::null, bp::std_err > bp::null);
        bt::cpu_timer timer;
        timer.start();

        while (c.running()) {
            ellipsis.updateEllipsis(timer.elapsed().wall);
        }
        ellipsis.endEllipsis();
        timer.stop();
        std::cout << "\t" << bt::format(timer.elapsed(), 3, "%w seconds taken") << std::endl;
        return c.exit_code();
    } catch (const std::exception& e) {
        return -1;
    }
}

int Executor::execute(std::string comment, std::string domain, std::string problem, bool treatAsFullpath) {
    std::string execution;
    if (treatAsFullpath)
        execution = utilities::buildExecutionString(planner, command, domain, problem);
    else
        execution = utilities::buildExecutionString(planner, command, appPath.string() + domain, appPath.string() + problem);
    try {
        Ellipsis ellipsis(1000000, comment);
        bp::child c(execution, bp::std_out > bp::null, bp::std_err > bp::null);
        bt::cpu_timer timer;
        timer.start();

        while (c.running()) {
            ellipsis.updateEllipsis(timer.elapsed().wall);
        }
        ellipsis.endEllipsis();
        timer.stop();
        std::cout << "\t" << bt::format(timer.elapsed(), 3, "%w seconds taken") << std::endl;
        return c.exit_code();
    } catch (const std::exception& e) {
        return -1;
    }
}

int Executor::execute(std::string comment, std::string domain, std::string problem, boost::process::ipstream & out,
                      bool treatAsFullpath) {
    std::string execution;
    if (treatAsFullpath)
        execution = utilities::buildExecutionString(planner, command, domain, problem);
    else
        execution = utilities::buildExecutionString(planner, command, appPath.string() + domain, appPath.string() + problem);
    try {
        Ellipsis ellipsis(1000000, comment);
        bp::child c(execution, bp::std_out > out, bp::std_err > bp::null);
        bt::cpu_timer timer;
        timer.start();

        while (c.running()) {
            ellipsis.updateEllipsis(timer.elapsed().wall);
        }
        ellipsis.endEllipsis();
        timer.stop();
        std::cout << "\t" << bt::format(timer.elapsed(), 3, "%w seconds taken") << std::endl;
        return c.exit_code();
    } catch (const std::exception& e) {
        return -1;
    }
}

int Executor::executeSilent(Ellipsis & e, bt::cpu_timer & timer, std::string domain, std::string problem, boost::process::ipstream & out) {
    std::string execution = utilities::buildExecutionString(planner, command, appPath.string() + domain, appPath.string() + problem);
    try {
        bp::child c(execution, bp::std_out > out, bp::std_err > bp::null);
        //TODO: check if timer stopping and starting resets timer
        while (c.running()) {
            e.updateEllipsis(timer.elapsed().wall);
        }
        return c.exit_code();
    } catch (const std::exception& e) {
        return -1;
    }
}

std::string Executor::generateCommand(std::string domain, std::string problem) {
    return utilities::buildExecutionString(planner, command, appPath.string() + domain, appPath.string() + problem);
}

