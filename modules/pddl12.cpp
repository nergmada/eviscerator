//
// Created by adamgreen on 24/01/19.
//

#include "pddl12.h"

#include <boost/process.hpp>
#include <boost/timer/timer.hpp>

#include "../utilities/functions.cpp"
#include "../utilities/Executor.h"
#include "../utilities/Ellipsis.h"

namespace bp = boost::process;
namespace bt = boost::timer;

std::string buildDomainName(const std::string & feature) {
    return "/pddl/pddl12/domain-" + feature + ".pddl";
}

std::string buildProblemName(const std::string & feature) {
    return "/pddl/pddl12/problem-" + feature + ".pddl";
}

void pddl12::conductTest(std::string feature, std::string stylisedName, TestResults::test t, TestResults & results, int planSize) {
    bp::ipstream out;
    auto execResult = executor.execute(std::string("Testing how planner handles a STRIPS + ") + stylisedName + " problem", buildDomainName(feature), buildProblemName(feature), out);
    if (execResult == -1) {
        std::cout << "FAILED: Planner failed to run properly..." << std::endl;
    }
    std::cout << "Exit code when given STRIPS + " << stylisedName << " problem: " << execResult << std::endl;
    results.addTestResult(t, execResult);

    auto plan = utilities::extractPlan(utilities::getStringOutput(out), planRegex);
    if (!plan.empty()) {
        std::cout << "PASSED: Plan identified in output successfully" << std::endl;
        if (plan.size() != planSize) {
            std::cout << "Warning: Plan is not the expected length! Printing plan: " << std::endl;
            utilities::printPlan(plan, buildDomainName(feature), buildProblemName(feature));
        }
    } else {
        std::cout << "Failed to identify plan... Comparing exit code" << std::endl;
        if (results.getTestResult(TestResults::test::pddl12Strips).second == execResult) {
            std::cout << "MAYBE PASSED: Exit code corresponds to successful planning exit code, assuming success..." << std::endl;
        } else {
            std::cout << "FAILED: Exit code does not correspond, could not plan a " << stylisedName << " problem" << std::endl;
            std::cout << "Command: " << executor.generateCommand(buildDomainName(feature), buildProblemName(feature)) << std::endl;
        }
    }
}

bool pddl12::testStrips(TestResults & results) {
    auto feature = "strips";
    auto stylisedName = "STRIPS";
    bp::ipstream out;
    auto execResult = executor.execute(std::string("Testing how planner handles a ") + stylisedName + " problem", buildDomainName(feature), buildProblemName(feature), out);
    if (execResult == -1) {
        std::cout << "FAILED: Planner failed to run properly..." << std::endl;
    }
    std::cout << "Exit code when given simple solvable " << stylisedName << " problem: " << execResult << std::endl;
    results.addTestResult(TestResults::test::pddl12Strips, execResult);

    auto plan = utilities::extractPlan(utilities::getStringOutput(out), planRegex);
    if (!plan.empty()) {
        std::cout << "PASSED: Plan identified in output successfully" << std::endl;
        if (plan.size() != 1) {
            std::cout << "Warning: Plan is not the expected length! Printing plan: " << std::endl;
            utilities::printPlan(plan, buildProblemName(feature), buildProblemName(feature));
        }
    } else {
        std::cout << "Failed to identify plan... Ending Evisceration" << std::endl;
        std::cout << "More info: We use a simple solvable " << stylisedName << " problem to allow eviscerator to check that it understands how the planner outputs a plan" << std::endl;
        std::cout << "if we can't identify the plan in the output, then we cannot check that a problem has actually been solved and so may pass planners that should fail" << std::endl;
        return false;
    }
    return true;
}

void pddl12::testTyping(TestResults & results) {
    conductTest("typing", "Typing", TestResults::test::pddl12Typing, results, 1);
}

void pddl12::testDisjunctivePreconditions(TestResults & results) {
    conductTest("disjunctive-preconditions", "Disjunctive Preconditions", TestResults::test::pddl12DisjunctivePreconditions, results, 1);
}

void pddl12::testEquality(TestResults & results) {
    conductTest("equality", "Equality", TestResults::test::pddl12Equality, results, 1);
}

void pddl12::testExistentialPreconditions(TestResults & results) {
    conductTest("existential-preconditions", "Existential Preconditions", TestResults::pddl12ExistentialPreconditions, results, 1);
}

void pddl12::testUniversalPreconditions(TestResults & results) {
    conductTest("universal-preconditions", "Universal Preconditions", TestResults::pddl12UniversalPreconditions, results, 1);
}

void pddl12::testConditionalEffects(TestResults & results) {
    conductTest("conditional-effects", "Conditional Effects", TestResults::pddl12ConditionalEffects, results, 2);
}

