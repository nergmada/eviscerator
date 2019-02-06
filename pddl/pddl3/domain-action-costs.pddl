(define
    (domain simple)
    (:requirements :strips :action-costs)
    (:predicates
        (object-is-ready ?a)
        (task-complete ?a)
    )
    (:functions (total-cost) - number)
    (:action action1
        :parameters (?obj)
        :precondition (and 
            (object-is-ready ?obj)
        )
        :effect (and
            (increase (total-cost) 10)
            (task-complete ?obj)
        )
    )
    (:action action2
        :parameters (?obj)
        :precondition (and 
            (object-is-ready ?obj)
        )
        :effect (and
            (increase (total-cost) 5)
            (task-complete ?obj)
        )
    )
)