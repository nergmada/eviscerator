(define
    (domain simple)
    (:requirements :strips :safety-constraints)
    (:predicates
        (object-is-ready ?a)
        (parta-task-complete ?a)
        (partb-task-complete ?a)
        (broken ?a)
        (task-complete ?a)
    )
    (:safety
        (forall (?obj)
            (not (broken ?a))
        )
    )
    (:action action1
        :parameters (?obj)
        :precondition (and 
            (object-is-ready ?obj)
        )
        :effect (and
            (parta-task-complete ?obj)
        )
    )
    (:action action2
        :parameters (?obj)
        :precondition (and 
            (object-is-ready ?obj)
        )
        :effect (and
            (partb-task-complete ?obj)
        )
    )
    (:action action3
        :parameters (?obj)
        :precondition (and 
            (object-is-ready ?obj)
        )
        :effect (and
            (broken ?obj)
            (parta-task-complete ?obj)
            (partb-task-complete ?obj)
        )
    )
    (:action action4
        :parameters (?obj)
        :precondition (and 
            (parta-task-complete ?obj)
            (partb-task-complete ?obj)
        )
        :effect (and
            (task-complete ?obj)
        )
    )
)