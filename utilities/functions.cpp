//
// Created by adamgreen on 18/01/19.
//

#include <iostream>
#include <string>

#include "boost/process.hpp"
#include "boost/regex.hpp"


namespace bp = boost::process;
namespace bfs = boost::filesystem;
namespace utilities {
    static std::string buildExecutionString(
            const std::string & planner,
            const std::string & command,
            const std::string & domainPath,
            const std::string & problemPath) {

        boost::basic_regex<char> domainRegex("\\[DOMAIN\\]");
        boost::basic_regex<char> problemRegex("\\[PROBLEM\\]");
        std::string plannerCommand = boost::regex_replace(
                boost::regex_replace(command, domainRegex, domainPath), problemRegex, problemPath);
        return planner + " " + plannerCommand;
    }

    struct planStep {
        std::string action;
        double time;
    };

    static bool isDigit(std::string output) {
        return boost::regex_match(output, boost::basic_regex<char>("\\d+.?\\d*"));
    }

    static std::vector<planStep> extractPlan(std::string output, std::string & planStepR) {
        boost::basic_regex<char> planStepRegex(planStepR);

        boost::sregex_iterator res(output.begin(), output.end(), planStepRegex);
        boost::sregex_iterator end;

        std::vector<planStep> steps;
        for (; res != end; ++res) {
            planStep s;
            for (int i = 1; i < (*res).size(); ++i) {
                if (isDigit((*res)[i])) {
                    s.time = std::stod((*res)[i]);
                } else {
                    s.action = (*res)[i];
                }
            }
            steps.emplace_back(s);
        }
        return steps;
    }

    static void printPlan(std::vector<planStep> & plan, std::string domainLoc, std::string problemLoc) {
        std::cout << "Location of domain: " << domainLoc << std::endl;
        std::cout << "Location of problem: " << problemLoc << std::endl;
        std::cout << "-- PLAN --" << std::endl;
        for (const auto step : plan) {
            std::cout << step.action << " at time " << step.time << std::endl;
        }
    }

    static std::string getStringOutput(bp::ipstream & stream) {
        std::string result;
        std::string curLine;
        while (stream && std::getline(stream, curLine)) {
            result += curLine + '\n';
        }
        return result;
    }

    static std::string getStringOutput(std::ifstream stream) {
        std::string result;
        std::string curLine;
        while (stream && std::getline(stream, curLine)) {
            result += curLine + '\n';
        }
        return result;
    }
}