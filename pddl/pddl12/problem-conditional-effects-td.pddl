(define
    (problem simpleproblem)
    (:domain simple)
    (:objects
        obj1 obj2 - abc
    )
    (:init
        (object-is-ready obj1)
        (object-is-ready obj2)
        (object-is-quick obj2)
    )
    (:goal (and
        (task-complete obj1)
        (task-finished-early)
    ))
)