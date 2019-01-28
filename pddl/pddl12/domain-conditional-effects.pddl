(define
    (domain simple)
    (:requirements :strips)
    (:predicates
        (object-is-ready ?a)
        (object-is-quick ?a)
        (task-complete ?a)
        (task-finished-early)
    )
    (:action action1
        :parameters (?obj)
        :precondition (and 
            (object-is-ready ?obj)
        )
        :effect (and
            (task-complete ?obj)
            (when
                (and (object-is-quick ?obj))
                (and (task-finished-early))
            )
        )
    )
)