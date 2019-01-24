(define
    (domain simple)
    (:requirements :strips :equality)
    (:predicates
        (object-is-ready ?a)
        (task-complete ?a)
    )
    (:action action1
        :parameters (?obja ?objb)
        :precondition (and 
            (not (= ?obja ?objb))
            (object-is-ready ?obja)
        )
        :effect (and
            (task-complete ?obja)
        )
    )
)