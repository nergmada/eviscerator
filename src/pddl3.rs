use crate::core::*;
use crate::execution::{Executor};
use crate::core::TestResult::{Passed, Failed};

pub fn test_constraints(exe: &Executor, results: EvisceratorResults) -> EvisceratorResults {
    let full_name = "Constraints";
    println!("\t\t--[Checking Planner can plan a {} Problem]--\t\t", full_name);
    let r;
    match results.typing_dependent {
        true => r = exe.execute(
            "/pddl/pddl3/domain-constraints-td.pddl",
            "/pddl/pddl3/problem-constraints-td.pddl"),
        false => r = exe.execute(
            "/pddl/pddl3/domain-constraints.pddl",
            "/pddl/pddl3/problem-constraints.pddl")
    }
    halt_and_catch_fire_if(r.exit_code < 0);
    if r.success && r.plan.len() > 0 {
        println!("PASSED: The given planner can plan a {} problem\n", full_name);
        EvisceratorResults {
            pddl3: PDDL3Tests {
                constraints: Passed,
                ..results.pddl3
            },
            ..results
        }
    } else {
        println!("FAIL: The given planner cannot plan a {} problem\n", full_name);
        EvisceratorResults {
            pddl3: PDDL3Tests {
                constraints: Failed,
                ..results.pddl3
            },
            ..results
        }
    }
}

pub fn test_preferences(exe: &Executor, results: EvisceratorResults) -> EvisceratorResults {
    let full_name = "Preferences";
    println!("\t\t--[Checking Planner can plan a {} Problem]--\t\t", full_name);
    let r;
    match results.typing_dependent {
        true => r = exe.execute(
            "/pddl/pddl3/domain-preferences-td.pddl",
            "/pddl/pddl3/problem-preferences-td.pddl"),
        false => r = exe.execute(
            "/pddl/pddl3/domain-preferences.pddl",
            "/pddl/pddl3/problem-preferences.pddl")
    }
    halt_and_catch_fire_if(r.exit_code < 0);
    if r.success && r.plan.len() > 0 {
        println!("PASSED: The given planner can plan a {} problem\n", full_name);
        EvisceratorResults {
            pddl3: PDDL3Tests {
                preferences: Passed,
                ..results.pddl3
            },
            ..results
        }
    } else {
        println!("FAIL: The given planner cannot plan a {} problem\n", full_name);
        EvisceratorResults {
            pddl3: PDDL3Tests {
                preferences: Failed,
                ..results.pddl3
            },
            ..results
        }
    }
}