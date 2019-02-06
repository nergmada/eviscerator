//
// Created by adamgreen on 30/01/19.
//

#include "pddl3.h"

#include <boost/process.hpp>
#include <boost/timer/timer.hpp>

#include "../utilities/functions.cpp"
#include "../utilities/Executor.h"
#include "../utilities/Ellipsis.h"

namespace bp = boost::process;
namespace bt = boost::timer;

void pddl3::testConstraints(TestResults &results) {
    conductTest("constraints", "Constraints", TestResults::pddl3Constraints, results, 3);
}

void pddl3::testPreferences(TestResults &results) {
    conductTest("preferences", "Preferences", TestResults::pddl3Preferences, results, 3);
}

bool pddl3::runCritical(TestResults &results) {
    return true;
}

void pddl3::runNonCritical(TestResults &results) {
    testConstraints(results);
    testPreferences(results);
    testActionCosts(results);
    testGoalUtilities(results);
}

void pddl3::testActionCosts(TestResults &results) {
    conductTest("action-costs", "Action Costs", TestResults::pddl3ActionCosts, results, 1);
}

void pddl3::testGoalUtilities(TestResults &results) {
    conductTest("goal-utilities", "Goal Utilities", TestResults::pddl3GoalUtilities, results, 1);
}
