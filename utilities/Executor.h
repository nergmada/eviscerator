//
// Created by adamgreen on 24/01/19.
//

#ifndef EVISCERATOR_EXECUTOR_H
#define EVISCERATOR_EXECUTOR_H

#include <string>
#include <boost/process.hpp>
#include <boost/filesystem.hpp>

class Executor {
private:
    std::string planner;
    std::string command;
    boost::filesystem::path appPath;
public:
    Executor(std::string & p, std::string & c, boost::filesystem::path &appDir);

    int execute(std::string comment);

    int execute(std::string comment, std::string domain, std::string problem, bool treatAsFullpath = false);

    int execute(std::string comment, std::string domain, std::string problem, boost::process::ipstream & out, bool treatAsFullpath = false);

    std::string generateCommand(std::string domain, std::string problem);
};


#endif //EVISCERATOR_EXECUTOR_H
