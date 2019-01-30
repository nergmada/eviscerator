(define
    (domain simple)
    (:requirements :strips :preferences)
    (:predicates
        (object-is-ready ?a)
        (taska-complete ?a)
        (taskb-complete ?a)
        (task-complete ?a)
    )
    (:action action1
        :parameters (?obj)
        :precondition (and 
            (object-is-ready ?obj)
        )
        :effect (and
            (not (object-is-ready ?obj))
            (task-complete ?obj)
        )
    )
    (:action action2
        :parameters (?obj)
        :precondition (and 
            (object-is-ready ?obj)
        )
        :effect (and
            (taska-complete ?obj)
        )
    )
    (:action action3
        :parameters (?obj)
        :precondition (and 
            (object-is-ready ?obj)
        )
        :effect (and
            (taskb-complete ?obj)
        )
    )
    (:action action4
        :parameters (?obj)
        :precondition (and 
            (taska-complete ?obj)
            (taskb-complete ?obj)
        )
        :effect (and
            (task-complete ?obj)
        )
    )
)