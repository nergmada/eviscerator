(define
    (domain simple)
    (:requirements :strips :domain-axioms)
    (:predicates
        (object-is-ready ?a)
        (parta-task-complete ?a)
        (partb-task-complete ?a)
        (task-complete ?a)
    )
    (:action action1
        :parameters (?obj)
        :precondition (and 
            (object-is-ready ?obj)
        )
        :effect (and
            (parta-task-complete ?obj)
        )
    )
    (:action action2
        :parameters (?obj)
        :precondition (and 
            (object-is-ready ?obj)
        )
        :effect (and
            (partb-task-complete ?obj)
        )
    )
    (:axiom
        :vars (?obj)
        :context (and
            (parta-task-complete ?obj)
            (partb-task-complete ?obj)
        )
        :implies (task-complete ?obj)
    )
)