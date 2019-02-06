(define
    (domain simple)
    (:requirements :strips :goal-utilities)
    (:predicates
        (object-is-ready ?a)
        (task-complete ?a)
    )
    (:action action1
        :parameters (?obj)
        :precondition (and 
            (object-is-ready ?obj)
        )
        :effect (and
            (task-complete ?obj)
        )
    )
)