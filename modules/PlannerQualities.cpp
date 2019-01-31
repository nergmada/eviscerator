//
// Created by adamgreen on 31/01/19.
//

#include "PlannerQualities.h"

#include <iostream>
#include "boost/timer/timer.hpp"
#include "boost/process.hpp"

#include "../utilities/functions.cpp"

namespace bt = boost::timer;
namespace bp = boost::process;

void PlannerQualities::testDeterminism(TestResults &results) {
    if (results.getIfFeatureSupported(TestResults::pddl21NumericFluents) == TestResults::passed
            && results.getIfFeatureSupported(TestResults::pddl12Typing) == TestResults::passed) {
        Ellipsis e(1000000, "Testing if planner generates solutions deterministically");
        bt::cpu_timer timer;
        bp::ipstream out;
        timer.start();
        auto exitCode = executor.executeSilent(e, timer, buildDomainName("prime-factors"), buildProblemName("prime-factors"), out);
        if (exitCode != results.getPassCode()) {
            e.endEllipsis();
            std::cout << "ERROR: Couldn't run the domain and problem file on planner..." << std::endl;
            return;
        }
        auto plan = utilities::extractPlan(utilities::getStringOutput(out), planRegex);
        for (int i = 0; i < 10; ++i) {
            bp::ipstream otherOut;
            executor.executeSilent(e, timer, buildDomainName("prime-factors"), buildProblemName("prime-factors"), otherOut);
            auto altPlan = utilities::extractPlan(utilities::getStringOutput(otherOut), planRegex);
            if (plan.size() != altPlan.size()) {
                e.endEllipsis();
                std::cout << "ERROR: Something has gone critically wrong, aborting test" << std::endl;
                return;
            }
            auto main = plan.begin();
            auto alt = altPlan.begin();
            while (main != plan.end()) {
                if (main->action != alt->action) {
                    e.endEllipsis();
                    std::cout << "FAILED: Planner's search strategy is not deterministic, plans generated may not be same if repeated" << std::endl;
                    results.addTestResult(TestResults::plannerDeterminstic, exitCode, TestResults::failed);
                    return;
                }
                ++main;
                ++alt;
            }
        }
        timer.stop();
        e.endEllipsis();
        std::cout << "\t" << bt::format(timer.elapsed(), 3, "%w seconds taken") << std::endl;

        std::cout << "PASSED: Planner's search strategy is probably deterministic, plans generated will be same if repeated" << std::endl;
        results.addTestResult(TestResults::plannerDeterminstic, exitCode, TestResults::passed);

    } else {
        std::cout << "SKIPPED: Planner does not support numerics and/or typing, cannot conduct determinism test" << std::endl;
    }
}

bool PlannerQualities::runCritical(TestResults &results) {
    return true;
}

void PlannerQualities::runNonCritical(TestResults &results) {
    testDeterminism(results);
}
