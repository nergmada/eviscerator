use crate::core::*;
use crate::execution::{Executor};
use crate::core::TestResult::{Passed, Failed};

pub fn test_action_costs(exe: &Executor, results: EvisceratorResults) -> EvisceratorResults {
    let full_name = "Action Costs";
    println!("\t\t--[Checking Planner can plan a {} Problem]--\t\t", full_name);
    let r;
    match results.typing_dependent {
        true => r = exe.execute(
            "/pddl/pddl3/domain-action-costs-td.pddl",
            "/pddl/pddl3/problem-action-costs-td.pddl"),
        false => r = exe.execute(
            "/pddl/pddl3/domain-action-costs.pddl",
            "/pddl/pddl3/problem-action-costs.pddl")
    }
    halt_and_catch_fire_if(r.exit_code < 0);
    if r.success && r.plan.len() > 0 {
        println!("PASSED: The given planner can plan a {} problem\n", full_name);
        EvisceratorResults {
            pddl31: PDDL31Tests {
                action_costs: Passed,
                ..results.pddl31
            },
            ..results
        }
    } else {
        println!("FAIL: The given planner cannot plan a {} problem\n", full_name);
        EvisceratorResults {
            pddl31: PDDL31Tests {
                action_costs: Failed,
                ..results.pddl31
            },
            ..results
        }
    }
}

pub fn test_goal_utilities(exe: &Executor, results: EvisceratorResults) -> EvisceratorResults {
    let full_name = "Goal Utilities";
    println!("\t\t--[Checking Planner can plan a {} Problem]--\t\t", full_name);
    let r;
    match results.typing_dependent {
        true => r = exe.execute(
            "/pddl/pddl3/domain-goal-utilities-td.pddl",
            "/pddl/pddl3/problem-goal-utilities-td.pddl"),
        false => r = exe.execute(
            "/pddl/pddl3/domain-goal-utilities.pddl",
            "/pddl/pddl3/problem-goal-utilities.pddl")
    }
    halt_and_catch_fire_if(r.exit_code < 0);
    if r.success && r.plan.len() > 0 {
        println!("PASSED: The given planner can plan a {} problem\n", full_name);
        EvisceratorResults {
            pddl31: PDDL31Tests {
                goal_utilities: Passed,
                ..results.pddl31
            },
            ..results
        }
    } else {
        println!("FAIL: The given planner cannot plan a {} problem\n", full_name);
        EvisceratorResults {
            pddl31: PDDL31Tests {
                goal_utilities: Failed,
                ..results.pddl31
            },
            ..results
        }
    }
}