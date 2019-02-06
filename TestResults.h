//
// Created by adamgreen on 18/01/19.
//

#ifndef EVISCERATOR_TESTRESULTS_H
#define EVISCERATOR_TESTRESULTS_H

#include <map>
#include <boost/filesystem.hpp>
#include <iostream>


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

    status getIfFeatureSupported(std::string f) {
        if (f == ":strips") return plannerResult[pddl12Strips];
        else if (f == ":typing") return plannerResult[pddl12Typing];
        else if (f == ":disjunctive-preconditions") return plannerResult[pddl12DisjunctivePreconditions];
        else if (f == ":equality") return plannerResult[pddl12Equality];
        else if (f == ":existential-preconditions") return plannerResult[pddl12ExistentialPreconditions];
        else if (f == ":universal-preconditions") return plannerResult[pddl12UniversalPreconditions];
        else if (f == ":conditional-effects") return plannerResult[pddl12ConditionalEffects];
        else if (f == ":domain-axioms") return plannerResult[pddl12DomainAxioms];
        else if (f == ":subgoals-through-axioms") return plannerResult[pddl12SubgoalsThroughAxioms];
        else if (f == ":safety-constraints") return plannerResult[pddl12SafetyConstraints];
        else if (f == ":open-world") return plannerResult[pddl12OpenWorld];
        else if (f == ":quantified-preconditions") return plannerResult[pddl12QuantifiedPreconditions];
        else if (f == ":adl") return plannerResult[pddl12ADL];
        else if (f == ":ucpop") return plannerResult[pddl12UCPOP];
        else if (f == ":numeric-fluents") return plannerResult[pddl21NumericFluents];
        else if (f == ":fluents") {
            std::cout << "Warning: assuming :fluents means :numeric-fluents" << std::endl;
            return plannerResult[pddl21NumericFluents];
        }
        else if (f == ":durative-actions") return plannerResult[pddl21DurativeActions];
        else if (f == ":durative-inequalities") return plannerResult[pddl21DurativeInequalities];
        else if (f == ":continuous-effects") return plannerResult[pddl21ContinuousEffects];
        else if (f == ":negative-preconditions") return plannerResult[pddl21NegativePreconditions];
        else if (f == ":derived-predicates") return plannerResult[pddl22DerivedPredicates];
        else if (f == ":timed-initial-literals") return plannerResult[pddl22TimedInitialLiterals];
        else if (f == ":constraints") return plannerResult[pddl3Constraints];
        else if (f == ":preferences") return plannerResult[pddl3Preferences];
        else if (f == ":action-costs") return plannerResult[pddl3ActionCosts];
        else if (f == ":goal-utilities") return plannerResult[pddl3GoalUtilities];
        else if (f == ":time") return plannerResult[pddlplusTime];
        else {
            std::cout << "Warning: Unrecognised requirement - " << f << " failing" << std::endl;
            return failed;
        }
    }

    int getPassCode() {
        return passCode;
    }
};


#endif //EVISCERATOR_TESTRESULTS_H
