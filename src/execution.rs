use std::process::Command;
use regex::Regex;
use crate::plan::PlanStep;

pub struct ExecutionResult {
    pub success: bool,
    pub exit_code: i32,
    pub out: String,
    pub err: String,
    pub execution_time: f32,
    pub peak_memory_usage: f32,
    pub peak_cpu_usage: f32,
    pub plan: Vec<PlanStep>
}

impl Default for ExecutionResult {
    fn default() -> ExecutionResult {
        ExecutionResult {
            success: false,
            exit_code: -1,
            out: String::new(),
            err: String::new(),
            execution_time: -1.0,
            peak_memory_usage: -1.0,
            peak_cpu_usage: -1.0,
            plan: vec!()
        }
    }
}

pub struct Executor {
    planner_path: String,
    args_string: String,
    cur_dir: String
}

impl Executor {
    pub fn new(path: String, args_str: String) -> Executor {
        Executor {
            planner_path: path,
            args_string: args_str,
            cur_dir: std::env::current_exe().unwrap().parent().unwrap().to_str().unwrap().to_owned()
        }
    }

    fn create_args(&self, domain: &str, problem: &str) -> Vec<String> {
        let mut args = vec!(String::from("-f"), String::from("%e,%M,%P,%x"), self.planner_path.to_owned());
        let arg_string = self.create_args_string(domain, problem);
        for x in arg_string.split_whitespace() {
            args.push(x.to_string());
        }
        args
    }

    fn create_args_string(&self, domain: &str, problem: &str) -> String {
        //extend full domain and problem file paths
        let (full_domain,  full_problem) =
            (self.cur_dir.to_owned() + domain, self.cur_dir.to_owned() + problem);
        let (domain_regex, problem_regex) =
            (Regex::new(r"\[DOMAIN\]").unwrap(), Regex::new(r"\[PROBLEM\]").unwrap());
        problem_regex.replace(
            domain_regex.replace(&(self.args_string), full_domain.as_str()).as_ref(),
            full_problem.as_str()).to_string()
    }

    fn parse_evaluation_data(&self, results: ExecutionResult) -> ExecutionResult {
        let data = results.err.lines().last().unwrap();

        let mut evaluation_data = data.split(",");
        let execution_time = evaluation_data.nth(0).unwrap().parse::<f32>().unwrap();
        let peak_memory_usage = evaluation_data.nth(0).unwrap().parse::<f32>().unwrap();
        let cpu = evaluation_data.nth(0).unwrap();
        if cpu == "?%" {
            ExecutionResult {
                peak_memory_usage,
                peak_cpu_usage: -1.0,
                execution_time,
                ..results
            }
        } else {
            let peak_cpu_usage = cpu[0..cpu.len()-1].parse::<f32>().unwrap();
            ExecutionResult {
                peak_memory_usage,
                peak_cpu_usage,
                execution_time,
                ..results
            }
        }
    }

    pub fn execute(&self, domain: &str, problem: &str) -> ExecutionResult {
        let owned_args = self.create_args(domain, problem);
        let args = owned_args.iter().map(|x|x.as_str()).collect::<Vec<&str>>();

        let command_output = Command::new("/usr/bin/time").args(args.as_slice()).output();
        // Rust will say a command executed fine as long as it existed, check exit codes to confirm
        // go/no-go status
        if command_output.is_ok() {
            let data = command_output.unwrap();
            let mut r = ExecutionResult {
                success: data.status.success(),
                exit_code: data.status.code().unwrap(),
                out: String::from_utf8(data.stdout).unwrap(),
                err: String::from_utf8(data.stderr).unwrap(),
                ..ExecutionResult::default()
            };
            r = self.parse_evaluation_data(r);
            if r.success { r.plan = PlanStep::parse_plan_with_regex("(\\d):\\s(\\((?:action\\d+(?:\\sobj\\d+)*)\\))", r.out.as_str()); }
            println!("Test execution time: {}\nPeak Memory Usage: {}Kb\nPeak CPU Usage (Experimental): {}%",
                     r.execution_time,
                     r.peak_memory_usage,
                     r.peak_cpu_usage);
            println!("");
            r
        } else {
            ExecutionResult::default()
        }
    }
}


