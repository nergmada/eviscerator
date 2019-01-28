(define
    (domain simple)
    (:requirements :strips :durative-actions :numeric-fluents :continuous-effects)
    (:functions
        (fuel ?a)
    )
    (:predicates
        (object-is-ready ?a)
        (task-complete ?a)
    )
    (:durative-action action1
        :parameters (?obj)
        :duration (= ?duration 10)
        :condition (and 
            (at start (and 
                (object-is-ready ?obj)
            ))
        )
        :effect (and
            (increase (fuel ?obj) (* #t 2))
            (at end (and
                (task-complete ?obj) 
            ))
        )
    )
)