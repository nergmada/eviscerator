(define
    (domain simple)
    (:requirements :strips :typing :equality)
    (:types 
        abc
    )
    (:predicates
        (object-is-ready ?a - abc)
        (task-complete ?a - abc)
    )
    (:action action1
        :parameters (?obja - abc ?objb - abc)
        :precondition (and 
            (not (= ?obja ?objb))
            (object-is-ready ?obja)
        )
        :effect (and
            (task-complete ?obja)
        )
    )
)