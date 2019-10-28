(define
    (domain simple)
    (:requirements :strips :action-costs)
    (:types 
        abc
    )
    (:predicates
        (object-is-ready ?a - abc)
        (task-complete ?a - abc)
    )
    (:functions (total-cost) - number)
    (:action action1
        :parameters (?obj - abc)
        :precondition (and 
            (object-is-ready ?obj)
        )
        :effect (and
            (increase (total-cost) 10)
            (task-complete ?obj)
        )
    )
    (:action action2
        :parameters (?obj - abc)
        :precondition (and 
            (object-is-ready ?obj)
        )
        :effect (and
            (increase (total-cost) 5)
            (task-complete ?obj)
        )
    )
)