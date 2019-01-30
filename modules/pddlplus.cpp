//
// Created by adamgreen on 30/01/19.
//

#include "pddlplus.h"

#include <boost/process.hpp>
#include <boost/timer/timer.hpp>

#include "../utilities/functions.cpp"
#include "../utilities/Executor.h"
#include "../utilities/Ellipsis.h"

namespace bp = boost::process;
namespace bt = boost::timer;

void pddlplus::testTime(TestResults &results) {
    conductTest("time", "Processes + Events", TestResults::pddlplusTime, results, 1);
}

bool pddlplus::runCritical(TestResults &results) {
    return true;
}

void pddlplus::runNonCritical(TestResults &results) {
    testTime(results);
}


