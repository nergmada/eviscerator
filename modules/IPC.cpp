//
// Created by adamgreen on 04/02/19.
//

#include "IPC.h"
#include <boost/process.hpp>
#include <boost/regex.hpp>

#include "../utilities/functions.cpp"

namespace bp = boost::process;
namespace bfs = boost::filesystem;

void IPC::execute(IPCInstance & instance) {
    auto execution = utilities::buildExecutionString(planner, command, appPath.string() + instance.getDomainPath(), appPath.string() + instance.getInstancePath());
}

IPC::IPC(std::string &p, std::string &c, boost::filesystem::path &appDir) : planner(p), command(c), appPath(appDir) {
    //Create directory iterator for years directory
    bfs::directory_iterator yearDir{bfs::path{appPath.string() + "/pddl/ipc"}};
    //while iterator not null
    while (yearDir != bfs::directory_iterator{}) {
        //if the folder is a directory
        if (bfs::is_directory(yearDir->path())) {
            //get the year name
            std::string year = yearDir->path().leaf().string();
            //create a vector for all the problems that exist in this year
            problems.emplace(year, std::vector<std::string>());
            //iterator through the problem folders
            bfs::directory_iterator problemDir{yearDir->path()};
            //white there is still a folder to explore
            while (problemDir != bfs::directory_iterator{}) {
                //check if there exists and instances folder inside it
                if (bfs::exists(bfs::path{problemDir->path().string() + "/instances"}) && bfs::exists(bfs::path{problemDir->path().string() + "/domain.pddl"})) {
                    //add the name of the problem to this list of problems for this year
                    problems[year].emplace_back(problemDir->path().leaf().string());
                    //create an instances iterator
                    bfs::directory_iterator instancesDir{bfs::path{problemDir->path().string() + "/instances"}};
                    //keep a count of how many instances exist in this folder
                    int count = 1;
                    while (instancesDir != bfs::directory_iterator{}) {
                        instances.emplace_back(IPCInstance(year, problemDir->path().leaf().string(), count));
                        count++;
                        instancesDir++;
                    }
                }
                ++problemDir;
            }
        }
        ++yearDir;
    }
    std::cout << "Loaded IPC problems";
}



bool IPC::doesPlannerSupportProblem(IPC::IPCInstance &instance, TestResults &results) {
    std::string domain = utilities::getStringOutput(std::ifstream(appPath.string() + instance.getDomainPath()));
    boost::basic_regex<char> reqsRegex("\\(:requirements.+?\\)");
    boost::match_results<std::string::const_iterator> result;
    boost::regex_search(domain, result, reqsRegex);
    std::vector<std::string> requirements;

    boost::basic_regex<char> reqRegex("(:[\\w\\-]+)");
    std::string output = result[0];

    boost::sregex_iterator res(output.begin(), output.end(), reqRegex);
    boost::sregex_iterator end;

    for (; res != end; ++res) {
        if ((*res)[0] != ":requirements") {
            if (results.getIfFeatureSupported((*res)[0]) == TestResults::failed) {
                return false;
            }
        }
    }
    return true;
}

void IPC::testPlannerSupport(TestResults &results) {
    for (auto inst : instances) {
        doesPlannerSupportProblem(inst, results);
    }
}