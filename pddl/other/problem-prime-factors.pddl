(define
    (problem num51480)
    (:domain primefactors)
    (:objects
        v - variable
        c2 c3 c5 c7 c11 - constant
    )
    (:init
        (= (value v) 0)
        (= (value c2) 2)
        (= (value c3) 3)
        (= (value c5) 5)
        (= (value c7) 7)
        (= (value c11) 11)
    )
    (:goal
        (= (value v) 51480)
    )
)