(define
    (problem simpleproblem)
    (:domain simple)
    (:objects
        obj1 obj2 - abc
    )
    (:init
        (object-is-ready obj1)
    )
    (:goal (and
        (task-complete obj1)
    ))
)