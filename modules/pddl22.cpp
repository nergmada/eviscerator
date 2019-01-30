//
// Created by adamgreen on 28/01/19.
//

#include "pddl22.h"

#include <boost/process.hpp>
#include <boost/timer/timer.hpp>

#include "../utilities/functions.cpp"
#include "../utilities/Executor.h"
#include "../utilities/Ellipsis.h"

namespace bp = boost::process;
namespace bt = boost::timer;


void pddl22::testDerivedPredicates(TestResults &results) {
    conductTest("derived-predicates", "Derived Predicates", TestResults::pddl22DerivedPredicates, results, 2);
}

void pddl22::testTimedInitialLiterals(TestResults &results) {
    conductTest("timed-initial-literals", "Timed Initial Literals", TestResults::pddl22TimedInitialLiterals, results, 1);
}

bool pddl22::runCritical(TestResults &results) {
    return true;
}

void pddl22::runNonCritical(TestResults &results) {
    testDerivedPredicates(results);
    testTimedInitialLiterals(results);
}
