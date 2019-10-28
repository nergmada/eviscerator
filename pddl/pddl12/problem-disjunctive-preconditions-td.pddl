(define
    (problem simpleproblem)
    (:domain simple)
    (:objects
        obj1 - abc
    )
    (:init
        (object-is-alpha obj1)
    )
    (:goal (and
        (task-complete obj1)
    ))
)