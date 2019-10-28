(define
    (domain simple)
    (:requirements :strips :durative-actions)
    (:types 
        abc
    )
    (:predicates
        (object-is-ready ?a - abc)
        (task-complete ?a - abc)
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
            (at end (and
                (task-complete ?obj) 
            ))
        )
    )
    
)