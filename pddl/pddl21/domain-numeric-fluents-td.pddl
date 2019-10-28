(define
    (domain simple)
    (:requirements :strips :numeric-fluents)
    (:types 
        abc
    )
    (:functions
        (fuel ?a - abc)
    )
    (:predicates
        (object-is-ready ?a - abc)
        (task-complete ?a - abc)
    )
    (:action action1
        :parameters (?obj - abc)
        :precondition (and 
            (object-is-ready ?obj)
        )
        :effect (and
            (task-complete ?obj)
            (increase (fuel ?obj) 100)
        )
    )
)