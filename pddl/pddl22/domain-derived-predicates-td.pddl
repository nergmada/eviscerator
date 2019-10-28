(define
    (domain simple)
    (:requirements :strips :derived-predicates)
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
    (:derived 
        (task-complete ?obj) (and (parta-task-complete ?obj) (partb-task-complete ?obj))
    )
)