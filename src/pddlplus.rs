use crate::core::*;
use crate::execution::{Executor};
use crate::core::TestResult::{Passed, Failed};

pub fn test_time(exe: &Executor, results: EvisceratorResults) -> EvisceratorResults {
    let full_name = "Time";
    println!("\t\t--[Checking Planner can plan a {} Problem]--\t\t", full_name);
    let r;
    match results.typing_dependent {
        true => r = exe.execute(
            "/pddl/pddlplus/domain-time-td.pddl",
            "/pddl/pddlplus/problem-time-td.pddl"),
        false => r = exe.execute(
            "/pddl/pddlplus/domain-time.pddl",
            "/pddl/pddlplus/problem-time.pddl")
    }
    halt_and_catch_fire_if(r.exit_code < 0);
    if r.success && r.plan.len() > 0 {
        println!("PASSED: The given planner can plan a {} problem\n", full_name);
        EvisceratorResults {
            pddlplus: PDDLPlusTests {
                time: Passed,
                ..results.pddlplus
            },
            ..results
        }
    } else {
        println!("FAIL: The given planner cannot plan a {} problem\n", full_name);
        EvisceratorResults {
            pddlplus: PDDLPlusTests {
                time: Failed,
                ..results.pddlplus
            },
            ..results
        }
    }
}