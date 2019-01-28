(define
    (problem simpleproblem)
    (:domain simple)
    (:objects
        obj1
    )
    (:init
        (object-is-ready obj1)
        (= (fuel obj1) 0)
    )
    (:goal (and
        (task-complete obj1)
        (= (fuel obj1) 100)
    ))
)