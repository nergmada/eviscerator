use crate::core::*;
use crate::execution::{Executor};
use crate::core::TestResult::{Passed, Failed};

pub fn test_critical_features(exe : &Executor, results: EvisceratorResults) -> EvisceratorResults {
    println!("\t\t--[Checking Planner can plan a STRIPS Problem]--\t\t");
    let r = exe.execute("/pddl/pddl12/domain-strips.pddl", "/pddl/pddl12/problem-strips.pddl");
    halt_and_catch_fire_if(r.exit_code < 0);
    if r.success && r.plan.len() > 0 {
        println!("PASSED: The given planner can plan a strips problem\n");
        EvisceratorResults {
            success_exit_code: r.exit_code,
            pddl12: PDDL12Tests {
                strips: Passed,
                ..results.pddl12
            },
            ..results
        }
    } else {
        println!("CRITICAL FAIL: The given planner cannot plan a strips problem\n");
        EvisceratorResults {
            pddl12: PDDL12Tests {
                strips: Failed,
                ..results.pddl12
            },
            ..results
        }
    }

}

pub fn attempt_recovery_from_strips_failure(exe : &Executor, results: EvisceratorResults) -> EvisceratorResults {
    println!("\t\t--[Checking Planner can plan a STRIPS + Typing Problem]--\t\t");
    let r = exe.execute("/pddl/pddl12/domain-typing.pddl", "/pddl/pddl12/problem-typing.pddl");
    halt_and_catch_fire_if(r.exit_code < 0);
    if r.success && r.plan.len() > 0 {
        println!("PASSED: The given planner can plan a STRIPS + Typing problem\n");
        EvisceratorResults {
            success_exit_code: r.exit_code,
            typing_dependent: true,
            pddl12: PDDL12Tests {
                strips: Passed,
                typing: Passed,
                ..results.pddl12
            },
            ..results
        }
    } else {
        println!("CRITICAL FAIL: The given planner cannot plan a STRIPS + Typing problem\n");
        EvisceratorResults {
            pddl12: PDDL12Tests {
                strips: Failed,
                ..results.pddl12
            },
            ..results
        }
    }
}

pub fn test_typing(exe: &Executor, results: EvisceratorResults) -> EvisceratorResults {
    println!("\t\t--[Checking Planner can plan a Typing Problem]--\t\t");
    let r = exe.execute("/pddl/pddl12/domain-typing.pddl", "/pddl/pddl12/problem-typing.pddl");
    halt_and_catch_fire_if(r.exit_code < 0);
    if r.success && r.plan.len() > 0 {
        println!("PASSED: The given planner can plan a Typing problem\n");
        EvisceratorResults {
            pddl12: PDDL12Tests {
                typing: Passed,
                ..results.pddl12
            },
            ..results
        }
    } else {
        println!("FAIL: The given planner cannot plan a Typing problem\n");
        EvisceratorResults {
            pddl12: PDDL12Tests {
                typing: Failed,
                ..results.pddl12
            },
            ..results
        }
    }
}

pub fn test_disjunctive_preconditions(exe: &Executor, results: EvisceratorResults) -> EvisceratorResults {
    let full_name = "Disjunctive Preconditions";
    println!("\t\t--[Checking Planner can plan a {} Problem]--\t\t", full_name);
    let r;
    match results.typing_dependent {
        true => r = exe.execute(
            "/pddl/pddl12/domain-disjunctive-preconditions-td.pddl",
            "/pddl/pddl12/problem-disjunctive-preconditions-td.pddl"),
        false => r = exe.execute(
            "/pddl/pddl12/domain-disjunctive-preconditions.pddl",
            "/pddl/pddl12/problem-disjunctive-preconditions.pddl")
    }
    halt_and_catch_fire_if(r.exit_code < 0);
    if r.success && r.plan.len() > 0 {
        println!("PASSED: The given planner can plan a {} problem\n", full_name);
        EvisceratorResults {
            pddl12: PDDL12Tests {
                disjunctive_preconditions: Passed,
                ..results.pddl12
            },
            ..results
        }
    } else {
        println!("FAIL: The given planner cannot plan a {} problem\n", full_name);
        EvisceratorResults {
            pddl12: PDDL12Tests {
                disjunctive_preconditions: Failed,
                ..results.pddl12
            },
            ..results
        }
    }
}


