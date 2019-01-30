(define
    (domain simple)
    (:requirements :strips :derived-predicates)
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
    (:derived 
        (task-complete ?obj) (and (parta-task-complete ?obj) (partb-task-complete ?obj))
    )
)