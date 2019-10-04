use clap::{App, Arg, ArgMatches};
use std::path::Path;
use crate::core::TestResult::NotTested;
use crate::execution::Executor;

pub fn run_argument_parsing<'a>() -> ArgMatches<'a> {
    App::new("Eviscerator")
        .version("2.0")
        .author("Adam Francis Green <adam.green@kcl.ac.uk>")
        .about("Eviscerator is a convenience tool for testing planners functionality and features")
        .arg(Arg::with_name("planner")
            .short("p")
            .long("planner")
            .index(1)
            .value_name("PLANNER PATH")
            .help("The relative path to the planner we are testing")
            .required(true))
        .arg(Arg::with_name("command")
            .short("c")
            .long("command")
            .index(2)
            .default_value("[DOMAIN] [PROBLEM]")
            .help("A string which indicates how the planner takes a domain and problem file"))
        .arg(Arg::with_name("output")
            .short("o")
            .long("output")
            .default_value("(\\d+(?:.\\d+){0,1}):\\s(\\((?:action\\d+(?:\\sobj\\d+)*)\\))")
            .help("A regular expression indicating how a single plan step is represented in the output"))
        .arg(Arg::with_name("year")
            .short("y")
            .long("year")
            .possible_values(&["skip", "all", "1998", "2000", "2002", "2004", "2006", "2008", "2011", "2014"])
            .help("The IPC year you wish to conduct tests on, or enter 'all' to run against all years")
            .default_value("skip"))
        .get_matches()
}

pub struct Config<'a> {
    pub planner_path: &'a Path,
    pub command_string: &'a str,
    pub plan_regex: &'a str,
    pub ipc_year: &'a str,
    pub run_ipc_tests: bool
}

#[derive(PartialEq)]
pub enum TestResult {
    NotTested,
    Passed,
    Failed,
    MaybePassed
}

pub struct PDDL12Tests {
    pub strips: TestResult,
    pub typing: TestResult,
    pub disjunctive_preconditions: TestResult,
    pub equality: TestResult,
    pub existential_preconditions: TestResult,
    pub universal_preconditions: TestResult,
    pub conditional_effects: TestResult,
    pub domain_axioms: TestResult,
    pub subgoals_through_axioms: TestResult,
    pub safety_constraints: TestResult,
    pub open_world: TestResult,
    pub quantified_preconditions: TestResult,
    pub adl: TestResult,
    pub ucpop: TestResult
}

impl Default for PDDL12Tests {
    fn default() -> PDDL12Tests {
        PDDL12Tests {
            strips: TestResult::NotTested,
            typing: TestResult::NotTested,
            disjunctive_preconditions: TestResult::NotTested,
            equality: TestResult::NotTested,
            existential_preconditions: TestResult::NotTested,
            universal_preconditions: TestResult::NotTested,
            conditional_effects: TestResult::NotTested,
            domain_axioms: TestResult::NotTested,
            subgoals_through_axioms: TestResult::NotTested,
            safety_constraints: TestResult::NotTested,
            open_world: TestResult::NotTested,
            quantified_preconditions: TestResult::NotTested,
            adl: TestResult::NotTested,
            ucpop: TestResult::NotTested
        }
    }
}

pub struct PDDL21Tests {
    pub numeric_fluents: TestResult,
    pub durative_actions: TestResult,
    pub durative_inequalities: TestResult,
    pub continuous_effects: TestResult,
    pub negative_preconditions: TestResult
}

impl Default for PDDL21Tests {
    fn default() -> PDDL21Tests {
        PDDL21Tests {
            numeric_fluents: TestResult::NotTested,
            durative_actions: TestResult::NotTested,
            durative_inequalities: TestResult::NotTested,
            continuous_effects: TestResult::NotTested,
            negative_preconditions: TestResult::NotTested
        }
    }
}

