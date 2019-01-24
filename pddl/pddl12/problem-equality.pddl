(define
    (problem simpleproblem)
    (:domain simple)
    (:objects
        obj1 obj2
    )
    (:init
        (object-is-ready obj1)
    )
    (:goal (and
        (task-complete obj1)
    ))
)