(define
    (domain simple)
    (:requirements :strips :universal-preconditions)
    (:predicates
        (object-is-ready ?a)
        (object-not-busy ?a)
        (task-complete ?a)
    )
    (:action action1
        :parameters (?obj)
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