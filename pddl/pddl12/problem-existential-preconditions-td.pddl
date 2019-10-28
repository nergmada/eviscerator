(define
    (problem simpleproblem)
    (:domain simple)
    (:objects
        obj1 obj2 - abc
    )
    (:init
        (object-is-ready obj1)
        (object-not-busy obj2)
    )
    (:goal (and
        (task-complete obj1)
    ))
)