void pddl12::testDomainAxioms(TestResults &results) {
    conductTest("domain-axioms", "Domain Axioms", TestResults::pddl12DomainAxioms, results, 2);
}

void pddl12::testSubgoalsThroughAxioms(TestResults &results) {
    conductTest("subgoals-through-axioms", "Subgoals Through Axioms", TestResults::pddl12SubgoalsThroughAxioms, results, 2);
}

void pddl12::testSafetyConstraints(TestResults &results) {
    conductTest("safety-constraints", "Safety Constraints", TestResults::pddl12SafetyConstraints, results, 3);
}

void pddl12::testExpressionEvaluation(TestResults &results) {
    conductTest("expression-evaluation", "Expression Evaluation", TestResults::pddl12ExpressionEvaluation, results, 0);
}

void pddl12::testOpenWorld(TestResults &results) {
    conductTest("open-world", "Open World", TestResults::pddl12OpenWorld, results, 1);
}

void pddl12::checkQuantifiedPreconditionsSupport(TestResults &results) {
    int desiredCode = results.getTestResult(TestResults::pddl12Strips).second;
    std::cout << std::endl << "Testing super Requirement - Quantified Preconditions";

    bool passed = true;
    bool cannotConductFullTest = false;
    int exitCode = desiredCode;
    {
        std::cout << std::endl << "\t- Existential Preconditions supported: ";
        auto cond = results.getTestResult(TestResults::pddl12ExistentialPreconditions);
        if (cond.first) {
            if (cond.second == desiredCode) {
                std::cout << "TRUE";
            } else {
                std::cout << "FALSE";
                exitCode = cond.second;
                passed = false;
            }
        } else {
            std::cout << "PRE-REQUISITE TEST NOT COMPLETED";
            cannotConductFullTest = true;
            passed = false;
        }
    }

    {
        std::cout << std::endl << "\t- Universal Preconditions supported: ";
        auto cond = results.getTestResult(TestResults::pddl12UniversalPreconditions);
        if (cond.first) {
            if (cond.second == desiredCode) {
                std::cout << "TRUE";
            } else {
                std::cout << "FALSE";
                exitCode = cond.second;
                passed = false;
            }
        } else {
            std::cout << "PRE-REQUISITE TEST NOT COMPLETED";
            cannotConductFullTest = true;
            passed = false;
        }
    }

    if (passed) {
        std::cout << std::endl << "PASSED: Planner supports quantified preconditions (super requirement)" << std::endl << std::endl;
        results.addTestResult(TestResults::pddl12QuantifiedPreconditions, desiredCode);
    } else {
        if (cannotConductFullTest) {
            std::cout << std::endl << "INCOMPLETE: Eviscerator could not confirm if Quantified Preconditions are supported because some pre-req tests have not been finished";
        } else {
            std::cout << std::endl << "FAILED: Quantified Preconditions are not supported";
            results.addTestResult(TestResults::pddl12QuantifiedPreconditions, exitCode);
        }
    }
}

