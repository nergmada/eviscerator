//
// Created by adamgreen on 21/01/19.
//

#ifndef EVISCERATOR_PDDL12_H
#define EVISCERATOR_PDDL12_H


#include <string>

#include "../TestResults.h"
#include "../utilities/Executor.h"


class pddl12 {
private:
    Executor & executor;
    std::string & planRegex;
    void conductTest(std::string feature, std::string stylisedName, TestResults::test t, TestResults & results, int planSize);
    std::string buildDomainName(const std::string & feature) {
        return "/pddl/pddl12/domain-" + feature + ".pddl";
    }

    std::string buildProblemName(const std::string & feature) {
        return "/pddl/pddl12/problem-" + feature + ".pddl";
    }
public:
    pddl12(Executor & e, std::string & pr) : executor(e), planRegex(pr) {};
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

};


#endif //EVISCERATOR_PDDL12_H
