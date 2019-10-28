(define
    (domain simple)
    (:requirements :strips :typing :universal-preconditions)
    (:types 
        abc
    )
    (:predicates
        (object-is-ready ?a - abc)
        (object-not-busy ?a - abc)
        (task-complete ?a - abc)
    )
    (:action action1
        :parameters (?obj - abc)
        :precondition (and 
            (object-is-ready ?obj)
            (forall (?objb)
                (object-not-busy ?objb)
            )
        )
        :effect (and
            (task-complete ?obj)
        )
    )
)