pub struct PDDL22Tests {
    pub derived_predicates: TestResult,
    pub timed_initial_literals: TestResult
}

impl Default for PDDL22Tests {
    fn default() -> PDDL22Tests {
        PDDL22Tests {
            derived_predicates: TestResult::NotTested,
            timed_initial_literals: TestResult::NotTested
        }
    }
}

pub struct PDDL3Tests {
    pub constraints: TestResult,
    pub preferences: TestResult
}

impl Default for PDDL3Tests {
    fn default() -> PDDL3Tests {
        PDDL3Tests {
            constraints: TestResult::NotTested,
            preferences: TestResult::NotTested
        }
    }
}

pub struct PDDL31Tests {
    pub action_costs: TestResult,
    pub goal_utilities: TestResult
}

impl Default for PDDL31Tests {
    fn default() -> PDDL31Tests {
        PDDL31Tests {
            action_costs: TestResult::NotTested,
            goal_utilities: TestResult::NotTested
        }
    }
}

pub struct PDDLPlusTests {
    pub time: TestResult
}

impl Default for PDDLPlusTests {
    fn default() -> PDDLPlusTests {
        PDDLPlusTests {
            time: TestResult::NotTested
        }
    }
}

pub struct EvisceratorResults {
    pub planner_exists: TestResult,
    pub no_domain_problem_file_exit_code: i32,
    pub no_problem_file_exit_code: i32,
    pub no_domain_file_exit_code: i32,
    pub success_exit_code: i32,
    pub typing_dependent: bool,
    pub pddl12: PDDL12Tests,
    pub pddl21: PDDL21Tests,
    pub pddl22: PDDL22Tests,
    pub pddl3: PDDL3Tests,
    pub pddl31: PDDL31Tests,
    pub pddlplus: PDDLPlusTests
}

impl Default for EvisceratorResults {
    fn default() -> EvisceratorResults {
        EvisceratorResults {
            planner_exists: NotTested,
            no_domain_problem_file_exit_code: -1,
            no_problem_file_exit_code: -1,
            no_domain_file_exit_code: -1,
            success_exit_code: -1,
            typing_dependent: false,
            pddl12: PDDL12Tests::default(),
            pddl21: PDDL21Tests::default(),
            pddl22: PDDL22Tests::default(),
            pddl3: PDDL3Tests::default(),
            pddl31: PDDL31Tests::default(),
            pddlplus: PDDLPlusTests::default()
        }
    }
}


pub fn halt_and_catch_fire_if(a : bool) {
    if a {
        println!("No planner found at the path indicated, aborting...");
        std::process::exit(2);
    }
}

pub fn test_planners_existence(exe: &Executor, results: EvisceratorResults) -> EvisceratorResults {
    println!("\t\t--[Checking Planner Existence]--\t\t");
    let r = exe.execute("", "");
    halt_and_catch_fire_if(r.exit_code < 0);
    EvisceratorResults {
        planner_exists: TestResult::Passed,
        no_domain_problem_file_exit_code: r.exit_code,
        ..results
    }
}

pub fn test_how_planner_handles_non_existent_problem(exe: &Executor, results: EvisceratorResults) -> EvisceratorResults {
    println!("\t\t--[Check with non-existent problem]--\t\t");
    let r = exe.execute("/pddl/existential/domain.pddl", "");
    halt_and_catch_fire_if(r.exit_code < 0);
    EvisceratorResults {
        no_problem_file_exit_code: r.exit_code,
        ..results
    }
}

pub fn test_how_planner_handles_non_existent_domain(exe: &Executor, results: EvisceratorResults) -> EvisceratorResults {
    println!("\t\t--[Check with non-existent domain]--\t\t");
    let r = exe.execute("", "/pddl/existential/problem.pddl");
    halt_and_catch_fire_if(r.exit_code < 0);
    EvisceratorResults {
        no_domain_file_exit_code: r.exit_code,
        ..results
    }
}