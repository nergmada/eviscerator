use crate::core::*;
use crate::execution::{Executor};
use crate::core::TestResult::{Passed, Failed};

pub fn test_derived_predicates(exe: &Executor, results: EvisceratorResults) -> EvisceratorResults {
    let full_name = "Derived Predicates";
    println!("\t\t--[Checking Planner can plan a {} Problem]--\t\t", full_name);
    let r;
    match results.typing_dependent {
        true => r = exe.execute(
            "/pddl/pddl22/domain-derived-predicates-td.pddl",
            "/pddl/pddl22/problem-derived-predicates-td.pddl"),
        false => r = exe.execute(
            "/pddl/pddl22/domain-derived-predicates.pddl",
            "/pddl/pddl22/problem-derived-predicates.pddl")
    }
    halt_and_catch_fire_if(r.exit_code < 0);
    if r.success && r.plan.len() > 0 {
        println!("PASSED: The given planner can plan a {} problem\n", full_name);
        EvisceratorResults {
            pddl22: PDDL22Tests {
                derived_predicates: Passed,
                ..results.pddl22
            },
            ..results
        }
    } else {
        println!("FAIL: The given planner cannot plan a {} problem\n", full_name);
        EvisceratorResults {
            pddl22: PDDL22Tests {
                derived_predicates: Failed,
                ..results.pddl22
            },
            ..results
        }
    }
}

pub fn test_timed_initial_literals(exe: &Executor, results: EvisceratorResults) -> EvisceratorResults {
    let full_name = "Timed Initial Literals";
    println!("\t\t--[Checking Planner can plan a {} Problem]--\t\t", full_name);
    let r;
    match results.typing_dependent {
        true => r = exe.execute(
            "/pddl/pddl22/domain-timed-initial-literals-td.pddl",
            "/pddl/pddl22/problem-timed-initial-literals-td.pddl"),
        false => r = exe.execute(
            "/pddl/pddl22/domain-timed-initial-literals.pddl",
            "/pddl/pddl22/problem-timed-initial-literals.pddl")
    }
    halt_and_catch_fire_if(r.exit_code < 0);
    if r.success && r.plan.len() > 0 {
        println!("PASSED: The given planner can plan a {} problem\n", full_name);
        EvisceratorResults {
            pddl22: PDDL22Tests {
                timed_initial_literals: Passed,
                ..results.pddl22
            },
            ..results
        }
    } else {
        println!("FAIL: The given planner cannot plan a {} problem\n", full_name);
        EvisceratorResults {
            pddl22: PDDL22Tests {
                timed_initial_literals: Failed,
                ..results.pddl22
            },
            ..results
        }
    }
}