pub fn test_equality(exe: &Executor, results: EvisceratorResults) -> EvisceratorResults {
    let full_name = "Equality";
    println!("\t\t--[Checking Planner can plan a {} Problem]--\t\t", full_name);
    let r;
    match results.typing_dependent {
        true => r = exe.execute(
            "/pddl/pddl12/domain-equality-td.pddl",
            "/pddl/pddl12/problem-equality-td.pddl"),
        false => r = exe.execute(
            "/pddl/pddl12/domain-equality.pddl",
            "/pddl/pddl12/problem-equality.pddl")
    }
    halt_and_catch_fire_if(r.exit_code < 0);
    if r.success && r.plan.len() > 0 {
        println!("PASSED: The given planner can plan a {} problem\n", full_name);
        EvisceratorResults {
            pddl12: PDDL12Tests {
                equality: Passed,
                ..results.pddl12
            },
            ..results
        }
    } else {
        println!("FAIL: The given planner cannot plan a {} problem\n", full_name);
        EvisceratorResults {
            pddl12: PDDL12Tests {
                equality: Failed,
                ..results.pddl12
            },
            ..results
        }
    }
}

pub fn test_existential_preconditions(exe: &Executor, results: EvisceratorResults) -> EvisceratorResults {
    let full_name = "Existential Preconditions";
    println!("\t\t--[Checking Planner can plan a {} Problem]--\t\t", full_name);
    let r;
    match results.typing_dependent {
        true => r = exe.execute(
            "/pddl/pddl12/domain-existential-preconditions-td.pddl",
            "/pddl/pddl12/problem-existential-preconditions-td.pddl"),
        false => r = exe.execute(
            "/pddl/pddl12/domain-existential-preconditions.pddl",
            "/pddl/pddl12/problem-existential-preconditions.pddl")
    }
    halt_and_catch_fire_if(r.exit_code < 0);
    if r.success && r.plan.len() > 0 {
        println!("PASSED: The given planner can plan a {} problem\n", full_name);
        EvisceratorResults {
            pddl12: PDDL12Tests {
                existential_preconditions: Passed,
                ..results.pddl12
            },
            ..results
        }
    } else {
        println!("FAIL: The given planner cannot plan a {} problem\n", full_name);
        EvisceratorResults {
            pddl12: PDDL12Tests {
                existential_preconditions: Failed,
                ..results.pddl12
            },
            ..results
        }
    }
}

pub fn test_universal_preconditions(exe: &Executor, results: EvisceratorResults) -> EvisceratorResults {
    let full_name = "Universal Preconditions";
    println!("\t\t--[Checking Planner can plan a {} Problem]--\t\t", full_name);
    let r;
    match results.typing_dependent {
        true => r = exe.execute(
            "/pddl/pddl12/domain-universal-preconditions-td.pddl",
            "/pddl/pddl12/problem-universal-preconditions-td.pddl"),
        false => r = exe.execute(
            "/pddl/pddl12/domain-universal-preconditions.pddl",
            "/pddl/pddl12/problem-universal-preconditions.pddl")
    }
    halt_and_catch_fire_if(r.exit_code < 0);
    if r.success && r.plan.len() > 0 {
        println!("PASSED: The given planner can plan a {} problem\n", full_name);
        EvisceratorResults {
            pddl12: PDDL12Tests {
                universal_preconditions: Passed,
                ..results.pddl12
            },
            ..results
        }
    } else {
        println!("FAIL: The given planner cannot plan a {} problem\n", full_name);
        EvisceratorResults {
            pddl12: PDDL12Tests {
                universal_preconditions: Failed,
                ..results.pddl12
            },
            ..results
        }
    }
}

pub fn test_conditional_effects(exe: &Executor, results: EvisceratorResults) -> EvisceratorResults {
    let full_name = "Conditional Effects";
    println!("\t\t--[Checking Planner can plan a {} Problem]--\t\t", full_name);
    let r;
    match results.typing_dependent {
        true => r = exe.execute(
            "/pddl/pddl12/domain-conditional-effects-td.pddl",
            "/pddl/pddl12/problem-conditional-effects-td.pddl"),
        false => r = exe.execute(
            "/pddl/pddl12/domain-conditional-effects.pddl",
            "/pddl/pddl12/problem-conditional-effects.pddl")
    }
    halt_and_catch_fire_if(r.exit_code < 0);
    if r.success && r.plan.len() > 0 {
        println!("PASSED: The given planner can plan a {} problem\n", full_name);
        EvisceratorResults {
            pddl12: PDDL12Tests {
                conditional_effects: Passed,
                ..results.pddl12
            },
            ..results
        }
    } else {
        println!("FAIL: The given planner cannot plan a {} problem\n", full_name);
        EvisceratorResults {
            pddl12: PDDL12Tests {
                conditional_effects: Failed,
                ..results.pddl12
            },
            ..results
        }
    }
}

