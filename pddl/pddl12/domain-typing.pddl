(define
    (domain simple)
    (:requirements :strips :typing)
    (:types
        alpha beta
    )
    (:predicates
        (object-is-ready ?a - alpha)
        (task-complete ?b - beta)
    )
    (:action action1
        :parameters (?a - alpha ?b - beta)
        :precondition (and 
            (object-is-ready ?a)
        )
        :effect (and
            (task-complete ?b)
        )
    )
)