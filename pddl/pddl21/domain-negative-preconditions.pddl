(define
    (domain simple)
    (:requirements :strips :negative-preconditions)
    (:predicates
        (object-is-ready ?a)
        (task-complete ?a)
    )
    (:action action1
        :parameters (?obj)
        :precondition (and 
            (not (object-is-ready ?obj))
        )
        :effect (and
            (task-complete ?obj)
        )
    )
)