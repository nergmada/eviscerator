(define
    (domain simple)
    (:requirements :strips :constraints)
    (:types 
        abc
    )
    (:predicates
        (object-is-ready ?a - abc)
        (taska-complete ?a - abc)
        (taskb-complete ?a - abc)
        (task-complete ?a - abc)
    )
    (:constraints
        (forall (?obj - abc) (always (object-is-ready ?obj)))
    )
    (:action action1
        :parameters (?obj - abc)
        :precondition (and 
            (object-is-ready ?obj)
        )
        :effect (and
            (not (object-is-ready ?obj))
            (task-complete ?obj)
        )
    )
    (:action action2
        :parameters (?obj - abc)
        :precondition (and 
            (object-is-ready ?obj)
        )
        :effect (and
            (taska-complete ?obj)
        )
    )
    (:action action3
        :parameters (?obj - abc)
        :precondition (and 
            (object-is-ready ?obj)
        )
        :effect (and
            (taskb-complete ?obj)
        )
    )
    (:action action4
        :parameters (?obj - abc)
        :precondition (and 
            (taska-complete ?obj)
            (taskb-complete ?obj)
        )
        :effect (and
            (task-complete ?obj)
        )
    )
)