(define
    (problem simpleproblem)
    (:domain simple)
    (:objects
        obj1
    )
    (:init
        (object-is-ready obj1)
    )
    (:goal (and
        (task-complete obj1)
        (preference p1 (always (object-is-ready obj1)))
    ))
    (:metric (minimize (is-violated p1)))
)