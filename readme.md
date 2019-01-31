# Eviscerator
> A tool for getting to core of a planner's features and abilities

For more info on what planning is, see [this guide](https://nergmada.github.io/pddl-reference)

Eviscerator is a tool designed to test AI Planners that use PDDL as their modelling language. Eviscerator is a blunt
instrument and not designed to test the intricate nature of what domains may or may not be supported. This tool tests 
against a series of simple PDDL domains and then verifies what features are support based on whether or not the planner
can solve the provisioned domain.

## Core Features
- Tests PDDL support
    - PDDL 1.2
    - PDDL 2.1
    - PDDL 2.2
    - PDDL 3.0
    - PDDL+
- Tests planners solution determinism
- (Coming soon) Tests planners against IPC domains based on supported features
- (Coming soon) Generates LaTeX tables with IPC results in
- (Coming soon) Generates Markdown PDDL feature support tables

## Usage
Eviscerator comes as a release on this [GitHub Repo](www.github.com/nermgada/eviscerator/releases). Be sure to download
the latest version and unzip it. Eviscerator is currently only built for Linux, however it should compile on Windows too!

If you succeed at building it on Windows and are feeling generous, let me know how you did it

To use eviscerator is normally fairly simple. With the unzipped binary, execute the binary on the command line

    ./eviscerator <path-to-planner> "[DOMAIN] [PROBLEM]" -o "(\d): (\((?:action\d+(?:\sobj\d+)*)\))"

Firstly we need to give it the path to the planner we want to test. We can do this by replacing `<path-to-planner>`

We next need to tell it how the planner accepts the domain and problem file the default is `[DOMAIN] [PROBLEM]` however
if your planner takes domain and problem files as options such as `-d mydomain.pddl` you can write `-d [DOMAIN] [PROBLEM]`, 
Essentially `[DOMAIN]` and `[PROBLEM]` will be replaced by eviscerators test cases to build an execution string such as

```
<path-to-planner> = /optic-clp
<execution-string> = "[DOMAIN] [PROBLEM]"
<domain> = some-eviscerator-domain.pddl
<domain> = some-eviscerator-problem.pddl
// we run:
/optic-clp some-eviscerator-domain.pddl some-eviscerator-problem.pddl
```

You therefore need to tell eviscerator how the domain and problem files are entered on the command line

Finally, depending on how the plan is printed you'll need to create a regex to allow us to identify the plan. The plan regex
is critical and given that all planners have different ideas on how to print plans, will probably be different for each planner

The default regex currently matches plans output in the form
```
1: (action1 obj1)
2: (action1 obj2)
3: (action3 obj2)
```

Note that all of our test domains label actions as `action<number>` where `<number` is some digit. This makes it possible to
regex the name explicitly. The same is true for `obj<number>`. Your regex should consist of at most two capture groups, one capture
group should be the time as just the digits (decimal time is supported), and the full action (including parameters).