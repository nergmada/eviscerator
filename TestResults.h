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
        pddl22TimedInitialLiterals
    };

private:
    boost::filesystem::path appDirectory;

    bool doesPlannerExists;

    std::map<test, bool> conducted;
    std::map<test, int> exitCodes;

public:
    TestResults() {};


    void addTestResult(test t, int exitCode) {
        if (!conducted[t]) {
            conducted[t] = true;
            exitCodes[t] = exitCode;
            if (t == test::plannerExists) {
                doesPlannerExists = true;
            }
        }
    }

    std::pair<bool, int> getTestResult(test t) {
        return {conducted[t], exitCodes[t]};
    }
};


#endif //EVISCERATOR_TESTRESULTS_H
