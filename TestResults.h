//
// Created by adamgreen on 18/01/19.
//

#ifndef EVISCERATOR_TESTRESULTS_H
#define EVISCERATOR_TESTRESULTS_H

#include <map>
#include <boost/filesystem.hpp>


class TestResults {
public:
    enum test {
        plannerExists,
        noDomainProblem,
        noProblem,
        noDomain,
        pddl12Strips,
        pddl12Typing,
        pddl12DisjunctivePreconditions,
        pddl12Equality,
        pddl12ExistentialPreconditions,
        pddl12UniversalPreconditions,
        pddl12ConditionalEffects,
        pddl12DomainAxioms,
        pddl12SubgoalsThroughAxioms,
        pddl12SafetyConstraints,
        pddl12ExpressionEvaluation,
        pddl12OpenWorld,
        pddl12QuantifiedPreconditions,
        pddl12ADL,
        pddl12UCPOP,
        pddl21NumericFluents,
        pddl21DurativeActions,
        pddl21DurativeInequalities,
        pddl21DurativeInequalitiesWithoutRequirement,
        pddl21ContinuousEffects,
        pddl21NegativePreconditions,
        pddl22DerivedPredicates,
        pddl22TimedInitialLiterals,
        pddl3Constraints,
        pddl3Preferences,
        pddl3ActionCosts,
        pddl3GoalUtilities,
        pddlplusTime,
        plannerDeterminstic
    };
    enum status {
        passed,
        failed,
        maybe
    };

private:
    boost::filesystem::path appDirectory;

    bool doesPlannerExists;

    int passCode = -1;

    std::map<test, bool> conducted;
    std::map<test, int> exitCodes;
    std::map<test, status> plannerResult;

public:
    TestResults() {};


    void addTestResult(test t, int exitCode, status s) {
        if (!conducted[t]) {
            conducted[t] = true;
            exitCodes[t] = exitCode;
            plannerResult[t] = s;
            if (t == test::plannerExists) {
                doesPlannerExists = true;
            }
            if (t == test::pddl12Strips && s == passed) {
                passCode = exitCode;
            }
        }
    }

    std::pair<bool, int> getTestResult(test t) {
        return {conducted[t], exitCodes[t]};
    }

    status getIfFeatureSupported(test t) {
        return plannerResult[t];
    }

    int getPassCode() {
        return passCode;
    }
};


#endif //EVISCERATOR_TESTRESULTS_H
