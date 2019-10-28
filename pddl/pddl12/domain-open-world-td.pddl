(define
    (domain simple)
    (:requirements :strips :typing :open-world)
    (:types 
        abc
    )
    (:predicates
        (object-is-ready ?a - abc)
        (task-complete ?a - abc)
        (task-not-complete ?a - abc)
    )
    (:action action1
        :parameters (?obj - abc)
        :precondition (and 
            (object-is-ready ?obj)
        )
        :effect (and
            (task-complete ?obj)
            (not (task-not-complete ?obj))
        )
    )
)