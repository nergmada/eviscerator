(define
    (domain simple)
    (:requirements :strips :typing :disjunctive-preconditions)
    (:types 
        abc
    )
    (:predicates
        (object-is-alpha ?a - abc)
        (object-is-beta ?a - abc)
        (task-complete ?a - abc)
    )
    (:action action1
        :parameters (?obj - abc)
        :precondition (or 
            (object-is-alpha ?obj)
            (ovject-is-beta ?obj)
        )
        :effect (and
            (task-complete ?obj)
        )
    )
)