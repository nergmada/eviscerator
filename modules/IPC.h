//
// Created by adamgreen on 04/02/19.
//

#ifndef EVISCERATOR_IPC_H
#define EVISCERATOR_IPC_H


#include "../TestResults.h"
#include "../utilities/Ellipsis.h"

class IPC {
private:
    std::string planner;
    std::string command;
    boost::filesystem::path appPath;

    struct IPCInstance {
        IPCInstance(std::string y, std::string p, int i) : year(std::move(y)), problem(std::move(p)), instance(i) {};
        std::string year;
        std::string problem;
        int instance;
        double time = 0;
        double memoryUsage = 0;
        std::string getDomainPath() { return "/pddl/ipc/" + year + "/" + problem + "/domain.pddl"; }
        std::string getInstancePath() { return "/pddl/ipc/" + year + "/" + problem + "/instances/instance-" + std::to_string(instance) + ".pddl"; }
    };

    std::vector<IPCInstance> instances;
    std::map<std::string, std::vector<std::string>> problems;

    void execute(IPCInstance & instance, TestResults & results, Ellipsis & ellipsis);
public:
    IPC(std::string & p, std::string & c, boost::filesystem::path &appDir);

    void testPlannerSupport(TestResults & results, std::string year = "all");

    bool doesPlannerSupportProblem(IPCInstance & instance, TestResults & results);
};


#endif //EVISCERATOR_IPC_H
