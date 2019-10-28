(define
    (domain simple)
    (:requirements :strips :negative-preconditions)
    (:types 
        abc
    )
    (:predicates
        (object-is-ready ?a - abc)
        (task-complete ?a - abc)
    )
    (:action action1
        :parameters (?obj - abc)
        :precondition (and 
            (not (object-is-ready ?obj))
        )
        :effect (and
            (task-complete ?obj)
        )
    )
)