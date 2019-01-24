(define
    (problem simpleproblem)
    (:domain simple)
    (:objects
        obj1
    )
    (:init
        (object-is-alpha obj1)
    )
    (:goal (and
        (task-complete obj1)
    ))
)