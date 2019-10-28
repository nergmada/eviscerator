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
        (person-happy)
    ))
)