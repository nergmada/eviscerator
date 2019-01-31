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


bool pddl12::runCritical(TestResults &results) {
    return testStrips(results);
}

void pddl12::runNonCritical(TestResults &results) {
    testTyping(results);
    testDisjunctivePreconditions(results);
    testEquality(results);
    testExistentialPreconditions(results);
    testUniversalPreconditions(results);
    testConditionalEffects(results);
    testDomainAxioms(results);
    testSubgoalsThroughAxioms(results);
    testSafetyConstraints(results);
    testExpressionEvaluation(results);
    testOpenWorld(results);
    checkQuantifiedPreconditionsSupport(results);
    checkADLSupport(results);
    checkUCPOPSupport(results);

}

bool pddl12::testStrips(TestResults & results) {
    return conductTest("strips", "STRIPS", TestResults::pddl12Strips, results, 1);
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
    int desiredCode = results.getPassCode();
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
        results.addTestResult(TestResults::pddl12QuantifiedPreconditions, desiredCode, TestResults::passed);
    } else {
        if (cannotConductFullTest) {
            std::cout << std::endl << "INCOMPLETE: Eviscerator could not confirm if Quantified Preconditions are supported because some pre-req tests have not been finished";
        } else {
            std::cout << std::endl << "FAILED: Quantified Preconditions are not supported";
            results.addTestResult(TestResults::pddl12QuantifiedPreconditions, exitCode, TestResults::failed);
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
        results.addTestResult(TestResults::pddl12ADL, desiredCode, TestResults::passed);
    } else {
        if (cannotConductFullTest) {
            std::cout << std::endl << "INCOMPLETE: Eviscerator could not confirm if ADL is supported because some pre-req tests have not been finished";
        } else {
            std::cout << std::endl << "FAILED: ADL is not supported";
            results.addTestResult(TestResults::pddl12ADL, exitCode, TestResults::failed);
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
        results.addTestResult(TestResults::pddl12UCPOP, desiredCode, TestResults::passed);
    } else {
        if (cannotConductFullTest) {
            std::cout << std::endl << "INCOMPLETE: Eviscerator could not confirm if UCPOP is supported because some pre-req tests have not been finished";
        } else {
            std::cout << std::endl << "FAILED: UCPOP is not supported";
            results.addTestResult(TestResults::pddl12UCPOP, exitCode, TestResults::failed);
        }
    }
}

