(define
    (domain simple)
    (:requirements :strips :typing)
    (:types 
        abc
    )
    (:predicates
        (object-is-ready ?a - abc)
        (object-is-quick ?a - abc)
        (task-complete ?a - abc)
        (task-finished-early)
    )
    (:action action1
        :parameters (?obj - abc)
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