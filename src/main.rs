extern crate clap;
mod execution;
mod plan;
mod core;
mod pddl12;
mod pddl21;
mod pddl22;
mod pddl3;
mod pddl31;
mod pddlplus;

use std::path::Path;

use crate::core::*;
use crate::pddl12::*;
use crate::pddl21::*;
use crate::execution::Executor;
use crate::core::TestResult::{Passed, Failed};
use crate::pddl22::{test_derived_predicates, test_timed_initial_literals};
use crate::pddl3::{test_preferences, test_constraints};
use crate::pddl31::{test_action_costs, test_goal_utilities};
use crate::pddlplus::test_time;

fn main() {
    let matches = run_argument_parsing();

    let config = Config {
        planner_path: Path::new(matches.value_of("planner").expect("No planner path supplied")),
        command_string: matches.value_of("command").expect("No command string supplied"),
        plan_regex: matches.value_of("output").expect("No output regex supplied"),
        ipc_year: matches.value_of("year").expect("No IPC year supplied for testing"),
        run_ipc_tests: matches.value_of("year").expect("No IPC year supplied for testing") != "skip"
    };


    if !config.planner_path.exists() {
        println!("ERR CODE 1: The path for the planner doesn't exist, aborting");
        std::process::exit(1);
    }

    if !Path::new(&(std::env::current_exe().unwrap().parent().unwrap().to_str().unwrap().to_owned() + "/pddl")).exists() {
        println!("ERR CODE 1: The path for PDDL test cases is missing, someone has copied this program incorrectly");
        std::process::exit(1);
    }

    let mut results = EvisceratorResults::default();
    let exe = Executor::new(
        config.planner_path.to_str().unwrap().to_owned(),
        config.command_string.to_owned());

    results = test_planners_existence(&exe, results);
    results = test_how_planner_handles_non_existent_domain(&exe, results);
    results = test_how_planner_handles_non_existent_problem(&exe, results);

    results = test_critical_features(&exe, results);

    if results.pddl12.strips != Passed {
        println!("A critical failure has occurred, the planner cannot plan a STRIPS Problem");
        println!("Attempting to recover by running a STRIPS + Typing Problem");
        results = attempt_recovery_from_strips_failure(&exe, results);
        if results.pddl12.strips == Passed && results.pddl12.typing == Passed {
            println!("Successfully recovered... Resuming testing");
        } else {
            println!("ERR CODE 3: Could not plan a STRIPS or STRIPS + Typing Problem");
            std::process::exit(3);
        }
    } else {
        results = test_typing(&exe, results);
    }

    println!("------[[[Testing PDDL 1.2 Features ]]]------");
    results = test_disjunctive_preconditions(&exe, results);
    results = test_equality(&exe, results);
    results = test_existential_preconditions(&exe, results);
    results = test_universal_preconditions(&exe, results);
    results = test_conditional_effects(&exe, results);
    results = test_domain_axioms(&exe, results);
    if results.pddl12.domain_axioms == Passed { results = test_subgoals_through_axioms(&exe, results); }
    else {
        println!("NOT TESTED: Cannot test Subgoals through Axioms because Domain axioms did not pass\n");
    }
    results = test_safety_constraints(&exe, results);
    results = test_open_world(&exe, results);
    if results.pddl12.existential_preconditions == Passed && results.pddl12.universal_preconditions == Passed {
        results.pddl12.quantified_preconditions = Passed;
        println!("PASSED: Quantified Preconditions passed because:");
        println!("\t- PASSED: Existential Preconditions");
        println!("\t- PASSED: Universal Preconditions");
    } else {
        results.pddl12.quantified_preconditions = Failed;
        println!("FAILED: Quantified Preconditions failed");
    }

    if results.pddl12.strips == Passed &&
        results.pddl12.typing == Passed &&
        results.pddl12.disjunctive_preconditions == Passed &&
        results.pddl12.equality == Passed &&
        results.pddl12.quantified_preconditions == Passed &&
        results.pddl12.conditional_effects == Passed
    {
        results.pddl12.adl = Passed;
        println!("PASSED: ADL passed because:");
        println!("\t- PASSED: STRIPS");
        println!("\t- PASSED: Typing");
        println!("\t- PASSED: Disjunctive Preconditions");
        println!("\t- PASSED: Equality");
        println!("\t- PASSED: Quantified Preconditions");
        println!("\t- PASSED: Conditional Effects");
    } else {
        results.pddl12.adl = Failed;
        println!("FAILED: ADL failed")
    }

    if results.pddl12.adl == Passed &&
        results.pddl12.domain_axioms == Passed &&
        results.pddl12.safety_constraints == Passed
    {
        results.pddl12.ucpop = Passed;
        println!("PASSED: UCPOP passed because:");
        println!("\t- PASSED: ADL");
        println!("\t- PASSED: Domain Axioms");
        println!("\t- PASSED: Safety Constraints");
    } else {
        results.pddl12.ucpop = Failed;
        println!("FAILED: UCPOP failed");
    }

    println!("------[[[Testing PDDL 2.1 Features ]]]------");
    results = test_numeric_fluents(&exe, results);
    results = test_durative_actions(&exe, results);
    if results.pddl21.durative_actions == Passed {
        results = test_durative_inequalities(&exe, results);
        if results.pddl21.durative_inequalities != Passed {
            println!("Failed to pass Durative Inequalities, testing different syntax...");
            results = test_durative_inequalities_without_requirement(&exe, results);
        }
    }

    if results.pddl21.durative_actions == Passed &&
        results.pddl21.numeric_fluents == Passed {
        results = test_continuous_effects(&exe, results);
    }

    results = test_negative_preconditions(&exe, results);

    println!("------[[[Testing PDDL 2.2 Features ]]]------");
    results = test_derived_predicates(&exe, results);
    results = test_timed_initial_literals(&exe, results);

    println!("------[[[Testing PDDL 3.0 Features ]]]------");
    results = test_constraints(&exe, results);
    results = test_preferences(&exe, results);

    println!("------[[[Testing PDDL 3.1 Features ]]]------");
    results = test_action_costs(&exe, results);
    results = test_goal_utilities(&exe, results);

    println!("------[[[Testing PDDL+ Features ]]]------");
    results = test_time(&exe, results);
}
