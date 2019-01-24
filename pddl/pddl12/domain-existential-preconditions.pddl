(define
    (domain simple)
    (:requirements :strips :existential-preconditions)
    (:predicates
        (object-is-ready ?a)
        (object-not-busy ?a)
        (task-complete ?a)
    )
    (:action action1
        :parameters (?obj)
        :precondition (and 
            (object-is-ready ?obj)
            (exists (?objb)
                (object-not-busy ?objb)
            )
        )
        :effect (and
            (task-complete ?obj)
        )
    )
)