(define
    (domain simple)
    (:requirements :strips :typing :domain-axioms)
    (:types 
        abc
    )
    (:predicates
        (object-is-ready ?a - abc)
        (parta-task-complete ?a - abc)
        (partb-task-complete ?a - abc)
        (task-complete ?a - abc)
    )
    (:action action1
        :parameters (?obj - abc)
        :precondition (and 
            (object-is-ready ?obj)
        )
        :effect (and
            (parta-task-complete ?obj)
        )
    )
    (:action action2
        :parameters (?obj - abc)
        :precondition (and 
            (object-is-ready ?obj)
        )
        :effect (and
            (partb-task-complete ?obj)
        )
    )
    (:axiom
        :vars (?obj - abc)
        :context (eval (parta-task-complete ?obj) (partb-task-complete ?obj))
        :implies (task-complete ?obj)
    )
)