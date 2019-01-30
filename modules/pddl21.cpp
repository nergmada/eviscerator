//
// Created by adamgreen on 24/01/19.
//

#include "pddl21.h"

#include <boost/process.hpp>
#include <boost/timer/timer.hpp>

#include "../utilities/functions.cpp"
#include "../utilities/Executor.h"
#include "../utilities/Ellipsis.h"

namespace bp = boost::process;
namespace bt = boost::timer;


void pddl21::testNumericFluents(TestResults &results) {
    conductTest("numeric-fluents", "Numeric Fluents", TestResults::pddl21NumericFluents, results, 1);
}

void pddl21::testDurativeActions(TestResults &results) {
    conductTest("durative-actions", "Durative Actions", TestResults::pddl21DurativeActions, results, 1);
}

void pddl21::testDurativeInequalities(TestResults &results) {
    conductTest("durative-inequalities", "Durative Inequalities", TestResults::pddl21DurativeInequalities, results, 1);
}

void pddl21::testContinuousEffects(TestResults &results) {
    conductTest("continuous-effects", "Continuous Effects", TestResults::pddl21ContinuousEffects, results, 1);
}

void pddl21::testNegativePreconditions(TestResults &results) {
    conductTest("negative-preconditions", "Negative Preconditions", TestResults::pddl21NegativePreconditions, results, 1);
}

void pddl21::testDurativeInequalitiesWithoutRequirement(TestResults &results) {
    conductTest("durative-inequalities-wr", "Durative Inequalities Without Requirement", TestResults::pddl21DurativeInequalitiesWithoutRequirement, results, 1);
}

bool pddl21::runCritical(TestResults &results) {
    return true;
}

void pddl21::runNonCritical(TestResults &results) {
    testNumericFluents(results);
    testDurativeActions(results);
    testDurativeInequalities(results);
    testDurativeInequalitiesWithoutRequirement(results);
    testContinuousEffects(results);
    testNegativePreconditions(results);
}