pub fn test_domain_axioms(exe: &Executor, results: EvisceratorResults) -> EvisceratorResults {
    let full_name = "Domain Axioms";
    println!("\t\t--[Checking Planner can plan a {} Problem]--\t\t", full_name);
    let r;
    match results.typing_dependent {
        true => r = exe.execute(
            "/pddl/pddl12/domain-domain-axioms-td.pddl",
            "/pddl/pddl12/problem-domain-axioms-td.pddl"),
        false => r = exe.execute(
            "/pddl/pddl12/domain-domain-axioms.pddl",
            "/pddl/pddl12/problem-domain-axioms.pddl")
    }
    halt_and_catch_fire_if(r.exit_code < 0);
    if r.success && r.plan.len() > 0 {
        println!("PASSED: The given planner can plan a {} problem\n", full_name);
        EvisceratorResults {
            pddl12: PDDL12Tests {
                domain_axioms: Passed,
                ..results.pddl12
            },
            ..results
        }
    } else {
        println!("FAIL: The given planner cannot plan a {} problem\n", full_name);
        EvisceratorResults {
            pddl12: PDDL12Tests {
                domain_axioms: Failed,
                ..results.pddl12
            },
            ..results
        }
    }
}

pub fn test_subgoals_through_axioms(exe: &Executor, results: EvisceratorResults) -> EvisceratorResults {
    let full_name = "Subgoals Through Axioms";
    println!("\t\t--[Checking Planner can plan a {} Problem]--\t\t", full_name);
    let r;
    match results.typing_dependent {
        true => r = exe.execute(
            "/pddl/pddl12/domain-subgoals-through-axioms-td.pddl",
            "/pddl/pddl12/problem-subgoals-through-axioms-td.pddl"),
        false => r = exe.execute(
            "/pddl/pddl12/domain-subgoals-through-axioms.pddl",
            "/pddl/pddl12/problem-subgoals-through-axioms.pddl")
    }
    halt_and_catch_fire_if(r.exit_code < 0);
    if r.success && r.plan.len() > 0 {
        println!("PASSED: The given planner can plan a {} problem\n", full_name);
        EvisceratorResults {
            pddl12: PDDL12Tests {
                subgoals_through_axioms: Passed,
                ..results.pddl12
            },
            ..results
        }
    } else {
        println!("FAIL: The given planner cannot plan a {} problem\n", full_name);
        EvisceratorResults {
            pddl12: PDDL12Tests {
                subgoals_through_axioms: Failed,
                ..results.pddl12
            },
            ..results
        }
    }
}

pub fn test_safety_constraints(exe: &Executor, results: EvisceratorResults) -> EvisceratorResults {
    let full_name = "Safety Constraints";
    println!("\t\t--[Checking Planner can plan a {} Problem]--\t\t", full_name);
    let r;
    match results.typing_dependent {
        true => r = exe.execute(
            "/pddl/pddl12/domain-safety-constraints-td.pddl",
            "/pddl/pddl12/problem-safety-constraints-td.pddl"),
        false => r = exe.execute(
            "/pddl/pddl12/domain-safety-constraints.pddl",
            "/pddl/pddl12/problem-safety-constraints.pddl")
    }
    halt_and_catch_fire_if(r.exit_code < 0);
    if r.success && r.plan.len() > 0 {
        println!("PASSED: The given planner can plan a {} problem\n", full_name);
        EvisceratorResults {
            pddl12: PDDL12Tests {
                safety_constraints: Passed,
                ..results.pddl12
            },
            ..results
        }
    } else {
        println!("FAIL: The given planner cannot plan a {} problem\n", full_name);
        EvisceratorResults {
            pddl12: PDDL12Tests {
                safety_constraints: Failed,
                ..results.pddl12
            },
            ..results
        }
    }
}

pub fn test_open_world(exe: &Executor, results: EvisceratorResults) -> EvisceratorResults {
    let full_name = "Open World";
    println!("\t\t--[Checking Planner can plan a {} Problem]--\t\t", full_name);
    let r;
    match results.typing_dependent {
        true => r = exe.execute(
            "/pddl/pddl12/domain-open-world-td.pddl",
            "/pddl/pddl12/problem-open-world-td.pddl"),
        false => r = exe.execute(
            "/pddl/pddl12/domain-open-world.pddl",
            "/pddl/pddl12/problem-open-world.pddl")
    }
    halt_and_catch_fire_if(r.exit_code < 0);
    if r.success && r.plan.len() > 0 {
        println!("PASSED: The given planner can plan a {} problem\n", full_name);
        EvisceratorResults {
            pddl12: PDDL12Tests {
                open_world: Passed,
                ..results.pddl12
            },
            ..results
        }
    } else {
        println!("FAIL: The given planner cannot plan a {} problem\n", full_name);
        EvisceratorResults {
            pddl12: PDDL12Tests {
                open_world: Failed,
                ..results.pddl12
            },
            ..results
        }
    }
}