//
// Created by adamgreen on 18/01/19.
//

#include <iostream>
#include <string>
#include "boost/regex.hpp"
namespace utilities {
    static std::string buildExecutionString(
            const std::string & planner,
            const std::string & command,
            const std::string & domainPath,
            const std::string & problemPath) {

        std::cout << "Checking how planner handles non-existent files";
        boost::basic_regex<char> domainRegex("\\[DOMAIN\\]");
        boost::basic_regex<char> problemRegex("\\[PROBLEM\\]");
        std::string plannerCommand = boost::regex_replace(
                boost::regex_replace(command, domainRegex, domainPath), problemRegex, problemPath);
        return planner + " " + plannerCommand;
    }
}