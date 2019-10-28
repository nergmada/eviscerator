(define
    (domain simple)
    (:requirements :strips :typing :safety-constraints)
    (:types 
        abc
    )
    (:predicates
        (object-is-ready ?a - abc)
        (parta-task-complete ?a - abc)
        (partb-task-complete ?a - abc)
        (broken ?a - abc)
        (task-complete ?a - abc)
    )
    (:safety
        (forall (?obj - abc)
            (not (broken ?a))
        )
    )
    (:action action1
        :parameters (?obj - abc)
        :precondition (and 
            (object-is-ready ?obj)
        )
        :effect (and
            (parta-task-complete ?obj)
        )
    )
    (:action action2
        :parameters (?obj - abc)
        :precondition (and 
            (object-is-ready ?obj)
        )
        :effect (and
            (partb-task-complete ?obj)
        )
    )
    (:action action3
        :parameters (?obj - abc)
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
        :parameters (?obj - abc)
        :precondition (and 
            (parta-task-complete ?obj)
            (partb-task-complete ?obj)
        )
        :effect (and
            (task-complete ?obj)
        )
    )
)