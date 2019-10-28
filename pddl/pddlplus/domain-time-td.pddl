(define
    (domain simple)
    (:requirements :strips :time)
    (:types 
        abc
    )
    (:predicates
        (object-is-ready ?a - abc)
        (task-complete ?a - abc)
        (person-happy)
    )
    (:action action1
        :parameters (?obj - abc)
        :precondition (and 
            (object-is-ready ?obj)
        )
        :effect (and
            (task-complete ?obj)
        )
    )
    (:event action2
        :parameters (?obj - abc)
        :precondition (and
            (task-complete ?obj)
        )
        :effect (and
            (not (task-complete ?obj))
            (person-happy)
        )
    )
)