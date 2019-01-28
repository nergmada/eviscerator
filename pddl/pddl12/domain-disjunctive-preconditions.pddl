(define
    (domain simple)
    (:requirements :strips :disjunctive-preconditions)
    (:predicates
        (object-is-alpha ?a)
        (object-is-beta ?a)
        (task-complete ?a)
    )
    (:action action1
        :parameters (?obj)
        :precondition (or 
            (object-is-alpha ?obj)
            (ovject-is-beta ?obj)
        )
        :effect (and
            (task-complete ?obj)
        )
    )
)