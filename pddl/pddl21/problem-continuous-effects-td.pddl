(define
    (problem simpleproblem)
    (:domain simple)
    (:objects
        obj1 - abc
    )
    (:init
        (object-is-ready obj1)
        (= (fuel obj1) 0)
    )
    (:goal (and
        (task-complete obj1)
    ))
)