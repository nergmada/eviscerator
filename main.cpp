#include <iostream>
#include <string>
#include <boost/regex.hpp>


#include "cxxopts.hpp"

#include "modules/existential.h"
#include "TestResults.h"

namespace bp = boost::process;

bool checkCommandStringIsValid(std::string command) {
    boost::basic_regex<char> domainRegex("\\[DOMAIN\\]");
    boost::basic_regex<char> problemRegex("\\[PROBLEM\\]");
    return boost::regex_search(command, domainRegex) && boost::regex_search(command, problemRegex);
}

std::pair<bool, std::pair<std::string, std::string>> getParameters(int argc, char * argv[]) {
    cxxopts::Options cmd("Eviscerator", "A tool for getting into the guts of a planner");
    cmd.add_options()
            ("p,planner", "path to the planner to test", cxxopts::value<std::string>())
            ("c,command", "The command to execute in order to use the planner", cxxopts::value<std::string>()->default_value("[DOMAIN] [PROBLEM]"))
            ("o,output", "A regular expression defining how the plan output is given");
    cmd.parse_positional({"planner", "command"});
    auto result = cmd.parse(argc, argv);
    if (result.count("planner") > 0) {
        result["planner"].as<std::string>();
    } else {
        std::cout << "ERR CODE 1: Command line options for Eviscerator invalid (Planner Path) - Terminating Evisceration";
        return {false, {"",""}};
    }
    if (checkCommandStringIsValid(result["command"].as<std::string>())) {
        return {true, {result["planner"].as<std::string>(), result["command"].as<std::string>()}};
    } else {
        std::cout << "ERR CODE 1: Command line options for Eviscerator invalid (Command String Format) - Terminating Evisceration";
        return {false, {"", ""}};
    }
}

int main(int argc, char * argv[]) {
    auto cmdResult = getParameters(argc, argv);
    if (!cmdResult.first) {
        return 1;
    }
    std::string planner = cmdResult.second.first;
    std::string command = cmdResult.second.second;

    TestResults evisceratorResults;
    if (!existential::testPlannerExistence(planner, evisceratorResults))
        return 1;
    existential::testHowPlannerHandlesNonExistentProblem(planner, command, evisceratorResults);
}