//
// Created by adamgreen on 21/01/19.
//

#ifndef EVISCERATOR_PDDL12_H
#define EVISCERATOR_PDDL12_H


#include <string>

#include "TestSuite.h"


class pddl12 : TestSuite {
private:
    std::string buildDomainName(const std::string & feature) override {
        return "/pddl/pddl12/domain-" + feature + ".pddl";
    }

    std::string buildProblemName(const std::string & feature) override {
        return "/pddl/pddl12/problem-" + feature + ".pddl";
    }

    bool testStrips(TestResults & results);
    void testTyping(TestResults & results);
    void testDisjunctivePreconditions(TestResults & results);
    void testEquality(TestResults & results);
    void testExistentialPreconditions(TestResults & results);
    void testUniversalPreconditions(TestResults & results);
    void testConditionalEffects(TestResults & results);
    void testActionExpansions(TestResults & results);
    void testForeachExpansions(TestResults & results);
    void testDAGExpansions(TestResults & results);
    void testDomainAxioms(TestResults & results);
    void testSubgoalsThroughAxioms(TestResults & results);
    void testSafetyConstraints(TestResults & results);
    void testExpressionEvaluation(TestResults & results);
    void testFluents(TestResults & results);
    void testOpenWorld(TestResults & results);
    void testTrueNegation(TestResults & results);

    void checkQuantifiedPreconditionsSupport(TestResults & results);
    void checkADLSupport(TestResults & results);
    void checkUCPOPSupport(TestResults & results);
public:
    pddl12(Executor & e, std::string & pr) : TestSuite(e, pr) { };
    bool runCritical(TestResults &results) override;
    void runNonCritical(TestResults &results) override;


};


#endif //EVISCERATOR_PDDL12_H
