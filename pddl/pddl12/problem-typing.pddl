(define
    (problem simpleproblem)
    (:domain simple)
    (:objects
        obj1 - alpha
        obj2 - beta
    )
    (:init
        (object-is-ready obj1)
    )
    (:goal (and
        (task-complete obj2)
    ))
)