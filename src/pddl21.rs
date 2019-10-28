use crate::core::*;
use crate::execution::{Executor};
use crate::core::TestResult::{Passed, Failed};

pub fn test_numeric_fluents(exe: &Executor, results: EvisceratorResults) -> EvisceratorResults {
    let full_name = "Numeric Fluents";
    println!("\t\t--[Checking Planner can plan a {} Problem]--\t\t", full_name);
    let r;
    match results.typing_dependent {
        true => r = exe.execute(
            "/pddl/pddl21/domain-numeric-fluents-td.pddl",
            "/pddl/pddl21/problem-numeric-fluents-td.pddl"),
        false => r = exe.execute(
            "/pddl/pddl21/domain-numeric-fluents.pddl",
            "/pddl/pddl21/problem-numeric-fluents.pddl")
    }
    halt_and_catch_fire_if(r.exit_code < 0);
    if r.success && r.plan.len() > 0 {
        println!("PASSED: The given planner can plan a {} problem\n", full_name);
        EvisceratorResults {
            pddl21: PDDL21Tests {
                numeric_fluents: Passed,
                ..results.pddl21
            },
            ..results
        }
    } else {
        println!("FAIL: The given planner cannot plan a {} problem\n", full_name);
        EvisceratorResults {
            pddl21: PDDL21Tests {
                numeric_fluents: Failed,
                ..results.pddl21
            },
            ..results
        }
    }
}

pub fn test_durative_actions(exe: &Executor, results: EvisceratorResults) -> EvisceratorResults {
    let full_name = "Durative Actions";
    println!("\t\t--[Checking Planner can plan a {} Problem]--\t\t", full_name);
    let r;
    match results.typing_dependent {
        true => r = exe.execute(
            "/pddl/pddl21/domain-durative-actions-td.pddl",
            "/pddl/pddl21/problem-durative-actions-td.pddl"),
        false => r = exe.execute(
            "/pddl/pddl21/domain-durative-actions.pddl",
            "/pddl/pddl21/problem-durative-actions.pddl")
    }
    halt_and_catch_fire_if(r.exit_code < 0);
    if r.success && r.plan.len() > 0 {
        println!("PASSED: The given planner can plan a {} problem\n", full_name);
        EvisceratorResults {
            pddl21: PDDL21Tests {
                durative_actions: Passed,
                ..results.pddl21
            },
            ..results
        }
    } else {
        println!("FAIL: The given planner cannot plan a {} problem\n", full_name);
        EvisceratorResults {
            pddl21: PDDL21Tests {
                durative_actions: Failed,
                ..results.pddl21
            },
            ..results
        }
    }
}

pub fn test_durative_inequalities(exe: &Executor, results: EvisceratorResults) -> EvisceratorResults {
    let full_name = "Durative Inequalities";
    println!("\t\t--[Checking Planner can plan a {} Problem]--\t\t", full_name);
    let r;
    match results.typing_dependent {
        true => r = exe.execute(
            "/pddl/pddl21/domain-durative-inequalities-td.pddl",
            "/pddl/pddl21/problem-durative-inequalities-td.pddl"),
        false => r = exe.execute(
            "/pddl/pddl21/domain-durative-inequalities.pddl",
            "/pddl/pddl21/problem-durative-inequalities.pddl")
    }
    halt_and_catch_fire_if(r.exit_code < 0);
    if r.success && r.plan.len() > 0 {
        println!("PASSED: The given planner can plan a {} problem\n", full_name);
        EvisceratorResults {
            pddl21: PDDL21Tests {
                durative_inequalities: Passed,
                ..results.pddl21
            },
            ..results
        }
    } else {
        println!("FAIL: The given planner cannot plan a {} problem\n", full_name);
        EvisceratorResults {
            pddl21: PDDL21Tests {
                durative_inequalities: Failed,
                ..results.pddl21
            },
            ..results
        }
    }
}

pub fn test_durative_inequalities_without_requirement(exe: &Executor, results: EvisceratorResults) -> EvisceratorResults {
    let full_name = "Durative Inequalities (without requirement)";
    println!("\t\t--[Checking Planner can plan a {} Problem]--\t\t", full_name);
    let r;
    match results.typing_dependent {
        true => r = exe.execute(
            "/pddl/pddl21/domain-durative-inequalities-wr-td.pddl",
            "/pddl/pddl21/problem-durative-inequalities-wr-td.pddl"),
        false => r = exe.execute(
            "/pddl/pddl21/domain-durative-inequalities-wr.pddl",
            "/pddl/pddl21/problem-durative-inequalities-wr.pddl")
    }
    halt_and_catch_fire_if(r.exit_code < 0);
    if r.success && r.plan.len() > 0 {
        println!("PASSED: The given planner can plan a {} problem\n", full_name);
        EvisceratorResults {
            pddl21: PDDL21Tests {
                durative_inequalities: Passed,
                ..results.pddl21
            },
            ..results
        }
    } else {
        println!("FAIL: The given planner cannot plan a {} problem\n", full_name);
        EvisceratorResults {
            pddl21: PDDL21Tests {
                durative_inequalities: Failed,
                ..results.pddl21
            },
            ..results
        }
    }
}

pub fn test_continuous_effects(exe: &Executor, results: EvisceratorResults) -> EvisceratorResults {
    let full_name = "Continuous Effects";
    println!("\t\t--[Checking Planner can plan a {} Problem]--\t\t", full_name);
    let r;
    match results.typing_dependent {
        true => r = exe.execute(
            "/pddl/pddl21/domain-continuous-effects-td.pddl",
            "/pddl/pddl21/problem-continuous-effects-td.pddl"),
        false => r = exe.execute(
            "/pddl/pddl21/domain-continuous-effects.pddl",
            "/pddl/pddl21/problem-continuous-effects.pddl")
    }
    halt_and_catch_fire_if(r.exit_code < 0);
    if r.success && r.plan.len() > 0 {
        println!("PASSED: The given planner can plan a {} problem\n", full_name);
        EvisceratorResults {
            pddl21: PDDL21Tests {
                continuous_effects: Passed,
                ..results.pddl21
            },
            ..results
        }
    } else {
        println!("FAIL: The given planner cannot plan a {} problem\n", full_name);
        EvisceratorResults {
            pddl21: PDDL21Tests {
                continuous_effects: Failed,
                ..results.pddl21
            },
            ..results
        }
    }
}

pub fn test_negative_preconditions(exe: &Executor, results: EvisceratorResults) -> EvisceratorResults {
    let full_name = "Negative Preconditions";
    println!("\t\t--[Checking Planner can plan a {} Problem]--\t\t", full_name);
    let r;
    match results.typing_dependent {
        true => r = exe.execute(
            "/pddl/pddl21/domain-negative-preconditions-td.pddl",
            "/pddl/pddl21/problem-negative-preconditions-td.pddl"),
        false => r = exe.execute(
            "/pddl/pddl21/domain-negative-preconditions.pddl",
            "/pddl/pddl21/problem-negative-preconditions.pddl")
    }
    halt_and_catch_fire_if(r.exit_code < 0);
    if r.success && r.plan.len() > 0 {
        println!("PASSED: The given planner can plan a {} problem\n", full_name);
        EvisceratorResults {
            pddl21: PDDL21Tests {
                negative_preconditions: Passed,
                ..results.pddl21
            },
            ..results
        }
    } else {
        println!("FAIL: The given planner cannot plan a {} problem\n", full_name);
        EvisceratorResults {
            pddl21: PDDL21Tests {
                negative_preconditions: Failed,
                ..results.pddl21
            },
            ..results
        }
    }
}