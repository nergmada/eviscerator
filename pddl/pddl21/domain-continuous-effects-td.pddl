(define
    (domain simple)
    (:requirements :strips :typing :durative-actions :numeric-fluents :continuous-effects)
    (:types 
        abc
    )
    (:predicates
        (object-is-ready ?a - abc)
        (task-complete ?a - abc)
    )
    (:functions
        (fuel ?a - abc)
    )
    (:durative-action action1
        :parameters (?obj - abc)
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