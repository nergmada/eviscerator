use regex::Regex;

pub struct PlanStep {
    action: String,
    time: f32
}

impl PlanStep {
    fn new(action: String, time: f32) -> PlanStep {
        PlanStep {
            action,
            time
        }
    }

    pub fn parse_plan_with_regex(re : &str, output : &str) -> Vec<PlanStep> {
        let plan_step_regex = Regex::new(re).expect("Regex provided is not a valid regex");
        let mut result : Vec<PlanStep> = vec!();
        for m in plan_step_regex.captures_iter(output) {
            if (&m[1]).parse::<f32>().is_ok() {
                result.push(PlanStep::new((&m[2]).to_string(), (&m[1]).parse::<f32>().unwrap()));
            }
        };
        result
    }
}