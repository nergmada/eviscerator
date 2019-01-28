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
public:
    explicit pddl12(Executor & e) : executor(e) {};
    static bool testStrips(Executor & executor, std::string & planRegex, TestResults & results);
    static void testTyping(Executor & executor, std::string & planRegex, TestResults & results);
    static void testDisjunctivePreconditions(Executor & executor, std::string & planRegex, TestResults & results);
    static void testEquality(Executor & executor, std::string & planRegex, TestResults & results);
    static void testExistentialPreconditions(Executor & executor, std::string & planRegex, TestResults & results);
    static void testUniversalPreconditions(Executor & executor, std::string & planRegex, TestResults & results);
    static void testConditionalEffects(Executor & executor, std::string & planRegex, TestResults & results);
    static void testActionExpansions(Executor & executor, std::string & planRegex, TestResults & results);
    static void testForeachExpansions(Executor & executor, std::string & planRegex, TestResults & results);
    static void testDAGExpansions(Executor & executor, std::string & planRegex, TestResults & results);
    static void testDomainAxioms(Executor & executor, std::string & planRegex, TestResults & results);
    static void testSubgoalsThroughAxioms(Executor & executor, std::string & planRegex, TestResults & results);
    static void testSafetyConstraints(Executor & executor, std::string & planRegex, TestResults & results);
    static void testExpressionEvaluation(Executor & executor, std::string & planRegex, TestResults & results);
    static void testFluents(Executor & executor, std::string & planRegex, TestResults & results);
    static void testOpenWorld(Executor & executor, std::string & planRegex, TestResults & results);
    static void testTrueNegation(Executor & executor, std::string & planRegex, TestResults & results);

    static void checkQuantifiedPreconditionsSupport(TestResults & results);
    static void checkADLSupport(TestResults & results);
    static void checkUCPOPSupport(TestResults & results);

};


#endif //EVISCERATOR_PDDL12_H
