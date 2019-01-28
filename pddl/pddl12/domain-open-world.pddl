(define
    (domain simple)
    (:requirements :strips :open-world)
    (:predicates
        (object-is-ready ?a)
        (task-complete ?a)
        (task-not-complete ?a)
    )
    (:action action1
        :parameters (?obj)
        :precondition (and 
            (object-is-ready ?obj)
        )
        :effect (and
            (task-complete ?obj)
            (not (task-not-complete ?obj))
        )
    )
)