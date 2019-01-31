#include <iostream>
#include <string>
#include <boost/regex.hpp>
#include <boost/filesystem.hpp>

#include "cxxopts.hpp"

#include "utilities/Executor.h"
#include "modules/existential.h"
#include "modules/pddl12.h"
#include "TestResults.h"
#include "modules/pddl21.h"
#include "modules/pddl22.h"
#include "modules/pddl3.h"
#include "modules/pddlplus.h"
#include "modules/PlannerQualities.h"

namespace bfs = boost::filesystem;

struct evisceratorConfig {
    bool configFound;
    std::string planner;
    std::string command;
    std::string planRegex;
};

bool checkCommandStringIsValid(std::string command) {
    boost::basic_regex<char> domainRegex("\\[DOMAIN\\]");
    boost::basic_regex<char> problemRegex("\\[PROBLEM\\]");
    return boost::regex_search(command, domainRegex) && boost::regex_search(command, problemRegex);
}

evisceratorConfig getParameters(int argc, char * argv[]) {
    cxxopts::Options cmd("Eviscerator", "A tool for getting into the guts of a planner");
    cmd.add_options()
            ("p,planner", "path to the planner to test", cxxopts::value<std::string>())
            ("c,command", "The command to execute in order to use the planner", cxxopts::value<std::string>()->default_value("[DOMAIN] [PROBLEM]"))
            ("o,output", "A regular expression defining how the plan output is given", cxxopts::value<std::string>()->default_value("(\\d): (\\((?:action\\d+(?:\\sobj\\d+)*)\\))"));
    cmd.parse_positional({"planner", "command"});
    auto result = cmd.parse(argc, argv);

    evisceratorConfig config;
    config.configFound = true;

    if (result.count("planner") > 0) {
        config.planner = result["planner"].as<std::string>();
    } else {
        std::cout << "ERR CODE 1: Command line options for Eviscerator invalid (Planner Path) - Terminating Evisceration";
        config.configFound = false;
        return config;
    }
    if (checkCommandStringIsValid(result["command"].as<std::string>())) {
        config.command = result["command"].as<std::string>();
    } else {
        std::cout << "ERR CODE 1: Command line options for Eviscerator invalid (Command String Format) - Terminating Evisceration";
        config.configFound = false;
        return config;
    }

    config.planRegex = result["output"].as<std::string>();

    return config;
}

int main(int argc, char * argv[]) {
    TestResults evisceratorResults;
    auto config = getParameters(argc, argv);

    if (!config.configFound) {
        return 1;
    }

    Executor executor(config.planner, config.command, bfs::path(argv[0]).remove_filename());

    std::cout << "---[[Testing basic features]]---";

    if (!existential::testPlannerExistence(executor, evisceratorResults)) {
        std::cout << "ERR CODE 2: Could not find planner on path provided - Terminating Evisceration";
        return 2;
    }
    existential::testHowPlannerHandlesNonExistentDomainAndProblem(executor, evisceratorResults);
    existential::testHowPlannerHandlesNonExistentProblem(executor, evisceratorResults);
    existential::testHowPlannerHandlesNonExistentDomain(executor, evisceratorResults);

    std::cout << std::endl << "---[[Testing Support for PDDL1.2]]---" << std::endl << std::endl;

    pddl12 pddl12Tester(executor, config.planRegex);

    if (!pddl12Tester.runCritical(evisceratorResults)) {
        std::cout << "ERR CODE 3: Could not successfully find plan in output - Terminating Evisceration";
        return 3;
    }

    pddl12Tester.runNonCritical(evisceratorResults);

    std::cout << std::endl << std::endl << "---[[Testing Support for PDDL2.1]]---" << std::endl << std::endl;

    pddl21 pddl21Tester(executor, config.planRegex);

    pddl21Tester.runNonCritical(evisceratorResults);

    std::cout << std::endl << std::endl << "---[[Testing Support for PDDL2.2]]---" << std::endl << std::endl;

    pddl22 pddl22Tester(executor, config.planRegex);

    pddl22Tester.runNonCritical(evisceratorResults);

    std::cout << std::endl << std::endl << "---[[Testing Support for PDDL3]]---" << std::endl << std::endl;

    pddl3 pddl3Tester(executor, config.planRegex);

    pddl3Tester.runNonCritical(evisceratorResults);

    std::cout << std::endl << std::endl << "---[[Testing Support for PDDL Plus]]---" << std::endl << std::endl;

    pddlplus pddlplusTester(executor, config.planRegex);

    pddlplusTester.runNonCritical(evisceratorResults);

    std::cout << std::endl << std::endl << "---[[Testing other qualities of the planner]]---" << std::endl << std::endl;

    PlannerQualities plannerTester(executor, config.planRegex);

    plannerTester.runNonCritical(evisceratorResults);
}