void pddl12::checkADLSupport(TestResults &results) {
    int desiredCode = results.getTestResult(TestResults::pddl12Strips).second;
    std::cout << std::endl << "Testing super Requirement - ADL";

    bool passed = true;
    bool cannotConductFullTest = false;
    int exitCode = desiredCode;
    {
        std::cout << std::endl << "\t- STRIPS supported: ";
        auto cond = results.getTestResult(TestResults::pddl12Strips);
        if (cond.first) {
            if (cond.second == desiredCode) {
                std::cout << "TRUE";
            } else {
                std::cout << "FALSE";
                exitCode = cond.second;
                passed = false;
            }
        } else {
            std::cout << "PRE-REQUISITE TEST NOT COMPLETED";
            cannotConductFullTest = true;
            passed = false;
        }
    }
    {
        std::cout << std::endl << "\t- Typing supported: ";
        auto cond = results.getTestResult(TestResults::pddl12QuantifiedPreconditions);
        if (cond.first) {
            if (cond.second == desiredCode) {
                std::cout << "TRUE";
            } else {
                std::cout << "FALSE";
                exitCode = cond.second;
                passed = false;
            }
        } else {
            std::cout << "PRE-REQUISITE TEST NOT COMPLETED";
            cannotConductFullTest = true;
            passed = false;
        }
    }
    {
        std::cout << std::endl << "\t- Disjunctive Preconditions supported: ";
        auto cond = results.getTestResult(TestResults::pddl12DisjunctivePreconditions);
        if (cond.first) {
            if (cond.second == desiredCode) {
                std::cout << "TRUE";
            } else {
                std::cout << "FALSE";
                exitCode = cond.second;
                passed = false;
            }
        } else {
            std::cout << "PRE-REQUISITE TEST NOT COMPLETED";
            cannotConductFullTest = true;
            passed = false;
        }
    }
    {
        std::cout << std::endl << "\t- Equality supported: ";
        auto cond = results.getTestResult(TestResults::pddl12Equality);
        if (cond.first) {
            if (cond.second == desiredCode) {
                std::cout << "TRUE";
            } else {
                std::cout << "FALSE";
                exitCode = cond.second;
                passed = false;
            }
        } else {
            std::cout << "PRE-REQUISITE TEST NOT COMPLETED";
            cannotConductFullTest = true;
            passed = false;
        }
    }
    {
        std::cout << std::endl << "\t- Quantified Preconditions supported: ";
        auto cond = results.getTestResult(TestResults::pddl12QuantifiedPreconditions);
        if (cond.first) {
            if (cond.second == desiredCode) {
                std::cout << "TRUE";
            } else {
                std::cout << "FALSE";
                exitCode = cond.second;
                passed = false;
            }
        } else {
            std::cout << "PRE-REQUISITE TEST NOT COMPLETED";
            cannotConductFullTest = true;
            passed = false;
        }
    }
    {
        std::cout << std::endl << "\t- Conditional Effects supported: ";
        auto cond = results.getTestResult(TestResults::pddl12ConditionalEffects);
        if (cond.first) {
            if (cond.second == desiredCode) {
                std::cout << "TRUE";
            } else {
                std::cout << "FALSE";
                exitCode = cond.second;
                passed = false;
            }
        } else {
            std::cout << "PRE-REQUISITE TEST NOT COMPLETED";
            cannotConductFullTest = true;
            passed = false;
        }
    }

    if (passed) {
        std::cout << std::endl << "PASSED: Planner supports ADL (super requirement)" << std::endl << std::endl;
        results.addTestResult(TestResults::pddl12ADL, desiredCode);
    } else {
        if (cannotConductFullTest) {
            std::cout << std::endl << "INCOMPLETE: Eviscerator could not confirm if ADL is supported because some pre-req tests have not been finished";
        } else {
            std::cout << std::endl << "FAILED: ADL is not supported";
            results.addTestResult(TestResults::pddl12ADL, exitCode);
        }
    }
}

void pddl12::checkUCPOPSupport(TestResults &results) {
    int desiredCode = results.getTestResult(TestResults::pddl12Strips).second;
    std::cout << std::endl << "Testing super Requirement - UCPOP";

    bool passed = true;
    bool cannotConductFullTest = false;
    int exitCode = desiredCode;
    {
        std::cout << std::endl << "\t- ADL supported: ";
        auto cond = results.getTestResult(TestResults::pddl12ADL);
        if (cond.first) {
            if (cond.second == desiredCode) {
                std::cout << "TRUE";
            } else {
                std::cout << "FALSE";
                exitCode = cond.second;
                passed = false;
            }
        } else {
            std::cout << "PRE-REQUISITE TEST NOT COMPLETED";
            cannotConductFullTest = true;
            passed = false;
        }
    }
    {
        std::cout << std::endl << "\t- Domain Axioms supported: ";
        auto cond = results.getTestResult(TestResults::pddl12DomainAxioms);
        if (cond.first) {
            if (cond.second == desiredCode) {
                std::cout << "TRUE";
            } else {
                std::cout << "FALSE";
                exitCode = cond.second;
                passed = false;
            }
        } else {
            std::cout << "PRE-REQUISITE TEST NOT COMPLETED";
            cannotConductFullTest = true;
            passed = false;
        }
    }
    {
        std::cout << std::endl << "\t- Safety Constraints supported: ";
        auto cond = results.getTestResult(TestResults::pddl12SafetyConstraints);
        if (cond.first) {
            if (cond.second == desiredCode) {
                std::cout << "TRUE";
            } else {
                std::cout << "FALSE";
                exitCode = cond.second;
                passed = false;
            }
        } else {
            std::cout << "PRE-REQUISITE TEST NOT COMPLETED";
            cannotConductFullTest = true;
            passed = false;
        }
    }
    if (passed) {
        std::cout << std::endl << "PASSED: Planner supports UCPOP (super requirement)" << std::endl << std::endl;
        results.addTestResult(TestResults::pddl12UCPOP, desiredCode);
    } else {
        if (cannotConductFullTest) {
            std::cout << std::endl << "INCOMPLETE: Eviscerator could not confirm if UCPOP is supported because some pre-req tests have not been finished";
        } else {
            std::cout << std::endl << "FAILED: UCPOP is not supported";
            results.addTestResult(TestResults::pddl12UCPOP, exitCode);
        }
    }
}

