(define
    (problem simpleproblem)
    (:domain simple)
    (:objects
        1a2b
    )
    (:init
        (object-is-ready 1a2b)
    )
    (:goal (and
        (task-complete 1a2b)
    ))
)