(define
    (domain simple)
    (:requirements :strips)
    (:predicates
        (object-is-ready ?a)
        (task-complete ?a)
    )
    (:action COMPLETE-TASK
        :parameters (?obj)
        :precondition (and 
            (object-is-ready ?obj)
        )
        :effect (and
            (task-complete ?obj)
        )
    )
)