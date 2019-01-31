(define
    (domain primefactors)
    (:requirements :numeric-fluents :typing)
    (:types
        num - object
        constant variable - num
    )
    (:predicates
        (first-prime-chosen ?v - variable)
    )
    (:functions 
        (value ?v - num)
    )
    (:action ADD
        :parameters (?v - variable ?c - constant)
        :precondition (and
            (= (value ?v) 0)
        )
        :effect (and
            (first-prime-chosen ?v)
            (assign (value ?v) (value ?c))
        )
    )
    (:action MULTIPLY2
        :parameters (?v - variable)
        :precondition (and
            (> (value ?v) 0)
            (first-prime-chosen ?v)
        )
        :effect (and 
            (assign (value ?v) (* (value ?v) 2))
        )
    )
    (:action MULTIPLY3
        :parameters (?v - variable)
        :precondition (and
            (> (value ?v) 0)
            (first-prime-chosen ?v)
        )
        :effect (and 
            (assign (value ?v) (* (value ?v) 3))
        )
    )
    (:action MULTIPLY5
        :parameters (?v - variable)
        :precondition (and
            (> (value ?v) 0)
            (first-prime-chosen ?v)
        )
        :effect (and 
            (assign (value ?v) (* (value ?v) 5))
        )
    )
    (:action MULTIPLY7
        :parameters (?v - variable)
        :precondition (and
            (> (value ?v) 0)
            (first-prime-chosen ?v)
        )
        :effect (and 
            (assign (value ?v) (* (value ?v) 7))
        )
    )
    (:action MULTIPLY11
        :parameters (?v - variable)
        :precondition (and
            (> (value ?v) 0)
            (first-prime-chosen ?v)
        )
        :effect (and 
            (assign (value ?v) (* (value ?v) 11))
        )
    )
    (:action MULTIPLY13
        :parameters (?v - variable)
        :precondition (and
            (> (value ?v) 0)
            (first-prime-chosen ?v)
        )
        :effect (and 
            (assign (value ?v) (* (value ?v) 13))
        )
    )
    (:action MULTIPLY17
        :parameters (?v - variable)
        :precondition (and
            (> (value ?v) 0)
            (first-prime-chosen ?v)
        )
        :effect (and 
            (assign (value ?v) (* (value ?v) 17))
        )
    )
    (:action MULTIPLY19
        :parameters (?v - variable)
        :precondition (and
            (> (value ?v) 0)
            (first-prime-chosen ?v)
        )
        :effect (and 
            (assign (value ?v) (* (value ?v) 19))
        )
    )
    (:action MULTIPLY23
        :parameters (?v - variable)
        :precondition (and
            (> (value ?v) 0)
            (first-prime-chosen ?v)
        )
        :effect (and 
            (assign (value ?v) (* (value ?v) 23))
        )
    )
)