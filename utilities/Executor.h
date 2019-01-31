//
// Created by adamgreen on 24/01/19.
//

#ifndef EVISCERATOR_EXECUTOR_H
#define EVISCERATOR_EXECUTOR_H

#include <string>
#include <boost/process.hpp>
#include <boost/filesystem.hpp>
#include <boost/timer/timer.hpp>
#include "Ellipsis.h"

class Executor {
private:
    std::string planner;
    std::string command;
    boost::filesystem::path appPath;
public:
    struct ExecutionProfile {
        Ellipsis & e;
        boost::timer::cpu_timer & t;
        std::string domain;
        std::string problem;
        boost::process::ipstream & out;
    };

    Executor(std::string & p, std::string & c, boost::filesystem::path &appDir);

    int execute(std::string comment);

    int execute(std::string comment, std::string domain, std::string problem, bool treatAsFullpath = false);

    int execute(std::string comment, std::string domain, std::string problem, boost::process::ipstream & out, bool treatAsFullpath = false);

    int executeSilent(Ellipsis & e, boost::timer::cpu_timer & timer, std::string domain, std::string problem, boost::process::ipstream & out);

    std::string generateCommand(std::string domain, std::string problem);
};


#endif //EVISCERATOR_EXECUTOR_H
