(define
    (domain simple)
    (:requirements :strips :time)
    (:predicates
        (object-is-ready ?a)
        (task-complete ?a)
        (person-happy)
    )
    (:action action1
        :parameters (?obj)
        :precondition (and 
            (object-is-ready ?obj)
        )
        :effect (and
            (task-complete ?obj)
        )
    )
    (:event action2
        :parameters (?obj)
        :precondition (and
            (task-complete ?obj)
        )
        :effect (and
            (not (task-complete ?obj))
            (person-happy)
        )
    )
)