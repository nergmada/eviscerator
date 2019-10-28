(define
    (problem simpleproblem)
    (:domain simple)
    (:objects
        obj1 - abc
    )
    (:init
        (object-is-ready obj1)
    )
    (:goal (and
        (preference p1 (taska-complete obj1))
        (preference p2 (taskb-complete obj1))
        (preference p3 (object-is-ready obj1))
        (task-complete obj1)
    ))
    (:metric minimize (+
            (* 10 (is-violated p1))
            (* 15 (is-violated p2))
            (* 20 (is-violated p3))
        )
    )
)