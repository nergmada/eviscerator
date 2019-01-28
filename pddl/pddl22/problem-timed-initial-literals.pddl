(define
    (problem simpleproblem)
    (:domain simple)
    (:objects
        obj1
    )
    (:init
        (at 10 (object-is-ready obj1))
    )
    (:goal (and
        (task-complete obj1)
    ))
)