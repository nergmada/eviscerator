(define (domain GROUNDED-OPENSTACKS-TIME)
(:requirements
:strips
:durative-actions
:fluents
)
(:predicates
(FOO)
(started_o1)
(stacks-avail_n12)
(started_o2)
(started_o3)
(started_o4)
(started_o5)
(started_o6)
(started_o7)
(started_o8)
(started_o9)
(started_o10)
(started_o11)
(started_o12)
(started_o13)
(started_o14)
(started_o15)
(stacks-avail_n11)
(stacks-avail_n10)
(stacks-avail_n9)
(stacks-avail_n8)
(stacks-avail_n7)
(stacks-avail_n6)
(stacks-avail_n5)
(stacks-avail_n4)
(stacks-avail_n3)
(stacks-avail_n2)
(stacks-avail_n1)
(stacks-avail_n0)
(made_p1)
(made_p2)
(made_p3)
(made_p4)
(made_p5)
(made_p6)
(made_p7)
(made_p8)
(made_p9)
(made_p10)
(made_p11)
(made_p12)
(made_p13)
(made_p14)
(made_p15)
(made_p16)
(made_p17)
(made_p18)
(made_p19)
(made_p20)
(made_p21)
(made_p22)
(made_p23)
(made_p24)
(made_p25)
(shipped_o1)
(shipped_o2)
(shipped_o3)
(shipped_o4)
(shipped_o5)
(shipped_o6)
(shipped_o7)
(shipped_o8)
(shipped_o9)
(shipped_o10)
(shipped_o11)
(shipped_o12)
(shipped_o13)
(shipped_o14)
(shipped_o15)
(not-made_p25)
(not-made_p24)
(not-made_p23)
(not-made_p22)
(not-made_p21)
(not-made_p20)
(not-made_p19)
(not-made_p18)
(not-made_p17)
(not-made_p16)
(not-made_p15)
(not-made_p14)
(not-made_p13)
(not-made_p12)
(not-made_p11)
(not-made_p10)
(not-made_p9)
(not-made_p8)
(not-made_p7)
(not-made_p6)
(not-made_p5)
(not-made_p4)
(not-made_p3)
(not-made_p2)
(not-made_p1)
(waiting_o15)
(waiting_o14)
(waiting_o13)
(waiting_o12)
(waiting_o11)
(waiting_o10)
(waiting_o9)
(waiting_o8)
(waiting_o7)
(waiting_o6)
(waiting_o5)
(waiting_o4)
(waiting_o3)
(waiting_o2)
(waiting_o1)
(stacks-avail_n13)
)
(:durative-action SHIP-ORDER_O15_N12_N13
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o15))
(at start (made_p25))
(at start (made_p24))
(at start (made_p22))
(at start (made_p20))
(at start (made_p12))
(at start (made_p7))
(at start (stacks-avail_n12))
)
:effect
(and
(at end (stacks-avail_n13))
(at end (shipped_o15))
(at start (not (started_o15)))
(at start (not (stacks-avail_n12)))
)
)
(:durative-action SHIP-ORDER_O15_N11_N12
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o15))
(at start (made_p25))
(at start (made_p24))
(at start (made_p22))
(at start (made_p20))
(at start (made_p12))
(at start (made_p7))
(at start (stacks-avail_n11))
)
:effect
(and
(at end (stacks-avail_n12))
(at end (shipped_o15))
(at start (not (started_o15)))
(at start (not (stacks-avail_n11)))
)
)
(:durative-action SHIP-ORDER_O15_N10_N11
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o15))
(at start (made_p25))
(at start (made_p24))
(at start (made_p22))
(at start (made_p20))
(at start (made_p12))
(at start (made_p7))
(at start (stacks-avail_n10))
)
:effect
(and
(at end (stacks-avail_n11))
(at end (shipped_o15))
(at start (not (started_o15)))
(at start (not (stacks-avail_n10)))
)
)
(:durative-action SHIP-ORDER_O15_N9_N10
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o15))
(at start (made_p25))
(at start (made_p24))
(at start (made_p22))
(at start (made_p20))
(at start (made_p12))
(at start (made_p7))
(at start (stacks-avail_n9))
)
:effect
(and
(at end (stacks-avail_n10))
(at end (shipped_o15))
(at start (not (started_o15)))
(at start (not (stacks-avail_n9)))
)
)
(:durative-action SHIP-ORDER_O15_N8_N9
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o15))
(at start (made_p25))
(at start (made_p24))
(at start (made_p22))
(at start (made_p20))
(at start (made_p12))
(at start (made_p7))
(at start (stacks-avail_n8))
)
:effect
(and
(at end (stacks-avail_n9))
(at end (shipped_o15))
(at start (not (started_o15)))
(at start (not (stacks-avail_n8)))
)
)
(:durative-action SHIP-ORDER_O15_N7_N8
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o15))
(at start (made_p25))
(at start (made_p24))
(at start (made_p22))
(at start (made_p20))
(at start (made_p12))
(at start (made_p7))
(at start (stacks-avail_n7))
)
:effect
(and
(at end (stacks-avail_n8))
(at end (shipped_o15))
(at start (not (started_o15)))
(at start (not (stacks-avail_n7)))
)
)
(:durative-action SHIP-ORDER_O15_N6_N7
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o15))
(at start (made_p25))
(at start (made_p24))
(at start (made_p22))
(at start (made_p20))
(at start (made_p12))
(at start (made_p7))
(at start (stacks-avail_n6))
)
:effect
(and
(at end (stacks-avail_n7))
(at end (shipped_o15))
(at start (not (started_o15)))
(at start (not (stacks-avail_n6)))
)
)
(:durative-action SHIP-ORDER_O15_N5_N6
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o15))
(at start (made_p25))
(at start (made_p24))
(at start (made_p22))
(at start (made_p20))
(at start (made_p12))
(at start (made_p7))
(at start (stacks-avail_n5))
)
:effect
(and
(at end (stacks-avail_n6))
(at end (shipped_o15))
(at start (not (started_o15)))
(at start (not (stacks-avail_n5)))
)
)
(:durative-action SHIP-ORDER_O15_N4_N5
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o15))
(at start (made_p25))
(at start (made_p24))
(at start (made_p22))
(at start (made_p20))
(at start (made_p12))
(at start (made_p7))
(at start (stacks-avail_n4))
)
:effect
(and
(at end (stacks-avail_n5))
(at end (shipped_o15))
(at start (not (started_o15)))
(at start (not (stacks-avail_n4)))
)
)
(:durative-action SHIP-ORDER_O15_N3_N4
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o15))
(at start (made_p25))
(at start (made_p24))
(at start (made_p22))
(at start (made_p20))
(at start (made_p12))
(at start (made_p7))
(at start (stacks-avail_n3))
)
:effect
(and
(at end (stacks-avail_n4))
(at end (shipped_o15))
(at start (not (started_o15)))
(at start (not (stacks-avail_n3)))
)
)
(:durative-action SHIP-ORDER_O15_N2_N3
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o15))
(at start (made_p25))
(at start (made_p24))
(at start (made_p22))
(at start (made_p20))
(at start (made_p12))
(at start (made_p7))
(at start (stacks-avail_n2))
)
:effect
(and
(at end (stacks-avail_n3))
(at end (shipped_o15))
(at start (not (started_o15)))
(at start (not (stacks-avail_n2)))
)
)
(:durative-action SHIP-ORDER_O15_N1_N2
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o15))
(at start (made_p25))
(at start (made_p24))
(at start (made_p22))
(at start (made_p20))
(at start (made_p12))
(at start (made_p7))
(at start (stacks-avail_n1))
)
:effect
(and
(at end (stacks-avail_n2))
(at end (shipped_o15))
(at start (not (started_o15)))
(at start (not (stacks-avail_n1)))
)
)
(:durative-action SHIP-ORDER_O15_N0_N1
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o15))
(at start (made_p25))
(at start (made_p24))
(at start (made_p22))
(at start (made_p20))
(at start (made_p12))
(at start (made_p7))
(at start (stacks-avail_n0))
)
:effect
(and
(at end (stacks-avail_n1))
(at end (shipped_o15))
(at start (not (started_o15)))
(at start (not (stacks-avail_n0)))
)
)
(:durative-action SHIP-ORDER_O14_N12_N13
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o14))
(at start (made_p25))
(at start (made_p20))
(at start (made_p15))
(at start (made_p12))
(at start (made_p11))
(at start (made_p9))
(at start (stacks-avail_n12))
)
:effect
(and
(at end (stacks-avail_n13))
(at end (shipped_o14))
(at start (not (started_o14)))
(at start (not (stacks-avail_n12)))
)
)
(:durative-action SHIP-ORDER_O14_N11_N12
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o14))
(at start (made_p25))
(at start (made_p20))
(at start (made_p15))
(at start (made_p12))
(at start (made_p11))
(at start (made_p9))
(at start (stacks-avail_n11))
)
:effect
(and
(at end (stacks-avail_n12))
(at end (shipped_o14))
(at start (not (started_o14)))
(at start (not (stacks-avail_n11)))
)
)
(:durative-action SHIP-ORDER_O14_N10_N11
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o14))
(at start (made_p25))
(at start (made_p20))
(at start (made_p15))
(at start (made_p12))
(at start (made_p11))
(at start (made_p9))
(at start (stacks-avail_n10))
)
:effect
(and
(at end (stacks-avail_n11))
(at end (shipped_o14))
(at start (not (started_o14)))
(at start (not (stacks-avail_n10)))
)
)
(:durative-action SHIP-ORDER_O14_N9_N10
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o14))
(at start (made_p25))
(at start (made_p20))
(at start (made_p15))
(at start (made_p12))
(at start (made_p11))
(at start (made_p9))
(at start (stacks-avail_n9))
)
:effect
(and
(at end (stacks-avail_n10))
(at end (shipped_o14))
(at start (not (started_o14)))
(at start (not (stacks-avail_n9)))
)
)
(:durative-action SHIP-ORDER_O14_N8_N9
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o14))
(at start (made_p25))
(at start (made_p20))
(at start (made_p15))
(at start (made_p12))
(at start (made_p11))
(at start (made_p9))
(at start (stacks-avail_n8))
)
:effect
(and
(at end (stacks-avail_n9))
(at end (shipped_o14))
(at start (not (started_o14)))
(at start (not (stacks-avail_n8)))
)
)
(:durative-action SHIP-ORDER_O14_N7_N8
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o14))
(at start (made_p25))
(at start (made_p20))
(at start (made_p15))
(at start (made_p12))
(at start (made_p11))
(at start (made_p9))
(at start (stacks-avail_n7))
)
:effect
(and
(at end (stacks-avail_n8))
(at end (shipped_o14))
(at start (not (started_o14)))
(at start (not (stacks-avail_n7)))
)
)
(:durative-action SHIP-ORDER_O14_N6_N7
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o14))
(at start (made_p25))
(at start (made_p20))
(at start (made_p15))
(at start (made_p12))
(at start (made_p11))
(at start (made_p9))
(at start (stacks-avail_n6))
)
:effect
(and
(at end (stacks-avail_n7))
(at end (shipped_o14))
(at start (not (started_o14)))
(at start (not (stacks-avail_n6)))
)
)
(:durative-action SHIP-ORDER_O14_N5_N6
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o14))
(at start (made_p25))
(at start (made_p20))
(at start (made_p15))
(at start (made_p12))
(at start (made_p11))
(at start (made_p9))
(at start (stacks-avail_n5))
)
:effect
(and
(at end (stacks-avail_n6))
(at end (shipped_o14))
(at start (not (started_o14)))
(at start (not (stacks-avail_n5)))
)
)
(:durative-action SHIP-ORDER_O14_N4_N5
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o14))
(at start (made_p25))
(at start (made_p20))
(at start (made_p15))
(at start (made_p12))
(at start (made_p11))
(at start (made_p9))
(at start (stacks-avail_n4))
)
:effect
(and
(at end (stacks-avail_n5))
(at end (shipped_o14))
(at start (not (started_o14)))
(at start (not (stacks-avail_n4)))
)
)
(:durative-action SHIP-ORDER_O14_N3_N4
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o14))
(at start (made_p25))
(at start (made_p20))
(at start (made_p15))
(at start (made_p12))
(at start (made_p11))
(at start (made_p9))
(at start (stacks-avail_n3))
)
:effect
(and
(at end (stacks-avail_n4))
(at end (shipped_o14))
(at start (not (started_o14)))
(at start (not (stacks-avail_n3)))
)
)
(:durative-action SHIP-ORDER_O14_N2_N3
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o14))
(at start (made_p25))
(at start (made_p20))
(at start (made_p15))
(at start (made_p12))
(at start (made_p11))
(at start (made_p9))
(at start (stacks-avail_n2))
)
:effect
(and
(at end (stacks-avail_n3))
(at end (shipped_o14))
(at start (not (started_o14)))
(at start (not (stacks-avail_n2)))
)
)
(:durative-action SHIP-ORDER_O14_N1_N2
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o14))
(at start (made_p25))
(at start (made_p20))
(at start (made_p15))
(at start (made_p12))
(at start (made_p11))
(at start (made_p9))
(at start (stacks-avail_n1))
)
:effect
(and
(at end (stacks-avail_n2))
(at end (shipped_o14))
(at start (not (started_o14)))
(at start (not (stacks-avail_n1)))
)
)
(:durative-action SHIP-ORDER_O14_N0_N1
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o14))
(at start (made_p25))
(at start (made_p20))
(at start (made_p15))
(at start (made_p12))
(at start (made_p11))
(at start (made_p9))
(at start (stacks-avail_n0))
)
:effect
(and
(at end (stacks-avail_n1))
(at end (shipped_o14))
(at start (not (started_o14)))
(at start (not (stacks-avail_n0)))
)
)
(:durative-action SHIP-ORDER_O13_N12_N13
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o13))
(at start (made_p21))
(at start (made_p19))
(at start (made_p17))
(at start (made_p15))
(at start (made_p14))
(at start (made_p4))
(at start (stacks-avail_n12))
)
:effect
(and
(at end (stacks-avail_n13))
(at end (shipped_o13))
(at start (not (started_o13)))
(at start (not (stacks-avail_n12)))
)
)
(:durative-action SHIP-ORDER_O13_N11_N12
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o13))
(at start (made_p21))
(at start (made_p19))
(at start (made_p17))
(at start (made_p15))
(at start (made_p14))
(at start (made_p4))
(at start (stacks-avail_n11))
)
:effect
(and
(at end (stacks-avail_n12))
(at end (shipped_o13))
(at start (not (started_o13)))
(at start (not (stacks-avail_n11)))
)
)
(:durative-action SHIP-ORDER_O13_N10_N11
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o13))
(at start (made_p21))
(at start (made_p19))
(at start (made_p17))
(at start (made_p15))
(at start (made_p14))
(at start (made_p4))
(at start (stacks-avail_n10))
)
:effect
(and
(at end (stacks-avail_n11))
(at end (shipped_o13))
(at start (not (started_o13)))
(at start (not (stacks-avail_n10)))
)
)
(:durative-action SHIP-ORDER_O13_N9_N10
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o13))
(at start (made_p21))
(at start (made_p19))
(at start (made_p17))
(at start (made_p15))
(at start (made_p14))
(at start (made_p4))
(at start (stacks-avail_n9))
)
:effect
(and
(at end (stacks-avail_n10))
(at end (shipped_o13))
(at start (not (started_o13)))
(at start (not (stacks-avail_n9)))
)
)
(:durative-action SHIP-ORDER_O13_N8_N9
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o13))
(at start (made_p21))
(at start (made_p19))
(at start (made_p17))
(at start (made_p15))
(at start (made_p14))
(at start (made_p4))
(at start (stacks-avail_n8))
)
:effect
(and
(at end (stacks-avail_n9))
(at end (shipped_o13))
(at start (not (started_o13)))
(at start (not (stacks-avail_n8)))
)
)
(:durative-action SHIP-ORDER_O13_N7_N8
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o13))
(at start (made_p21))
(at start (made_p19))
(at start (made_p17))
(at start (made_p15))
(at start (made_p14))
(at start (made_p4))
(at start (stacks-avail_n7))
)
:effect
(and
(at end (stacks-avail_n8))
(at end (shipped_o13))
(at start (not (started_o13)))
(at start (not (stacks-avail_n7)))
)
)
(:durative-action SHIP-ORDER_O13_N6_N7
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o13))
(at start (made_p21))
(at start (made_p19))
(at start (made_p17))
(at start (made_p15))
(at start (made_p14))
(at start (made_p4))
(at start (stacks-avail_n6))
)
:effect
(and
(at end (stacks-avail_n7))
(at end (shipped_o13))
(at start (not (started_o13)))
(at start (not (stacks-avail_n6)))
)
)
(:durative-action SHIP-ORDER_O13_N5_N6
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o13))
(at start (made_p21))
(at start (made_p19))
(at start (made_p17))
(at start (made_p15))
(at start (made_p14))
(at start (made_p4))
(at start (stacks-avail_n5))
)
:effect
(and
(at end (stacks-avail_n6))
(at end (shipped_o13))
(at start (not (started_o13)))
(at start (not (stacks-avail_n5)))
)
)
(:durative-action SHIP-ORDER_O13_N4_N5
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o13))
(at start (made_p21))
(at start (made_p19))
(at start (made_p17))
(at start (made_p15))
(at start (made_p14))
(at start (made_p4))
(at start (stacks-avail_n4))
)
:effect
(and
(at end (stacks-avail_n5))
(at end (shipped_o13))
(at start (not (started_o13)))
(at start (not (stacks-avail_n4)))
)
)
(:durative-action SHIP-ORDER_O13_N3_N4
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o13))
(at start (made_p21))
(at start (made_p19))
(at start (made_p17))
(at start (made_p15))
(at start (made_p14))
(at start (made_p4))
(at start (stacks-avail_n3))
)
:effect
(and
(at end (stacks-avail_n4))
(at end (shipped_o13))
(at start (not (started_o13)))
(at start (not (stacks-avail_n3)))
)
)
(:durative-action SHIP-ORDER_O13_N2_N3
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o13))
(at start (made_p21))
(at start (made_p19))
(at start (made_p17))
(at start (made_p15))
(at start (made_p14))
(at start (made_p4))
(at start (stacks-avail_n2))
)
:effect
(and
(at end (stacks-avail_n3))
(at end (shipped_o13))
(at start (not (started_o13)))
(at start (not (stacks-avail_n2)))
)
)
(:durative-action SHIP-ORDER_O13_N1_N2
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o13))
(at start (made_p21))
(at start (made_p19))
(at start (made_p17))
(at start (made_p15))
(at start (made_p14))
(at start (made_p4))
(at start (stacks-avail_n1))
)
:effect
(and
(at end (stacks-avail_n2))
(at end (shipped_o13))
(at start (not (started_o13)))
(at start (not (stacks-avail_n1)))
)
)
(:durative-action SHIP-ORDER_O13_N0_N1
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o13))
(at start (made_p21))
(at start (made_p19))
(at start (made_p17))
(at start (made_p15))
(at start (made_p14))
(at start (made_p4))
(at start (stacks-avail_n0))
)
:effect
(and
(at end (stacks-avail_n1))
(at end (shipped_o13))
(at start (not (started_o13)))
(at start (not (stacks-avail_n0)))
)
)
(:durative-action SHIP-ORDER_O12_N12_N13
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o12))
(at start (made_p22))
(at start (made_p21))
(at start (made_p18))
(at start (made_p16))
(at start (made_p15))
(at start (made_p14))
(at start (made_p9))
(at start (made_p4))
(at start (made_p3))
(at start (stacks-avail_n12))
)
:effect
(and
(at end (stacks-avail_n13))
(at end (shipped_o12))
(at start (not (started_o12)))
(at start (not (stacks-avail_n12)))
)
)
(:durative-action SHIP-ORDER_O12_N11_N12
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o12))
(at start (made_p22))
(at start (made_p21))
(at start (made_p18))
(at start (made_p16))
(at start (made_p15))
(at start (made_p14))
(at start (made_p9))
(at start (made_p4))
(at start (made_p3))
(at start (stacks-avail_n11))
)
:effect
(and
(at end (stacks-avail_n12))
(at end (shipped_o12))
(at start (not (started_o12)))
(at start (not (stacks-avail_n11)))
)
)
(:durative-action SHIP-ORDER_O12_N10_N11
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o12))
(at start (made_p22))
(at start (made_p21))
(at start (made_p18))
(at start (made_p16))
(at start (made_p15))
(at start (made_p14))
(at start (made_p9))
(at start (made_p4))
(at start (made_p3))
(at start (stacks-avail_n10))
)
:effect
(and
(at end (stacks-avail_n11))
(at end (shipped_o12))
(at start (not (started_o12)))
(at start (not (stacks-avail_n10)))
)
)
(:durative-action SHIP-ORDER_O12_N9_N10
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o12))
(at start (made_p22))
(at start (made_p21))
(at start (made_p18))
(at start (made_p16))
(at start (made_p15))
(at start (made_p14))
(at start (made_p9))
(at start (made_p4))
(at start (made_p3))
(at start (stacks-avail_n9))
)
:effect
(and
(at end (stacks-avail_n10))
(at end (shipped_o12))
(at start (not (started_o12)))
(at start (not (stacks-avail_n9)))
)
)
(:durative-action SHIP-ORDER_O12_N8_N9
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o12))
(at start (made_p22))
(at start (made_p21))
(at start (made_p18))
(at start (made_p16))
(at start (made_p15))
(at start (made_p14))
(at start (made_p9))
(at start (made_p4))
(at start (made_p3))
(at start (stacks-avail_n8))
)
:effect
(and
(at end (stacks-avail_n9))
(at end (shipped_o12))
(at start (not (started_o12)))
(at start (not (stacks-avail_n8)))
)
)
(:durative-action SHIP-ORDER_O12_N7_N8
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o12))
(at start (made_p22))
(at start (made_p21))
(at start (made_p18))
(at start (made_p16))
(at start (made_p15))
(at start (made_p14))
(at start (made_p9))
(at start (made_p4))
(at start (made_p3))
(at start (stacks-avail_n7))
)
:effect
(and
(at end (stacks-avail_n8))
(at end (shipped_o12))
(at start (not (started_o12)))
(at start (not (stacks-avail_n7)))
)
)
(:durative-action SHIP-ORDER_O12_N6_N7
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o12))
(at start (made_p22))
(at start (made_p21))
(at start (made_p18))
(at start (made_p16))
(at start (made_p15))
(at start (made_p14))
(at start (made_p9))
(at start (made_p4))
(at start (made_p3))
(at start (stacks-avail_n6))
)
:effect
(and
(at end (stacks-avail_n7))
(at end (shipped_o12))
(at start (not (started_o12)))
(at start (not (stacks-avail_n6)))
)
)
(:durative-action SHIP-ORDER_O12_N5_N6
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o12))
(at start (made_p22))
(at start (made_p21))
(at start (made_p18))
(at start (made_p16))
(at start (made_p15))
(at start (made_p14))
(at start (made_p9))
(at start (made_p4))
(at start (made_p3))
(at start (stacks-avail_n5))
)
:effect
(and
(at end (stacks-avail_n6))
(at end (shipped_o12))
(at start (not (started_o12)))
(at start (not (stacks-avail_n5)))
)
)
(:durative-action SHIP-ORDER_O12_N4_N5
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o12))
(at start (made_p22))
(at start (made_p21))
(at start (made_p18))
(at start (made_p16))
(at start (made_p15))
(at start (made_p14))
(at start (made_p9))
(at start (made_p4))
(at start (made_p3))
(at start (stacks-avail_n4))
)
:effect
(and
(at end (stacks-avail_n5))
(at end (shipped_o12))
(at start (not (started_o12)))
(at start (not (stacks-avail_n4)))
)
)
(:durative-action SHIP-ORDER_O12_N3_N4
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o12))
(at start (made_p22))
(at start (made_p21))
(at start (made_p18))
(at start (made_p16))
(at start (made_p15))
(at start (made_p14))
(at start (made_p9))
(at start (made_p4))
(at start (made_p3))
(at start (stacks-avail_n3))
)
:effect
(and
(at end (stacks-avail_n4))
(at end (shipped_o12))
(at start (not (started_o12)))
(at start (not (stacks-avail_n3)))
)
)
(:durative-action SHIP-ORDER_O12_N2_N3
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o12))
(at start (made_p22))
(at start (made_p21))
(at start (made_p18))
(at start (made_p16))
(at start (made_p15))
(at start (made_p14))
(at start (made_p9))
(at start (made_p4))
(at start (made_p3))
(at start (stacks-avail_n2))
)
:effect
(and
(at end (stacks-avail_n3))
(at end (shipped_o12))
(at start (not (started_o12)))
(at start (not (stacks-avail_n2)))
)
)
(:durative-action SHIP-ORDER_O12_N1_N2
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o12))
(at start (made_p22))
(at start (made_p21))
(at start (made_p18))
(at start (made_p16))
(at start (made_p15))
(at start (made_p14))
(at start (made_p9))
(at start (made_p4))
(at start (made_p3))
(at start (stacks-avail_n1))
)
:effect
(and
(at end (stacks-avail_n2))
(at end (shipped_o12))
(at start (not (started_o12)))
(at start (not (stacks-avail_n1)))
)
)
(:durative-action SHIP-ORDER_O12_N0_N1
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o12))
(at start (made_p22))
(at start (made_p21))
(at start (made_p18))
(at start (made_p16))
(at start (made_p15))
(at start (made_p14))
(at start (made_p9))
(at start (made_p4))
(at start (made_p3))
(at start (stacks-avail_n0))
)
:effect
(and
(at end (stacks-avail_n1))
(at end (shipped_o12))
(at start (not (started_o12)))
(at start (not (stacks-avail_n0)))
)
)
(:durative-action SHIP-ORDER_O11_N12_N13
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o11))
(at start (made_p23))
(at start (made_p17))
(at start (made_p15))
(at start (made_p12))
(at start (made_p11))
(at start (made_p9))
(at start (made_p7))
(at start (made_p2))
(at start (stacks-avail_n12))
)
:effect
(and
(at end (stacks-avail_n13))
(at end (shipped_o11))
(at start (not (started_o11)))
(at start (not (stacks-avail_n12)))
)
)
(:durative-action SHIP-ORDER_O11_N11_N12
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o11))
(at start (made_p23))
(at start (made_p17))
(at start (made_p15))
(at start (made_p12))
(at start (made_p11))
(at start (made_p9))
(at start (made_p7))
(at start (made_p2))
(at start (stacks-avail_n11))
)
:effect
(and
(at end (stacks-avail_n12))
(at end (shipped_o11))
(at start (not (started_o11)))
(at start (not (stacks-avail_n11)))
)
)
(:durative-action SHIP-ORDER_O11_N10_N11
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o11))
(at start (made_p23))
(at start (made_p17))
(at start (made_p15))
(at start (made_p12))
(at start (made_p11))
(at start (made_p9))
(at start (made_p7))
(at start (made_p2))
(at start (stacks-avail_n10))
)
:effect
(and
(at end (stacks-avail_n11))
(at end (shipped_o11))
(at start (not (started_o11)))
(at start (not (stacks-avail_n10)))
)
)
(:durative-action SHIP-ORDER_O11_N9_N10
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o11))
(at start (made_p23))
(at start (made_p17))
(at start (made_p15))
(at start (made_p12))
(at start (made_p11))
(at start (made_p9))
(at start (made_p7))
(at start (made_p2))
(at start (stacks-avail_n9))
)
:effect
(and
(at end (stacks-avail_n10))
(at end (shipped_o11))
(at start (not (started_o11)))
(at start (not (stacks-avail_n9)))
)
)
(:durative-action SHIP-ORDER_O11_N8_N9
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o11))
(at start (made_p23))
(at start (made_p17))
(at start (made_p15))
(at start (made_p12))
(at start (made_p11))
(at start (made_p9))
(at start (made_p7))
(at start (made_p2))
(at start (stacks-avail_n8))
)
:effect
(and
(at end (stacks-avail_n9))
(at end (shipped_o11))
(at start (not (started_o11)))
(at start (not (stacks-avail_n8)))
)
)
(:durative-action SHIP-ORDER_O11_N7_N8
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o11))
(at start (made_p23))
(at start (made_p17))
(at start (made_p15))
(at start (made_p12))
(at start (made_p11))
(at start (made_p9))
(at start (made_p7))
(at start (made_p2))
(at start (stacks-avail_n7))
)
:effect
(and
(at end (stacks-avail_n8))
(at end (shipped_o11))
(at start (not (started_o11)))
(at start (not (stacks-avail_n7)))
)
)
(:durative-action SHIP-ORDER_O11_N6_N7
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o11))
(at start (made_p23))
(at start (made_p17))
(at start (made_p15))
(at start (made_p12))
(at start (made_p11))
(at start (made_p9))
(at start (made_p7))
(at start (made_p2))
(at start (stacks-avail_n6))
)
:effect
(and
(at end (stacks-avail_n7))
(at end (shipped_o11))
(at start (not (started_o11)))
(at start (not (stacks-avail_n6)))
)
)
(:durative-action SHIP-ORDER_O11_N5_N6
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o11))
(at start (made_p23))
(at start (made_p17))
(at start (made_p15))
(at start (made_p12))
(at start (made_p11))
(at start (made_p9))
(at start (made_p7))
(at start (made_p2))
(at start (stacks-avail_n5))
)
:effect
(and
(at end (stacks-avail_n6))
(at end (shipped_o11))
(at start (not (started_o11)))
(at start (not (stacks-avail_n5)))
)
)
(:durative-action SHIP-ORDER_O11_N4_N5
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o11))
(at start (made_p23))
(at start (made_p17))
(at start (made_p15))
(at start (made_p12))
(at start (made_p11))
(at start (made_p9))
(at start (made_p7))
(at start (made_p2))
(at start (stacks-avail_n4))
)
:effect
(and
(at end (stacks-avail_n5))
(at end (shipped_o11))
(at start (not (started_o11)))
(at start (not (stacks-avail_n4)))
)
)
(:durative-action SHIP-ORDER_O11_N3_N4
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o11))
(at start (made_p23))
(at start (made_p17))
(at start (made_p15))
(at start (made_p12))
(at start (made_p11))
(at start (made_p9))
(at start (made_p7))
(at start (made_p2))
(at start (stacks-avail_n3))
)
:effect
(and
(at end (stacks-avail_n4))
(at end (shipped_o11))
(at start (not (started_o11)))
(at start (not (stacks-avail_n3)))
)
)
(:durative-action SHIP-ORDER_O11_N2_N3
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o11))
(at start (made_p23))
(at start (made_p17))
(at start (made_p15))
(at start (made_p12))
(at start (made_p11))
(at start (made_p9))
(at start (made_p7))
(at start (made_p2))
(at start (stacks-avail_n2))
)
:effect
(and
(at end (stacks-avail_n3))
(at end (shipped_o11))
(at start (not (started_o11)))
(at start (not (stacks-avail_n2)))
)
)
(:durative-action SHIP-ORDER_O11_N1_N2
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o11))
(at start (made_p23))
(at start (made_p17))
(at start (made_p15))
(at start (made_p12))
(at start (made_p11))
(at start (made_p9))
(at start (made_p7))
(at start (made_p2))
(at start (stacks-avail_n1))
)
:effect
(and
(at end (stacks-avail_n2))
(at end (shipped_o11))
(at start (not (started_o11)))
(at start (not (stacks-avail_n1)))
)
)
(:durative-action SHIP-ORDER_O11_N0_N1
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o11))
(at start (made_p23))
(at start (made_p17))
(at start (made_p15))
(at start (made_p12))
(at start (made_p11))
(at start (made_p9))
(at start (made_p7))
(at start (made_p2))
(at start (stacks-avail_n0))
)
:effect
(and
(at end (stacks-avail_n1))
(at end (shipped_o11))
(at start (not (started_o11)))
(at start (not (stacks-avail_n0)))
)
)
(:durative-action SHIP-ORDER_O10_N12_N13
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o10))
(at start (made_p21))
(at start (made_p19))
(at start (made_p17))
(at start (made_p15))
(at start (made_p14))
(at start (made_p4))
(at start (stacks-avail_n12))
)
:effect
(and
(at end (stacks-avail_n13))
(at end (shipped_o10))
(at start (not (started_o10)))
(at start (not (stacks-avail_n12)))
)
)
(:durative-action SHIP-ORDER_O10_N11_N12
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o10))
(at start (made_p21))
(at start (made_p19))
(at start (made_p17))
(at start (made_p15))
(at start (made_p14))
(at start (made_p4))
(at start (stacks-avail_n11))
)
:effect
(and
(at end (stacks-avail_n12))
(at end (shipped_o10))
(at start (not (started_o10)))
(at start (not (stacks-avail_n11)))
)
)
(:durative-action SHIP-ORDER_O10_N10_N11
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o10))
(at start (made_p21))
(at start (made_p19))
(at start (made_p17))
(at start (made_p15))
(at start (made_p14))
(at start (made_p4))
(at start (stacks-avail_n10))
)
:effect
(and
(at end (stacks-avail_n11))
(at end (shipped_o10))
(at start (not (started_o10)))
(at start (not (stacks-avail_n10)))
)
)
(:durative-action SHIP-ORDER_O10_N9_N10
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o10))
(at start (made_p21))
(at start (made_p19))
(at start (made_p17))
(at start (made_p15))
(at start (made_p14))
(at start (made_p4))
(at start (stacks-avail_n9))
)
:effect
(and
(at end (stacks-avail_n10))
(at end (shipped_o10))
(at start (not (started_o10)))
(at start (not (stacks-avail_n9)))
)
)
(:durative-action SHIP-ORDER_O10_N8_N9
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o10))
(at start (made_p21))
(at start (made_p19))
(at start (made_p17))
(at start (made_p15))
(at start (made_p14))
(at start (made_p4))
(at start (stacks-avail_n8))
)
:effect
(and
(at end (stacks-avail_n9))
(at end (shipped_o10))
(at start (not (started_o10)))
(at start (not (stacks-avail_n8)))
)
)
(:durative-action SHIP-ORDER_O10_N7_N8
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o10))
(at start (made_p21))
(at start (made_p19))
(at start (made_p17))
(at start (made_p15))
(at start (made_p14))
(at start (made_p4))
(at start (stacks-avail_n7))
)
:effect
(and
(at end (stacks-avail_n8))
(at end (shipped_o10))
(at start (not (started_o10)))
(at start (not (stacks-avail_n7)))
)
)
(:durative-action SHIP-ORDER_O10_N6_N7
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o10))
(at start (made_p21))
(at start (made_p19))
(at start (made_p17))
(at start (made_p15))
(at start (made_p14))
(at start (made_p4))
(at start (stacks-avail_n6))
)
:effect
(and
(at end (stacks-avail_n7))
(at end (shipped_o10))
(at start (not (started_o10)))
(at start (not (stacks-avail_n6)))
)
)
(:durative-action SHIP-ORDER_O10_N5_N6
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o10))
(at start (made_p21))
(at start (made_p19))
(at start (made_p17))
(at start (made_p15))
(at start (made_p14))
(at start (made_p4))
(at start (stacks-avail_n5))
)
:effect
(and
(at end (stacks-avail_n6))
(at end (shipped_o10))
(at start (not (started_o10)))
(at start (not (stacks-avail_n5)))
)
)
(:durative-action SHIP-ORDER_O10_N4_N5
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o10))
(at start (made_p21))
(at start (made_p19))
(at start (made_p17))
(at start (made_p15))
(at start (made_p14))
(at start (made_p4))
(at start (stacks-avail_n4))
)
:effect
(and
(at end (stacks-avail_n5))
(at end (shipped_o10))
(at start (not (started_o10)))
(at start (not (stacks-avail_n4)))
)
)
(:durative-action SHIP-ORDER_O10_N3_N4
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o10))
(at start (made_p21))
(at start (made_p19))
(at start (made_p17))
(at start (made_p15))
(at start (made_p14))
(at start (made_p4))
(at start (stacks-avail_n3))
)
:effect
(and
(at end (stacks-avail_n4))
(at end (shipped_o10))
(at start (not (started_o10)))
(at start (not (stacks-avail_n3)))
)
)
(:durative-action SHIP-ORDER_O10_N2_N3
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o10))
(at start (made_p21))
(at start (made_p19))
(at start (made_p17))
(at start (made_p15))
(at start (made_p14))
(at start (made_p4))
(at start (stacks-avail_n2))
)
:effect
(and
(at end (stacks-avail_n3))
(at end (shipped_o10))
(at start (not (started_o10)))
(at start (not (stacks-avail_n2)))
)
)
(:durative-action SHIP-ORDER_O10_N1_N2
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o10))
(at start (made_p21))
(at start (made_p19))
(at start (made_p17))
(at start (made_p15))
(at start (made_p14))
(at start (made_p4))
(at start (stacks-avail_n1))
)
:effect
(and
(at end (stacks-avail_n2))
(at end (shipped_o10))
(at start (not (started_o10)))
(at start (not (stacks-avail_n1)))
)
)
(:durative-action SHIP-ORDER_O10_N0_N1
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o10))
(at start (made_p21))
(at start (made_p19))
(at start (made_p17))
(at start (made_p15))
(at start (made_p14))
(at start (made_p4))
(at start (stacks-avail_n0))
)
:effect
(and
(at end (stacks-avail_n1))
(at end (shipped_o10))
(at start (not (started_o10)))
(at start (not (stacks-avail_n0)))
)
)
(:durative-action SHIP-ORDER_O9_N12_N13
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o9))
(at start (made_p24))
(at start (made_p23))
(at start (made_p20))
(at start (made_p13))
(at start (made_p12))
(at start (made_p10))
(at start (made_p8))
(at start (made_p3))
(at start (stacks-avail_n12))
)
:effect
(and
(at end (stacks-avail_n13))
(at end (shipped_o9))
(at start (not (started_o9)))
(at start (not (stacks-avail_n12)))
)
)
(:durative-action SHIP-ORDER_O9_N11_N12
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o9))
(at start (made_p24))
(at start (made_p23))
(at start (made_p20))
(at start (made_p13))
(at start (made_p12))
(at start (made_p10))
(at start (made_p8))
(at start (made_p3))
(at start (stacks-avail_n11))
)
:effect
(and
(at end (stacks-avail_n12))
(at end (shipped_o9))
(at start (not (started_o9)))
(at start (not (stacks-avail_n11)))
)
)
(:durative-action SHIP-ORDER_O9_N10_N11
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o9))
(at start (made_p24))
(at start (made_p23))
(at start (made_p20))
(at start (made_p13))
(at start (made_p12))
(at start (made_p10))
(at start (made_p8))
(at start (made_p3))
(at start (stacks-avail_n10))
)
:effect
(and
(at end (stacks-avail_n11))
(at end (shipped_o9))
(at start (not (started_o9)))
(at start (not (stacks-avail_n10)))
)
)
(:durative-action SHIP-ORDER_O9_N9_N10
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o9))
(at start (made_p24))
(at start (made_p23))
(at start (made_p20))
(at start (made_p13))
(at start (made_p12))
(at start (made_p10))
(at start (made_p8))
(at start (made_p3))
(at start (stacks-avail_n9))
)
:effect
(and
(at end (stacks-avail_n10))
(at end (shipped_o9))
(at start (not (started_o9)))
(at start (not (stacks-avail_n9)))
)
)
(:durative-action SHIP-ORDER_O9_N8_N9
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o9))
(at start (made_p24))
(at start (made_p23))
(at start (made_p20))
(at start (made_p13))
(at start (made_p12))
(at start (made_p10))
(at start (made_p8))
(at start (made_p3))
(at start (stacks-avail_n8))
)
:effect
(and
(at end (stacks-avail_n9))
(at end (shipped_o9))
(at start (not (started_o9)))
(at start (not (stacks-avail_n8)))
)
)
(:durative-action SHIP-ORDER_O9_N7_N8
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o9))
(at start (made_p24))
(at start (made_p23))
(at start (made_p20))
(at start (made_p13))
(at start (made_p12))
(at start (made_p10))
(at start (made_p8))
(at start (made_p3))
(at start (stacks-avail_n7))
)
:effect
(and
(at end (stacks-avail_n8))
(at end (shipped_o9))
(at start (not (started_o9)))
(at start (not (stacks-avail_n7)))
)
)
(:durative-action SHIP-ORDER_O9_N6_N7
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o9))
(at start (made_p24))
(at start (made_p23))
(at start (made_p20))
(at start (made_p13))
(at start (made_p12))
(at start (made_p10))
(at start (made_p8))
(at start (made_p3))
(at start (stacks-avail_n6))
)
:effect
(and
(at end (stacks-avail_n7))
(at end (shipped_o9))
(at start (not (started_o9)))
(at start (not (stacks-avail_n6)))
)
)
(:durative-action SHIP-ORDER_O9_N5_N6
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o9))
(at start (made_p24))
(at start (made_p23))
(at start (made_p20))
(at start (made_p13))
(at start (made_p12))
(at start (made_p10))
(at start (made_p8))
(at start (made_p3))
(at start (stacks-avail_n5))
)
:effect
(and
(at end (stacks-avail_n6))
(at end (shipped_o9))
(at start (not (started_o9)))
(at start (not (stacks-avail_n5)))
)
)
(:durative-action SHIP-ORDER_O9_N4_N5
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o9))
(at start (made_p24))
(at start (made_p23))
(at start (made_p20))
(at start (made_p13))
(at start (made_p12))
(at start (made_p10))
(at start (made_p8))
(at start (made_p3))
(at start (stacks-avail_n4))
)
:effect
(and
(at end (stacks-avail_n5))
(at end (shipped_o9))
(at start (not (started_o9)))
(at start (not (stacks-avail_n4)))
)
)
(:durative-action SHIP-ORDER_O9_N3_N4
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o9))
(at start (made_p24))
(at start (made_p23))
(at start (made_p20))
(at start (made_p13))
(at start (made_p12))
(at start (made_p10))
(at start (made_p8))
(at start (made_p3))
(at start (stacks-avail_n3))
)
:effect
(and
(at end (stacks-avail_n4))
(at end (shipped_o9))
(at start (not (started_o9)))
(at start (not (stacks-avail_n3)))
)
)
(:durative-action SHIP-ORDER_O9_N2_N3
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o9))
(at start (made_p24))
(at start (made_p23))
(at start (made_p20))
(at start (made_p13))
(at start (made_p12))
(at start (made_p10))
(at start (made_p8))
(at start (made_p3))
(at start (stacks-avail_n2))
)
:effect
(and
(at end (stacks-avail_n3))
(at end (shipped_o9))
(at start (not (started_o9)))
(at start (not (stacks-avail_n2)))
)
)
(:durative-action SHIP-ORDER_O9_N1_N2
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o9))
(at start (made_p24))
(at start (made_p23))
(at start (made_p20))
(at start (made_p13))
(at start (made_p12))
(at start (made_p10))
(at start (made_p8))
(at start (made_p3))
(at start (stacks-avail_n1))
)
:effect
(and
(at end (stacks-avail_n2))
(at end (shipped_o9))
(at start (not (started_o9)))
(at start (not (stacks-avail_n1)))
)
)
(:durative-action SHIP-ORDER_O9_N0_N1
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o9))
(at start (made_p24))
(at start (made_p23))
(at start (made_p20))
(at start (made_p13))
(at start (made_p12))
(at start (made_p10))
(at start (made_p8))
(at start (made_p3))
(at start (stacks-avail_n0))
)
:effect
(and
(at end (stacks-avail_n1))
(at end (shipped_o9))
(at start (not (started_o9)))
(at start (not (stacks-avail_n0)))
)
)
(:durative-action SHIP-ORDER_O8_N12_N13
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o8))
(at start (made_p24))
(at start (made_p23))
(at start (made_p22))
(at start (made_p10))
(at start (made_p3))
(at start (made_p2))
(at start (stacks-avail_n12))
)
:effect
(and
(at end (stacks-avail_n13))
(at end (shipped_o8))
(at start (not (started_o8)))
(at start (not (stacks-avail_n12)))
)
)
(:durative-action SHIP-ORDER_O8_N11_N12
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o8))
(at start (made_p24))
(at start (made_p23))
(at start (made_p22))
(at start (made_p10))
(at start (made_p3))
(at start (made_p2))
(at start (stacks-avail_n11))
)
:effect
(and
(at end (stacks-avail_n12))
(at end (shipped_o8))
(at start (not (started_o8)))
(at start (not (stacks-avail_n11)))
)
)
(:durative-action SHIP-ORDER_O8_N10_N11
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o8))
(at start (made_p24))
(at start (made_p23))
(at start (made_p22))
(at start (made_p10))
(at start (made_p3))
(at start (made_p2))
(at start (stacks-avail_n10))
)
:effect
(and
(at end (stacks-avail_n11))
(at end (shipped_o8))
(at start (not (started_o8)))
(at start (not (stacks-avail_n10)))
)
)
(:durative-action SHIP-ORDER_O8_N9_N10
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o8))
(at start (made_p24))
(at start (made_p23))
(at start (made_p22))
(at start (made_p10))
(at start (made_p3))
(at start (made_p2))
(at start (stacks-avail_n9))
)
:effect
(and
(at end (stacks-avail_n10))
(at end (shipped_o8))
(at start (not (started_o8)))
(at start (not (stacks-avail_n9)))
)
)
(:durative-action SHIP-ORDER_O8_N8_N9
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o8))
(at start (made_p24))
(at start (made_p23))
(at start (made_p22))
(at start (made_p10))
(at start (made_p3))
(at start (made_p2))
(at start (stacks-avail_n8))
)
:effect
(and
(at end (stacks-avail_n9))
(at end (shipped_o8))
(at start (not (started_o8)))
(at start (not (stacks-avail_n8)))
)
)
(:durative-action SHIP-ORDER_O8_N7_N8
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o8))
(at start (made_p24))
(at start (made_p23))
(at start (made_p22))
(at start (made_p10))
(at start (made_p3))
(at start (made_p2))
(at start (stacks-avail_n7))
)
:effect
(and
(at end (stacks-avail_n8))
(at end (shipped_o8))
(at start (not (started_o8)))
(at start (not (stacks-avail_n7)))
)
)
(:durative-action SHIP-ORDER_O8_N6_N7
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o8))
(at start (made_p24))
(at start (made_p23))
(at start (made_p22))
(at start (made_p10))
(at start (made_p3))
(at start (made_p2))
(at start (stacks-avail_n6))
)
:effect
(and
(at end (stacks-avail_n7))
(at end (shipped_o8))
(at start (not (started_o8)))
(at start (not (stacks-avail_n6)))
)
)
(:durative-action SHIP-ORDER_O8_N5_N6
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o8))
(at start (made_p24))
(at start (made_p23))
(at start (made_p22))
(at start (made_p10))
(at start (made_p3))
(at start (made_p2))
(at start (stacks-avail_n5))
)
:effect
(and
(at end (stacks-avail_n6))
(at end (shipped_o8))
(at start (not (started_o8)))
(at start (not (stacks-avail_n5)))
)
)
(:durative-action SHIP-ORDER_O8_N4_N5
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o8))
(at start (made_p24))
(at start (made_p23))
(at start (made_p22))
(at start (made_p10))
(at start (made_p3))
(at start (made_p2))
(at start (stacks-avail_n4))
)
:effect
(and
(at end (stacks-avail_n5))
(at end (shipped_o8))
(at start (not (started_o8)))
(at start (not (stacks-avail_n4)))
)
)
(:durative-action SHIP-ORDER_O8_N3_N4
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o8))
(at start (made_p24))
(at start (made_p23))
(at start (made_p22))
(at start (made_p10))
(at start (made_p3))
(at start (made_p2))
(at start (stacks-avail_n3))
)
:effect
(and
(at end (stacks-avail_n4))
(at end (shipped_o8))
(at start (not (started_o8)))
(at start (not (stacks-avail_n3)))
)
)
(:durative-action SHIP-ORDER_O8_N2_N3
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o8))
(at start (made_p24))
(at start (made_p23))
(at start (made_p22))
(at start (made_p10))
(at start (made_p3))
(at start (made_p2))
(at start (stacks-avail_n2))
)
:effect
(and
(at end (stacks-avail_n3))
(at end (shipped_o8))
(at start (not (started_o8)))
(at start (not (stacks-avail_n2)))
)
)
(:durative-action SHIP-ORDER_O8_N1_N2
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o8))
(at start (made_p24))
(at start (made_p23))
(at start (made_p22))
(at start (made_p10))
(at start (made_p3))
(at start (made_p2))
(at start (stacks-avail_n1))
)
:effect
(and
(at end (stacks-avail_n2))
(at end (shipped_o8))
(at start (not (started_o8)))
(at start (not (stacks-avail_n1)))
)
)
(:durative-action SHIP-ORDER_O8_N0_N1
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o8))
(at start (made_p24))
(at start (made_p23))
(at start (made_p22))
(at start (made_p10))
(at start (made_p3))
(at start (made_p2))
(at start (stacks-avail_n0))
)
:effect
(and
(at end (stacks-avail_n1))
(at end (shipped_o8))
(at start (not (started_o8)))
(at start (not (stacks-avail_n0)))
)
)
(:durative-action SHIP-ORDER_O7_N12_N13
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o7))
(at start (made_p24))
(at start (made_p22))
(at start (made_p13))
(at start (made_p6))
(at start (made_p3))
(at start (made_p2))
(at start (stacks-avail_n12))
)
:effect
(and
(at end (stacks-avail_n13))
(at end (shipped_o7))
(at start (not (started_o7)))
(at start (not (stacks-avail_n12)))
)
)
(:durative-action SHIP-ORDER_O7_N11_N12
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o7))
(at start (made_p24))
(at start (made_p22))
(at start (made_p13))
(at start (made_p6))
(at start (made_p3))
(at start (made_p2))
(at start (stacks-avail_n11))
)
:effect
(and
(at end (stacks-avail_n12))
(at end (shipped_o7))
(at start (not (started_o7)))
(at start (not (stacks-avail_n11)))
)
)
(:durative-action SHIP-ORDER_O7_N10_N11
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o7))
(at start (made_p24))
(at start (made_p22))
(at start (made_p13))
(at start (made_p6))
(at start (made_p3))
(at start (made_p2))
(at start (stacks-avail_n10))
)
:effect
(and
(at end (stacks-avail_n11))
(at end (shipped_o7))
(at start (not (started_o7)))
(at start (not (stacks-avail_n10)))
)
)
(:durative-action SHIP-ORDER_O7_N9_N10
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o7))
(at start (made_p24))
(at start (made_p22))
(at start (made_p13))
(at start (made_p6))
(at start (made_p3))
(at start (made_p2))
(at start (stacks-avail_n9))
)
:effect
(and
(at end (stacks-avail_n10))
(at end (shipped_o7))
(at start (not (started_o7)))
(at start (not (stacks-avail_n9)))
)
)
(:durative-action SHIP-ORDER_O7_N8_N9
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o7))
(at start (made_p24))
(at start (made_p22))
(at start (made_p13))
(at start (made_p6))
(at start (made_p3))
(at start (made_p2))
(at start (stacks-avail_n8))
)
:effect
(and
(at end (stacks-avail_n9))
(at end (shipped_o7))
(at start (not (started_o7)))
(at start (not (stacks-avail_n8)))
)
)
(:durative-action SHIP-ORDER_O7_N7_N8
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o7))
(at start (made_p24))
(at start (made_p22))
(at start (made_p13))
(at start (made_p6))
(at start (made_p3))
(at start (made_p2))
(at start (stacks-avail_n7))
)
:effect
(and
(at end (stacks-avail_n8))
(at end (shipped_o7))
(at start (not (started_o7)))
(at start (not (stacks-avail_n7)))
)
)
(:durative-action SHIP-ORDER_O7_N6_N7
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o7))
(at start (made_p24))
(at start (made_p22))
(at start (made_p13))
(at start (made_p6))
(at start (made_p3))
(at start (made_p2))
(at start (stacks-avail_n6))
)
:effect
(and
(at end (stacks-avail_n7))
(at end (shipped_o7))
(at start (not (started_o7)))
(at start (not (stacks-avail_n6)))
)
)
(:durative-action SHIP-ORDER_O7_N5_N6
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o7))
(at start (made_p24))
(at start (made_p22))
(at start (made_p13))
(at start (made_p6))
(at start (made_p3))
(at start (made_p2))
(at start (stacks-avail_n5))
)
:effect
(and
(at end (stacks-avail_n6))
(at end (shipped_o7))
(at start (not (started_o7)))
(at start (not (stacks-avail_n5)))
)
)
(:durative-action SHIP-ORDER_O7_N4_N5
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o7))
(at start (made_p24))
(at start (made_p22))
(at start (made_p13))
(at start (made_p6))
(at start (made_p3))
(at start (made_p2))
(at start (stacks-avail_n4))
)
:effect
(and
(at end (stacks-avail_n5))
(at end (shipped_o7))
(at start (not (started_o7)))
(at start (not (stacks-avail_n4)))
)
)
(:durative-action SHIP-ORDER_O7_N3_N4
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o7))
(at start (made_p24))
(at start (made_p22))
(at start (made_p13))
(at start (made_p6))
(at start (made_p3))
(at start (made_p2))
(at start (stacks-avail_n3))
)
:effect
(and
(at end (stacks-avail_n4))
(at end (shipped_o7))
(at start (not (started_o7)))
(at start (not (stacks-avail_n3)))
)
)
(:durative-action SHIP-ORDER_O7_N2_N3
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o7))
(at start (made_p24))
(at start (made_p22))
(at start (made_p13))
(at start (made_p6))
(at start (made_p3))
(at start (made_p2))
(at start (stacks-avail_n2))
)
:effect
(and
(at end (stacks-avail_n3))
(at end (shipped_o7))
(at start (not (started_o7)))
(at start (not (stacks-avail_n2)))
)
)
(:durative-action SHIP-ORDER_O7_N1_N2
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o7))
(at start (made_p24))
(at start (made_p22))
(at start (made_p13))
(at start (made_p6))
(at start (made_p3))
(at start (made_p2))
(at start (stacks-avail_n1))
)
:effect
(and
(at end (stacks-avail_n2))
(at end (shipped_o7))
(at start (not (started_o7)))
(at start (not (stacks-avail_n1)))
)
)
(:durative-action SHIP-ORDER_O7_N0_N1
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o7))
(at start (made_p24))
(at start (made_p22))
(at start (made_p13))
(at start (made_p6))
(at start (made_p3))
(at start (made_p2))
(at start (stacks-avail_n0))
)
:effect
(and
(at end (stacks-avail_n1))
(at end (shipped_o7))
(at start (not (started_o7)))
(at start (not (stacks-avail_n0)))
)
)
(:durative-action SHIP-ORDER_O6_N12_N13
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o6))
(at start (made_p21))
(at start (made_p19))
(at start (made_p18))
(at start (made_p17))
(at start (made_p16))
(at start (made_p4))
(at start (stacks-avail_n12))
)
:effect
(and
(at end (stacks-avail_n13))
(at end (shipped_o6))
(at start (not (started_o6)))
(at start (not (stacks-avail_n12)))
)
)
(:durative-action SHIP-ORDER_O6_N11_N12
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o6))
(at start (made_p21))
(at start (made_p19))
(at start (made_p18))
(at start (made_p17))
(at start (made_p16))
(at start (made_p4))
(at start (stacks-avail_n11))
)
:effect
(and
(at end (stacks-avail_n12))
(at end (shipped_o6))
(at start (not (started_o6)))
(at start (not (stacks-avail_n11)))
)
)
(:durative-action SHIP-ORDER_O6_N10_N11
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o6))
(at start (made_p21))
(at start (made_p19))
(at start (made_p18))
(at start (made_p17))
(at start (made_p16))
(at start (made_p4))
(at start (stacks-avail_n10))
)
:effect
(and
(at end (stacks-avail_n11))
(at end (shipped_o6))
(at start (not (started_o6)))
(at start (not (stacks-avail_n10)))
)
)
(:durative-action SHIP-ORDER_O6_N9_N10
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o6))
(at start (made_p21))
(at start (made_p19))
(at start (made_p18))
(at start (made_p17))
(at start (made_p16))
(at start (made_p4))
(at start (stacks-avail_n9))
)
:effect
(and
(at end (stacks-avail_n10))
(at end (shipped_o6))
(at start (not (started_o6)))
(at start (not (stacks-avail_n9)))
)
)
(:durative-action SHIP-ORDER_O6_N8_N9
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o6))
(at start (made_p21))
(at start (made_p19))
(at start (made_p18))
(at start (made_p17))
(at start (made_p16))
(at start (made_p4))
(at start (stacks-avail_n8))
)
:effect
(and
(at end (stacks-avail_n9))
(at end (shipped_o6))
(at start (not (started_o6)))
(at start (not (stacks-avail_n8)))
)
)
(:durative-action SHIP-ORDER_O6_N7_N8
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o6))
(at start (made_p21))
(at start (made_p19))
(at start (made_p18))
(at start (made_p17))
(at start (made_p16))
(at start (made_p4))
(at start (stacks-avail_n7))
)
:effect
(and
(at end (stacks-avail_n8))
(at end (shipped_o6))
(at start (not (started_o6)))
(at start (not (stacks-avail_n7)))
)
)
(:durative-action SHIP-ORDER_O6_N6_N7
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o6))
(at start (made_p21))
(at start (made_p19))
(at start (made_p18))
(at start (made_p17))
(at start (made_p16))
(at start (made_p4))
(at start (stacks-avail_n6))
)
:effect
(and
(at end (stacks-avail_n7))
(at end (shipped_o6))
(at start (not (started_o6)))
(at start (not (stacks-avail_n6)))
)
)
(:durative-action SHIP-ORDER_O6_N5_N6
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o6))
(at start (made_p21))
(at start (made_p19))
(at start (made_p18))
(at start (made_p17))
(at start (made_p16))
(at start (made_p4))
(at start (stacks-avail_n5))
)
:effect
(and
(at end (stacks-avail_n6))
(at end (shipped_o6))
(at start (not (started_o6)))
(at start (not (stacks-avail_n5)))
)
)
(:durative-action SHIP-ORDER_O6_N4_N5
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o6))
(at start (made_p21))
(at start (made_p19))
(at start (made_p18))
(at start (made_p17))
(at start (made_p16))
(at start (made_p4))
(at start (stacks-avail_n4))
)
:effect
(and
(at end (stacks-avail_n5))
(at end (shipped_o6))
(at start (not (started_o6)))
(at start (not (stacks-avail_n4)))
)
)
(:durative-action SHIP-ORDER_O6_N3_N4
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o6))
(at start (made_p21))
(at start (made_p19))
(at start (made_p18))
(at start (made_p17))
(at start (made_p16))
(at start (made_p4))
(at start (stacks-avail_n3))
)
:effect
(and
(at end (stacks-avail_n4))
(at end (shipped_o6))
(at start (not (started_o6)))
(at start (not (stacks-avail_n3)))
)
)
(:durative-action SHIP-ORDER_O6_N2_N3
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o6))
(at start (made_p21))
(at start (made_p19))
(at start (made_p18))
(at start (made_p17))
(at start (made_p16))
(at start (made_p4))
(at start (stacks-avail_n2))
)
:effect
(and
(at end (stacks-avail_n3))
(at end (shipped_o6))
(at start (not (started_o6)))
(at start (not (stacks-avail_n2)))
)
)
(:durative-action SHIP-ORDER_O6_N1_N2
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o6))
(at start (made_p21))
(at start (made_p19))
(at start (made_p18))
(at start (made_p17))
(at start (made_p16))
(at start (made_p4))
(at start (stacks-avail_n1))
)
:effect
(and
(at end (stacks-avail_n2))
(at end (shipped_o6))
(at start (not (started_o6)))
(at start (not (stacks-avail_n1)))
)
)
(:durative-action SHIP-ORDER_O6_N0_N1
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o6))
(at start (made_p21))
(at start (made_p19))
(at start (made_p18))
(at start (made_p17))
(at start (made_p16))
(at start (made_p4))
(at start (stacks-avail_n0))
)
:effect
(and
(at end (stacks-avail_n1))
(at end (shipped_o6))
(at start (not (started_o6)))
(at start (not (stacks-avail_n0)))
)
)
(:durative-action SHIP-ORDER_O5_N12_N13
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o5))
(at start (made_p25))
(at start (made_p21))
(at start (made_p18))
(at start (made_p17))
(at start (made_p15))
(at start (made_p9))
(at start (made_p7))
(at start (stacks-avail_n12))
)
:effect
(and
(at end (stacks-avail_n13))
(at end (shipped_o5))
(at start (not (started_o5)))
(at start (not (stacks-avail_n12)))
)
)
(:durative-action SHIP-ORDER_O5_N11_N12
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o5))
(at start (made_p25))
(at start (made_p21))
(at start (made_p18))
(at start (made_p17))
(at start (made_p15))
(at start (made_p9))
(at start (made_p7))
(at start (stacks-avail_n11))
)
:effect
(and
(at end (stacks-avail_n12))
(at end (shipped_o5))
(at start (not (started_o5)))
(at start (not (stacks-avail_n11)))
)
)
(:durative-action SHIP-ORDER_O5_N10_N11
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o5))
(at start (made_p25))
(at start (made_p21))
(at start (made_p18))
(at start (made_p17))
(at start (made_p15))
(at start (made_p9))
(at start (made_p7))
(at start (stacks-avail_n10))
)
:effect
(and
(at end (stacks-avail_n11))
(at end (shipped_o5))
(at start (not (started_o5)))
(at start (not (stacks-avail_n10)))
)
)
(:durative-action SHIP-ORDER_O5_N9_N10
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o5))
(at start (made_p25))
(at start (made_p21))
(at start (made_p18))
(at start (made_p17))
(at start (made_p15))
(at start (made_p9))
(at start (made_p7))
(at start (stacks-avail_n9))
)
:effect
(and
(at end (stacks-avail_n10))
(at end (shipped_o5))
(at start (not (started_o5)))
(at start (not (stacks-avail_n9)))
)
)
(:durative-action SHIP-ORDER_O5_N8_N9
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o5))
(at start (made_p25))
(at start (made_p21))
(at start (made_p18))
(at start (made_p17))
(at start (made_p15))
(at start (made_p9))
(at start (made_p7))
(at start (stacks-avail_n8))
)
:effect
(and
(at end (stacks-avail_n9))
(at end (shipped_o5))
(at start (not (started_o5)))
(at start (not (stacks-avail_n8)))
)
)
(:durative-action SHIP-ORDER_O5_N7_N8
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o5))
(at start (made_p25))
(at start (made_p21))
(at start (made_p18))
(at start (made_p17))
(at start (made_p15))
(at start (made_p9))
(at start (made_p7))
(at start (stacks-avail_n7))
)
:effect
(and
(at end (stacks-avail_n8))
(at end (shipped_o5))
(at start (not (started_o5)))
(at start (not (stacks-avail_n7)))
)
)
(:durative-action SHIP-ORDER_O5_N6_N7
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o5))
(at start (made_p25))
(at start (made_p21))
(at start (made_p18))
(at start (made_p17))
(at start (made_p15))
(at start (made_p9))
(at start (made_p7))
(at start (stacks-avail_n6))
)
:effect
(and
(at end (stacks-avail_n7))
(at end (shipped_o5))
(at start (not (started_o5)))
(at start (not (stacks-avail_n6)))
)
)
(:durative-action SHIP-ORDER_O5_N5_N6
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o5))
(at start (made_p25))
(at start (made_p21))
(at start (made_p18))
(at start (made_p17))
(at start (made_p15))
(at start (made_p9))
(at start (made_p7))
(at start (stacks-avail_n5))
)
:effect
(and
(at end (stacks-avail_n6))
(at end (shipped_o5))
(at start (not (started_o5)))
(at start (not (stacks-avail_n5)))
)
)
(:durative-action SHIP-ORDER_O5_N4_N5
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o5))
(at start (made_p25))
(at start (made_p21))
(at start (made_p18))
(at start (made_p17))
(at start (made_p15))
(at start (made_p9))
(at start (made_p7))
(at start (stacks-avail_n4))
)
:effect
(and
(at end (stacks-avail_n5))
(at end (shipped_o5))
(at start (not (started_o5)))
(at start (not (stacks-avail_n4)))
)
)
(:durative-action SHIP-ORDER_O5_N3_N4
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o5))
(at start (made_p25))
(at start (made_p21))
(at start (made_p18))
(at start (made_p17))
(at start (made_p15))
(at start (made_p9))
(at start (made_p7))
(at start (stacks-avail_n3))
)
:effect
(and
(at end (stacks-avail_n4))
(at end (shipped_o5))
(at start (not (started_o5)))
(at start (not (stacks-avail_n3)))
)
)
(:durative-action SHIP-ORDER_O5_N2_N3
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o5))
(at start (made_p25))
(at start (made_p21))
(at start (made_p18))
(at start (made_p17))
(at start (made_p15))
(at start (made_p9))
(at start (made_p7))
(at start (stacks-avail_n2))
)
:effect
(and
(at end (stacks-avail_n3))
(at end (shipped_o5))
(at start (not (started_o5)))
(at start (not (stacks-avail_n2)))
)
)
(:durative-action SHIP-ORDER_O5_N1_N2
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o5))
(at start (made_p25))
(at start (made_p21))
(at start (made_p18))
(at start (made_p17))
(at start (made_p15))
(at start (made_p9))
(at start (made_p7))
(at start (stacks-avail_n1))
)
:effect
(and
(at end (stacks-avail_n2))
(at end (shipped_o5))
(at start (not (started_o5)))
(at start (not (stacks-avail_n1)))
)
)
(:durative-action SHIP-ORDER_O5_N0_N1
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o5))
(at start (made_p25))
(at start (made_p21))
(at start (made_p18))
(at start (made_p17))
(at start (made_p15))
(at start (made_p9))
(at start (made_p7))
(at start (stacks-avail_n0))
)
:effect
(and
(at end (stacks-avail_n1))
(at end (shipped_o5))
(at start (not (started_o5)))
(at start (not (stacks-avail_n0)))
)
)
(:durative-action SHIP-ORDER_O4_N12_N13
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o4))
(at start (made_p21))
(at start (made_p18))
(at start (made_p17))
(at start (made_p14))
(at start (made_p11))
(at start (made_p9))
(at start (stacks-avail_n12))
)
:effect
(and
(at end (stacks-avail_n13))
(at end (shipped_o4))
(at start (not (started_o4)))
(at start (not (stacks-avail_n12)))
)
)
(:durative-action SHIP-ORDER_O4_N11_N12
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o4))
(at start (made_p21))
(at start (made_p18))
(at start (made_p17))
(at start (made_p14))
(at start (made_p11))
(at start (made_p9))
(at start (stacks-avail_n11))
)
:effect
(and
(at end (stacks-avail_n12))
(at end (shipped_o4))
(at start (not (started_o4)))
(at start (not (stacks-avail_n11)))
)
)
(:durative-action SHIP-ORDER_O4_N10_N11
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o4))
(at start (made_p21))
(at start (made_p18))
(at start (made_p17))
(at start (made_p14))
(at start (made_p11))
(at start (made_p9))
(at start (stacks-avail_n10))
)
:effect
(and
(at end (stacks-avail_n11))
(at end (shipped_o4))
(at start (not (started_o4)))
(at start (not (stacks-avail_n10)))
)
)
(:durative-action SHIP-ORDER_O4_N9_N10
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o4))
(at start (made_p21))
(at start (made_p18))
(at start (made_p17))
(at start (made_p14))
(at start (made_p11))
(at start (made_p9))
(at start (stacks-avail_n9))
)
:effect
(and
(at end (stacks-avail_n10))
(at end (shipped_o4))
(at start (not (started_o4)))
(at start (not (stacks-avail_n9)))
)
)
(:durative-action SHIP-ORDER_O4_N8_N9
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o4))
(at start (made_p21))
(at start (made_p18))
(at start (made_p17))
(at start (made_p14))
(at start (made_p11))
(at start (made_p9))
(at start (stacks-avail_n8))
)
:effect
(and
(at end (stacks-avail_n9))
(at end (shipped_o4))
(at start (not (started_o4)))
(at start (not (stacks-avail_n8)))
)
)
(:durative-action SHIP-ORDER_O4_N7_N8
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o4))
(at start (made_p21))
(at start (made_p18))
(at start (made_p17))
(at start (made_p14))
(at start (made_p11))
(at start (made_p9))
(at start (stacks-avail_n7))
)
:effect
(and
(at end (stacks-avail_n8))
(at end (shipped_o4))
(at start (not (started_o4)))
(at start (not (stacks-avail_n7)))
)
)
(:durative-action SHIP-ORDER_O4_N6_N7
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o4))
(at start (made_p21))
(at start (made_p18))
(at start (made_p17))
(at start (made_p14))
(at start (made_p11))
(at start (made_p9))
(at start (stacks-avail_n6))
)
:effect
(and
(at end (stacks-avail_n7))
(at end (shipped_o4))
(at start (not (started_o4)))
(at start (not (stacks-avail_n6)))
)
)
(:durative-action SHIP-ORDER_O4_N5_N6
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o4))
(at start (made_p21))
(at start (made_p18))
(at start (made_p17))
(at start (made_p14))
(at start (made_p11))
(at start (made_p9))
(at start (stacks-avail_n5))
)
:effect
(and
(at end (stacks-avail_n6))
(at end (shipped_o4))
(at start (not (started_o4)))
(at start (not (stacks-avail_n5)))
)
)
(:durative-action SHIP-ORDER_O4_N4_N5
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o4))
(at start (made_p21))
(at start (made_p18))
(at start (made_p17))
(at start (made_p14))
(at start (made_p11))
(at start (made_p9))
(at start (stacks-avail_n4))
)
:effect
(and
(at end (stacks-avail_n5))
(at end (shipped_o4))
(at start (not (started_o4)))
(at start (not (stacks-avail_n4)))
)
)
(:durative-action SHIP-ORDER_O4_N3_N4
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o4))
(at start (made_p21))
(at start (made_p18))
(at start (made_p17))
(at start (made_p14))
(at start (made_p11))
(at start (made_p9))
(at start (stacks-avail_n3))
)
:effect
(and
(at end (stacks-avail_n4))
(at end (shipped_o4))
(at start (not (started_o4)))
(at start (not (stacks-avail_n3)))
)
)
(:durative-action SHIP-ORDER_O4_N2_N3
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o4))
(at start (made_p21))
(at start (made_p18))
(at start (made_p17))
(at start (made_p14))
(at start (made_p11))
(at start (made_p9))
(at start (stacks-avail_n2))
)
:effect
(and
(at end (stacks-avail_n3))
(at end (shipped_o4))
(at start (not (started_o4)))
(at start (not (stacks-avail_n2)))
)
)
(:durative-action SHIP-ORDER_O4_N1_N2
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o4))
(at start (made_p21))
(at start (made_p18))
(at start (made_p17))
(at start (made_p14))
(at start (made_p11))
(at start (made_p9))
(at start (stacks-avail_n1))
)
:effect
(and
(at end (stacks-avail_n2))
(at end (shipped_o4))
(at start (not (started_o4)))
(at start (not (stacks-avail_n1)))
)
)
(:durative-action SHIP-ORDER_O4_N0_N1
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o4))
(at start (made_p21))
(at start (made_p18))
(at start (made_p17))
(at start (made_p14))
(at start (made_p11))
(at start (made_p9))
(at start (stacks-avail_n0))
)
:effect
(and
(at end (stacks-avail_n1))
(at end (shipped_o4))
(at start (not (started_o4)))
(at start (not (stacks-avail_n0)))
)
)
(:durative-action SHIP-ORDER_O3_N12_N13
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o3))
(at start (made_p23))
(at start (made_p10))
(at start (made_p8))
(at start (made_p6))
(at start (made_p2))
(at start (made_p1))
(at start (stacks-avail_n12))
)
:effect
(and
(at end (stacks-avail_n13))
(at end (shipped_o3))
(at start (not (started_o3)))
(at start (not (stacks-avail_n12)))
)
)
(:durative-action SHIP-ORDER_O3_N11_N12
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o3))
(at start (made_p23))
(at start (made_p10))
(at start (made_p8))
(at start (made_p6))
(at start (made_p2))
(at start (made_p1))
(at start (stacks-avail_n11))
)
:effect
(and
(at end (stacks-avail_n12))
(at end (shipped_o3))
(at start (not (started_o3)))
(at start (not (stacks-avail_n11)))
)
)
(:durative-action SHIP-ORDER_O3_N10_N11
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o3))
(at start (made_p23))
(at start (made_p10))
(at start (made_p8))
(at start (made_p6))
(at start (made_p2))
(at start (made_p1))
(at start (stacks-avail_n10))
)
:effect
(and
(at end (stacks-avail_n11))
(at end (shipped_o3))
(at start (not (started_o3)))
(at start (not (stacks-avail_n10)))
)
)
(:durative-action SHIP-ORDER_O3_N9_N10
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o3))
(at start (made_p23))
(at start (made_p10))
(at start (made_p8))
(at start (made_p6))
(at start (made_p2))
(at start (made_p1))
(at start (stacks-avail_n9))
)
:effect
(and
(at end (stacks-avail_n10))
(at end (shipped_o3))
(at start (not (started_o3)))
(at start (not (stacks-avail_n9)))
)
)
(:durative-action SHIP-ORDER_O3_N8_N9
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o3))
(at start (made_p23))
(at start (made_p10))
(at start (made_p8))
(at start (made_p6))
(at start (made_p2))
(at start (made_p1))
(at start (stacks-avail_n8))
)
:effect
(and
(at end (stacks-avail_n9))
(at end (shipped_o3))
(at start (not (started_o3)))
(at start (not (stacks-avail_n8)))
)
)
(:durative-action SHIP-ORDER_O3_N7_N8
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o3))
(at start (made_p23))
(at start (made_p10))
(at start (made_p8))
(at start (made_p6))
(at start (made_p2))
(at start (made_p1))
(at start (stacks-avail_n7))
)
:effect
(and
(at end (stacks-avail_n8))
(at end (shipped_o3))
(at start (not (started_o3)))
(at start (not (stacks-avail_n7)))
)
)
(:durative-action SHIP-ORDER_O3_N6_N7
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o3))
(at start (made_p23))
(at start (made_p10))
(at start (made_p8))
(at start (made_p6))
(at start (made_p2))
(at start (made_p1))
(at start (stacks-avail_n6))
)
:effect
(and
(at end (stacks-avail_n7))
(at end (shipped_o3))
(at start (not (started_o3)))
(at start (not (stacks-avail_n6)))
)
)
(:durative-action SHIP-ORDER_O3_N5_N6
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o3))
(at start (made_p23))
(at start (made_p10))
(at start (made_p8))
(at start (made_p6))
(at start (made_p2))
(at start (made_p1))
(at start (stacks-avail_n5))
)
:effect
(and
(at end (stacks-avail_n6))
(at end (shipped_o3))
(at start (not (started_o3)))
(at start (not (stacks-avail_n5)))
)
)
(:durative-action SHIP-ORDER_O3_N4_N5
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o3))
(at start (made_p23))
(at start (made_p10))
(at start (made_p8))
(at start (made_p6))
(at start (made_p2))
(at start (made_p1))
(at start (stacks-avail_n4))
)
:effect
(and
(at end (stacks-avail_n5))
(at end (shipped_o3))
(at start (not (started_o3)))
(at start (not (stacks-avail_n4)))
)
)
(:durative-action SHIP-ORDER_O3_N3_N4
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o3))
(at start (made_p23))
(at start (made_p10))
(at start (made_p8))
(at start (made_p6))
(at start (made_p2))
(at start (made_p1))
(at start (stacks-avail_n3))
)
:effect
(and
(at end (stacks-avail_n4))
(at end (shipped_o3))
(at start (not (started_o3)))
(at start (not (stacks-avail_n3)))
)
)
(:durative-action SHIP-ORDER_O3_N2_N3
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o3))
(at start (made_p23))
(at start (made_p10))
(at start (made_p8))
(at start (made_p6))
(at start (made_p2))
(at start (made_p1))
(at start (stacks-avail_n2))
)
:effect
(and
(at end (stacks-avail_n3))
(at end (shipped_o3))
(at start (not (started_o3)))
(at start (not (stacks-avail_n2)))
)
)
(:durative-action SHIP-ORDER_O3_N1_N2
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o3))
(at start (made_p23))
(at start (made_p10))
(at start (made_p8))
(at start (made_p6))
(at start (made_p2))
(at start (made_p1))
(at start (stacks-avail_n1))
)
:effect
(and
(at end (stacks-avail_n2))
(at end (shipped_o3))
(at start (not (started_o3)))
(at start (not (stacks-avail_n1)))
)
)
(:durative-action SHIP-ORDER_O3_N0_N1
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o3))
(at start (made_p23))
(at start (made_p10))
(at start (made_p8))
(at start (made_p6))
(at start (made_p2))
(at start (made_p1))
(at start (stacks-avail_n0))
)
:effect
(and
(at end (stacks-avail_n1))
(at end (shipped_o3))
(at start (not (started_o3)))
(at start (not (stacks-avail_n0)))
)
)
(:durative-action SHIP-ORDER_O2_N12_N13
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o2))
(at start (made_p23))
(at start (made_p8))
(at start (made_p6))
(at start (made_p5))
(at start (made_p3))
(at start (made_p2))
(at start (stacks-avail_n12))
)
:effect
(and
(at end (stacks-avail_n13))
(at end (shipped_o2))
(at start (not (started_o2)))
(at start (not (stacks-avail_n12)))
)
)
(:durative-action SHIP-ORDER_O2_N11_N12
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o2))
(at start (made_p23))
(at start (made_p8))
(at start (made_p6))
(at start (made_p5))
(at start (made_p3))
(at start (made_p2))
(at start (stacks-avail_n11))
)
:effect
(and
(at end (stacks-avail_n12))
(at end (shipped_o2))
(at start (not (started_o2)))
(at start (not (stacks-avail_n11)))
)
)
(:durative-action SHIP-ORDER_O2_N10_N11
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o2))
(at start (made_p23))
(at start (made_p8))
(at start (made_p6))
(at start (made_p5))
(at start (made_p3))
(at start (made_p2))
(at start (stacks-avail_n10))
)
:effect
(and
(at end (stacks-avail_n11))
(at end (shipped_o2))
(at start (not (started_o2)))
(at start (not (stacks-avail_n10)))
)
)
(:durative-action SHIP-ORDER_O2_N9_N10
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o2))
(at start (made_p23))
(at start (made_p8))
(at start (made_p6))
(at start (made_p5))
(at start (made_p3))
(at start (made_p2))
(at start (stacks-avail_n9))
)
:effect
(and
(at end (stacks-avail_n10))
(at end (shipped_o2))
(at start (not (started_o2)))
(at start (not (stacks-avail_n9)))
)
)
(:durative-action SHIP-ORDER_O2_N8_N9
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o2))
(at start (made_p23))
(at start (made_p8))
(at start (made_p6))
(at start (made_p5))
(at start (made_p3))
(at start (made_p2))
(at start (stacks-avail_n8))
)
:effect
(and
(at end (stacks-avail_n9))
(at end (shipped_o2))
(at start (not (started_o2)))
(at start (not (stacks-avail_n8)))
)
)
(:durative-action SHIP-ORDER_O2_N7_N8
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o2))
(at start (made_p23))
(at start (made_p8))
(at start (made_p6))
(at start (made_p5))
(at start (made_p3))
(at start (made_p2))
(at start (stacks-avail_n7))
)
:effect
(and
(at end (stacks-avail_n8))
(at end (shipped_o2))
(at start (not (started_o2)))
(at start (not (stacks-avail_n7)))
)
)
(:durative-action SHIP-ORDER_O2_N6_N7
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o2))
(at start (made_p23))
(at start (made_p8))
(at start (made_p6))
(at start (made_p5))
(at start (made_p3))
(at start (made_p2))
(at start (stacks-avail_n6))
)
:effect
(and
(at end (stacks-avail_n7))
(at end (shipped_o2))
(at start (not (started_o2)))
(at start (not (stacks-avail_n6)))
)
)
(:durative-action SHIP-ORDER_O2_N5_N6
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o2))
(at start (made_p23))
(at start (made_p8))
(at start (made_p6))
(at start (made_p5))
(at start (made_p3))
(at start (made_p2))
(at start (stacks-avail_n5))
)
:effect
(and
(at end (stacks-avail_n6))
(at end (shipped_o2))
(at start (not (started_o2)))
(at start (not (stacks-avail_n5)))
)
)
(:durative-action SHIP-ORDER_O2_N4_N5
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o2))
(at start (made_p23))
(at start (made_p8))
(at start (made_p6))
(at start (made_p5))
(at start (made_p3))
(at start (made_p2))
(at start (stacks-avail_n4))
)
:effect
(and
(at end (stacks-avail_n5))
(at end (shipped_o2))
(at start (not (started_o2)))
(at start (not (stacks-avail_n4)))
)
)
(:durative-action SHIP-ORDER_O2_N3_N4
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o2))
(at start (made_p23))
(at start (made_p8))
(at start (made_p6))
(at start (made_p5))
(at start (made_p3))
(at start (made_p2))
(at start (stacks-avail_n3))
)
:effect
(and
(at end (stacks-avail_n4))
(at end (shipped_o2))
(at start (not (started_o2)))
(at start (not (stacks-avail_n3)))
)
)
(:durative-action SHIP-ORDER_O2_N2_N3
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o2))
(at start (made_p23))
(at start (made_p8))
(at start (made_p6))
(at start (made_p5))
(at start (made_p3))
(at start (made_p2))
(at start (stacks-avail_n2))
)
:effect
(and
(at end (stacks-avail_n3))
(at end (shipped_o2))
(at start (not (started_o2)))
(at start (not (stacks-avail_n2)))
)
)
(:durative-action SHIP-ORDER_O2_N1_N2
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o2))
(at start (made_p23))
(at start (made_p8))
(at start (made_p6))
(at start (made_p5))
(at start (made_p3))
(at start (made_p2))
(at start (stacks-avail_n1))
)
:effect
(and
(at end (stacks-avail_n2))
(at end (shipped_o2))
(at start (not (started_o2)))
(at start (not (stacks-avail_n1)))
)
)
(:durative-action SHIP-ORDER_O2_N0_N1
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o2))
(at start (made_p23))
(at start (made_p8))
(at start (made_p6))
(at start (made_p5))
(at start (made_p3))
(at start (made_p2))
(at start (stacks-avail_n0))
)
:effect
(and
(at end (stacks-avail_n1))
(at end (shipped_o2))
(at start (not (started_o2)))
(at start (not (stacks-avail_n0)))
)
)
(:durative-action SHIP-ORDER_O1_N12_N13
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o1))
(at start (made_p25))
(at start (made_p24))
(at start (made_p13))
(at start (made_p12))
(at start (made_p11))
(at start (made_p7))
(at start (made_p5))
(at start (made_p1))
(at start (stacks-avail_n12))
)
:effect
(and
(at end (stacks-avail_n13))
(at end (shipped_o1))
(at start (not (started_o1)))
(at start (not (stacks-avail_n12)))
)
)
(:durative-action SHIP-ORDER_O1_N11_N12
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o1))
(at start (made_p25))
(at start (made_p24))
(at start (made_p13))
(at start (made_p12))
(at start (made_p11))
(at start (made_p7))
(at start (made_p5))
(at start (made_p1))
(at start (stacks-avail_n11))
)
:effect
(and
(at end (stacks-avail_n12))
(at end (shipped_o1))
(at start (not (started_o1)))
(at start (not (stacks-avail_n11)))
)
)
(:durative-action SHIP-ORDER_O1_N10_N11
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o1))
(at start (made_p25))
(at start (made_p24))
(at start (made_p13))
(at start (made_p12))
(at start (made_p11))
(at start (made_p7))
(at start (made_p5))
(at start (made_p1))
(at start (stacks-avail_n10))
)
:effect
(and
(at end (stacks-avail_n11))
(at end (shipped_o1))
(at start (not (started_o1)))
(at start (not (stacks-avail_n10)))
)
)
(:durative-action SHIP-ORDER_O1_N9_N10
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o1))
(at start (made_p25))
(at start (made_p24))
(at start (made_p13))
(at start (made_p12))
(at start (made_p11))
(at start (made_p7))
(at start (made_p5))
(at start (made_p1))
(at start (stacks-avail_n9))
)
:effect
(and
(at end (stacks-avail_n10))
(at end (shipped_o1))
(at start (not (started_o1)))
(at start (not (stacks-avail_n9)))
)
)
(:durative-action SHIP-ORDER_O1_N8_N9
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o1))
(at start (made_p25))
(at start (made_p24))
(at start (made_p13))
(at start (made_p12))
(at start (made_p11))
(at start (made_p7))
(at start (made_p5))
(at start (made_p1))
(at start (stacks-avail_n8))
)
:effect
(and
(at end (stacks-avail_n9))
(at end (shipped_o1))
(at start (not (started_o1)))
(at start (not (stacks-avail_n8)))
)
)
(:durative-action SHIP-ORDER_O1_N7_N8
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o1))
(at start (made_p25))
(at start (made_p24))
(at start (made_p13))
(at start (made_p12))
(at start (made_p11))
(at start (made_p7))
(at start (made_p5))
(at start (made_p1))
(at start (stacks-avail_n7))
)
:effect
(and
(at end (stacks-avail_n8))
(at end (shipped_o1))
(at start (not (started_o1)))
(at start (not (stacks-avail_n7)))
)
)
(:durative-action SHIP-ORDER_O1_N6_N7
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o1))
(at start (made_p25))
(at start (made_p24))
(at start (made_p13))
(at start (made_p12))
(at start (made_p11))
(at start (made_p7))
(at start (made_p5))
(at start (made_p1))
(at start (stacks-avail_n6))
)
:effect
(and
(at end (stacks-avail_n7))
(at end (shipped_o1))
(at start (not (started_o1)))
(at start (not (stacks-avail_n6)))
)
)
(:durative-action SHIP-ORDER_O1_N5_N6
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o1))
(at start (made_p25))
(at start (made_p24))
(at start (made_p13))
(at start (made_p12))
(at start (made_p11))
(at start (made_p7))
(at start (made_p5))
(at start (made_p1))
(at start (stacks-avail_n5))
)
:effect
(and
(at end (stacks-avail_n6))
(at end (shipped_o1))
(at start (not (started_o1)))
(at start (not (stacks-avail_n5)))
)
)
(:durative-action SHIP-ORDER_O1_N4_N5
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o1))
(at start (made_p25))
(at start (made_p24))
(at start (made_p13))
(at start (made_p12))
(at start (made_p11))
(at start (made_p7))
(at start (made_p5))
(at start (made_p1))
(at start (stacks-avail_n4))
)
:effect
(and
(at end (stacks-avail_n5))
(at end (shipped_o1))
(at start (not (started_o1)))
(at start (not (stacks-avail_n4)))
)
)
(:durative-action SHIP-ORDER_O1_N3_N4
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o1))
(at start (made_p25))
(at start (made_p24))
(at start (made_p13))
(at start (made_p12))
(at start (made_p11))
(at start (made_p7))
(at start (made_p5))
(at start (made_p1))
(at start (stacks-avail_n3))
)
:effect
(and
(at end (stacks-avail_n4))
(at end (shipped_o1))
(at start (not (started_o1)))
(at start (not (stacks-avail_n3)))
)
)
(:durative-action SHIP-ORDER_O1_N2_N3
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o1))
(at start (made_p25))
(at start (made_p24))
(at start (made_p13))
(at start (made_p12))
(at start (made_p11))
(at start (made_p7))
(at start (made_p5))
(at start (made_p1))
(at start (stacks-avail_n2))
)
:effect
(and
(at end (stacks-avail_n3))
(at end (shipped_o1))
(at start (not (started_o1)))
(at start (not (stacks-avail_n2)))
)
)
(:durative-action SHIP-ORDER_O1_N1_N2
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o1))
(at start (made_p25))
(at start (made_p24))
(at start (made_p13))
(at start (made_p12))
(at start (made_p11))
(at start (made_p7))
(at start (made_p5))
(at start (made_p1))
(at start (stacks-avail_n1))
)
:effect
(and
(at end (stacks-avail_n2))
(at end (shipped_o1))
(at start (not (started_o1)))
(at start (not (stacks-avail_n1)))
)
)
(:durative-action SHIP-ORDER_O1_N0_N1
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (started_o1))
(at start (made_p25))
(at start (made_p24))
(at start (made_p13))
(at start (made_p12))
(at start (made_p11))
(at start (made_p7))
(at start (made_p5))
(at start (made_p1))
(at start (stacks-avail_n0))
)
:effect
(and
(at end (stacks-avail_n1))
(at end (shipped_o1))
(at start (not (started_o1)))
(at start (not (stacks-avail_n0)))
)
)
(:durative-action MAKE-PRODUCT_P25
:parameters ()
:duration (= ?duration 30.000000)
:condition
(and
(at start (not-made_p25))
(at start (started_o15))
(at start (started_o14))
(at start (started_o5))
(at start (started_o1))
)
:effect
(and
(at end (made_p25))
(at end (not (not-made_p25)))
)
)
(:durative-action MAKE-PRODUCT_P24
:parameters ()
:duration (= ?duration 105.000000)
:condition
(and
(at start (not-made_p24))
(at start (started_o15))
(at start (started_o9))
(at start (started_o8))
(at start (started_o7))
(at start (started_o1))
)
:effect
(and
(at end (made_p24))
(at end (not (not-made_p24)))
)
)
(:durative-action MAKE-PRODUCT_P23
:parameters ()
:duration (= ?duration 90.000000)
:condition
(and
(at start (not-made_p23))
(at start (started_o11))
(at start (started_o9))
(at start (started_o8))
(at start (started_o3))
(at start (started_o2))
)
:effect
(and
(at end (made_p23))
(at end (not (not-made_p23)))
)
)
(:durative-action MAKE-PRODUCT_P22
:parameters ()
:duration (= ?duration 150.000000)
:condition
(and
(at start (not-made_p22))
(at start (started_o15))
(at start (started_o12))
(at start (started_o8))
(at start (started_o7))
)
:effect
(and
(at end (made_p22))
(at end (not (not-made_p22)))
)
)
(:durative-action MAKE-PRODUCT_P21
:parameters ()
:duration (= ?duration 135.000000)
:condition
(and
(at start (not-made_p21))
(at start (started_o13))
(at start (started_o12))
(at start (started_o10))
(at start (started_o6))
(at start (started_o5))
(at start (started_o4))
)
:effect
(and
(at end (made_p21))
(at end (not (not-made_p21)))
)
)
(:durative-action MAKE-PRODUCT_P20
:parameters ()
:duration (= ?duration 30.000000)
:condition
(and
(at start (not-made_p20))
(at start (started_o15))
(at start (started_o14))
(at start (started_o9))
)
:effect
(and
(at end (made_p20))
(at end (not (not-made_p20)))
)
)
(:durative-action MAKE-PRODUCT_P19
:parameters ()
:duration (= ?duration 60.000000)
:condition
(and
(at start (not-made_p19))
(at start (started_o13))
(at start (started_o10))
(at start (started_o6))
)
:effect
(and
(at end (made_p19))
(at end (not (not-made_p19)))
)
)
(:durative-action MAKE-PRODUCT_P18
:parameters ()
:duration (= ?duration 105.000000)
:condition
(and
(at start (not-made_p18))
(at start (started_o12))
(at start (started_o6))
(at start (started_o5))
(at start (started_o4))
)
:effect
(and
(at end (made_p18))
(at end (not (not-made_p18)))
)
)
(:durative-action MAKE-PRODUCT_P17
:parameters ()
:duration (= ?duration 45.000000)
:condition
(and
(at start (not-made_p17))
(at start (started_o13))
(at start (started_o11))
(at start (started_o10))
(at start (started_o6))
(at start (started_o5))
(at start (started_o4))
)
:effect
(and
(at end (made_p17))
(at end (not (not-made_p17)))
)
)
(:durative-action MAKE-PRODUCT_P16
:parameters ()
:duration (= ?duration 60.000000)
:condition
(and
(at start (not-made_p16))
(at start (started_o12))
(at start (started_o6))
)
:effect
(and
(at end (made_p16))
(at end (not (not-made_p16)))
)
)
(:durative-action MAKE-PRODUCT_P15
:parameters ()
:duration (= ?duration 105.000000)
:condition
(and
(at start (not-made_p15))
(at start (started_o14))
(at start (started_o13))
(at start (started_o12))
(at start (started_o11))
(at start (started_o10))
(at start (started_o5))
)
:effect
(and
(at end (made_p15))
(at end (not (not-made_p15)))
)
)
(:durative-action MAKE-PRODUCT_P14
:parameters ()
:duration (= ?duration 105.000000)
:condition
(and
(at start (not-made_p14))
(at start (started_o13))
(at start (started_o12))
(at start (started_o10))
(at start (started_o4))
)
:effect
(and
(at end (made_p14))
(at end (not (not-made_p14)))
)
)
(:durative-action MAKE-PRODUCT_P13
:parameters ()
:duration (= ?duration 150.000000)
:condition
(and
(at start (not-made_p13))
(at start (started_o9))
(at start (started_o7))
(at start (started_o1))
)
:effect
(and
(at end (made_p13))
(at end (not (not-made_p13)))
)
)
(:durative-action MAKE-PRODUCT_P12
:parameters ()
:duration (= ?duration 60.000000)
:condition
(and
(at start (not-made_p12))
(at start (started_o15))
(at start (started_o14))
(at start (started_o11))
(at start (started_o9))
(at start (started_o1))
)
:effect
(and
(at end (made_p12))
(at end (not (not-made_p12)))
)
)
(:durative-action MAKE-PRODUCT_P11
:parameters ()
:duration (= ?duration 75.000000)
:condition
(and
(at start (not-made_p11))
(at start (started_o14))
(at start (started_o11))
(at start (started_o4))
(at start (started_o1))
)
:effect
(and
(at end (made_p11))
(at end (not (not-made_p11)))
)
)
(:durative-action MAKE-PRODUCT_P10
:parameters ()
:duration (= ?duration 75.000000)
:condition
(and
(at start (not-made_p10))
(at start (started_o9))
(at start (started_o8))
(at start (started_o3))
)
:effect
(and
(at end (made_p10))
(at end (not (not-made_p10)))
)
)
(:durative-action MAKE-PRODUCT_P9
:parameters ()
:duration (= ?duration 45.000000)
:condition
(and
(at start (not-made_p9))
(at start (started_o14))
(at start (started_o12))
(at start (started_o11))
(at start (started_o5))
(at start (started_o4))
)
:effect
(and
(at end (made_p9))
(at end (not (not-made_p9)))
)
)
(:durative-action MAKE-PRODUCT_P8
:parameters ()
:duration (= ?duration 30.000000)
:condition
(and
(at start (not-made_p8))
(at start (started_o9))
(at start (started_o3))
(at start (started_o2))
)
:effect
(and
(at end (made_p8))
(at end (not (not-made_p8)))
)
)
(:durative-action MAKE-PRODUCT_P7
:parameters ()
:duration (= ?duration 45.000000)
:condition
(and
(at start (not-made_p7))
(at start (started_o15))
(at start (started_o11))
(at start (started_o5))
(at start (started_o1))
)
:effect
(and
(at end (made_p7))
(at end (not (not-made_p7)))
)
)
(:durative-action MAKE-PRODUCT_P6
:parameters ()
:duration (= ?duration 150.000000)
:condition
(and
(at start (not-made_p6))
(at start (started_o7))
(at start (started_o3))
(at start (started_o2))
)
:effect
(and
(at end (made_p6))
(at end (not (not-made_p6)))
)
)
(:durative-action MAKE-PRODUCT_P5
:parameters ()
:duration (= ?duration 120.000000)
:condition
(and
(at start (not-made_p5))
(at start (started_o2))
(at start (started_o1))
)
:effect
(and
(at end (made_p5))
(at end (not (not-made_p5)))
)
)
(:durative-action MAKE-PRODUCT_P4
:parameters ()
:duration (= ?duration 105.000000)
:condition
(and
(at start (not-made_p4))
(at start (started_o13))
(at start (started_o12))
(at start (started_o10))
(at start (started_o6))
)
:effect
(and
(at end (made_p4))
(at end (not (not-made_p4)))
)
)
(:durative-action MAKE-PRODUCT_P3
:parameters ()
:duration (= ?duration 150.000000)
:condition
(and
(at start (not-made_p3))
(at start (started_o12))
(at start (started_o9))
(at start (started_o8))
(at start (started_o7))
(at start (started_o2))
)
:effect
(and
(at end (made_p3))
(at end (not (not-made_p3)))
)
)
(:durative-action MAKE-PRODUCT_P2
:parameters ()
:duration (= ?duration 135.000000)
:condition
(and
(at start (not-made_p2))
(at start (started_o11))
(at start (started_o8))
(at start (started_o7))
(at start (started_o3))
(at start (started_o2))
)
:effect
(and
(at end (made_p2))
(at end (not (not-made_p2)))
)
)
(:durative-action MAKE-PRODUCT_P1
:parameters ()
:duration (= ?duration 90.000000)
:condition
(and
(at start (not-made_p1))
(at start (started_o3))
(at start (started_o1))
)
:effect
(and
(at end (made_p1))
(at end (not (not-made_p1)))
)
)
(:durative-action START-ORDER_O15_N1_N0
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n1))
(at start (waiting_o15))
)
:effect
(and
(at end (started_o15))
(at end (stacks-avail_n0))
(at start (not (waiting_o15)))
(at start (not (stacks-avail_n1)))
)
)
(:durative-action START-ORDER_O14_N1_N0
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n1))
(at start (waiting_o14))
)
:effect
(and
(at end (started_o14))
(at end (stacks-avail_n0))
(at start (not (waiting_o14)))
(at start (not (stacks-avail_n1)))
)
)
(:durative-action START-ORDER_O13_N1_N0
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n1))
(at start (waiting_o13))
)
:effect
(and
(at end (started_o13))
(at end (stacks-avail_n0))
(at start (not (waiting_o13)))
(at start (not (stacks-avail_n1)))
)
)
(:durative-action START-ORDER_O12_N1_N0
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n1))
(at start (waiting_o12))
)
:effect
(and
(at end (started_o12))
(at end (stacks-avail_n0))
(at start (not (waiting_o12)))
(at start (not (stacks-avail_n1)))
)
)
(:durative-action START-ORDER_O11_N1_N0
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n1))
(at start (waiting_o11))
)
:effect
(and
(at end (started_o11))
(at end (stacks-avail_n0))
(at start (not (waiting_o11)))
(at start (not (stacks-avail_n1)))
)
)
(:durative-action START-ORDER_O10_N1_N0
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n1))
(at start (waiting_o10))
)
:effect
(and
(at end (started_o10))
(at end (stacks-avail_n0))
(at start (not (waiting_o10)))
(at start (not (stacks-avail_n1)))
)
)
(:durative-action START-ORDER_O9_N1_N0
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n1))
(at start (waiting_o9))
)
:effect
(and
(at end (started_o9))
(at end (stacks-avail_n0))
(at start (not (waiting_o9)))
(at start (not (stacks-avail_n1)))
)
)
(:durative-action START-ORDER_O8_N1_N0
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n1))
(at start (waiting_o8))
)
:effect
(and
(at end (started_o8))
(at end (stacks-avail_n0))
(at start (not (waiting_o8)))
(at start (not (stacks-avail_n1)))
)
)
(:durative-action START-ORDER_O7_N1_N0
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n1))
(at start (waiting_o7))
)
:effect
(and
(at end (started_o7))
(at end (stacks-avail_n0))
(at start (not (waiting_o7)))
(at start (not (stacks-avail_n1)))
)
)
(:durative-action START-ORDER_O6_N1_N0
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n1))
(at start (waiting_o6))
)
:effect
(and
(at end (started_o6))
(at end (stacks-avail_n0))
(at start (not (waiting_o6)))
(at start (not (stacks-avail_n1)))
)
)
(:durative-action START-ORDER_O5_N1_N0
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n1))
(at start (waiting_o5))
)
:effect
(and
(at end (started_o5))
(at end (stacks-avail_n0))
(at start (not (waiting_o5)))
(at start (not (stacks-avail_n1)))
)
)
(:durative-action START-ORDER_O4_N1_N0
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n1))
(at start (waiting_o4))
)
:effect
(and
(at end (started_o4))
(at end (stacks-avail_n0))
(at start (not (waiting_o4)))
(at start (not (stacks-avail_n1)))
)
)
(:durative-action START-ORDER_O3_N1_N0
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n1))
(at start (waiting_o3))
)
:effect
(and
(at end (started_o3))
(at end (stacks-avail_n0))
(at start (not (waiting_o3)))
(at start (not (stacks-avail_n1)))
)
)
(:durative-action START-ORDER_O2_N1_N0
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n1))
(at start (waiting_o2))
)
:effect
(and
(at end (started_o2))
(at end (stacks-avail_n0))
(at start (not (waiting_o2)))
(at start (not (stacks-avail_n1)))
)
)
(:durative-action START-ORDER_O1_N1_N0
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n1))
(at start (waiting_o1))
)
:effect
(and
(at end (started_o1))
(at end (stacks-avail_n0))
(at start (not (waiting_o1)))
(at start (not (stacks-avail_n1)))
)
)
(:durative-action START-ORDER_O15_N2_N1
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n2))
(at start (waiting_o15))
)
:effect
(and
(at end (started_o15))
(at end (stacks-avail_n1))
(at start (not (waiting_o15)))
(at start (not (stacks-avail_n2)))
)
)
(:durative-action START-ORDER_O14_N2_N1
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n2))
(at start (waiting_o14))
)
:effect
(and
(at end (started_o14))
(at end (stacks-avail_n1))
(at start (not (waiting_o14)))
(at start (not (stacks-avail_n2)))
)
)
(:durative-action START-ORDER_O13_N2_N1
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n2))
(at start (waiting_o13))
)
:effect
(and
(at end (started_o13))
(at end (stacks-avail_n1))
(at start (not (waiting_o13)))
(at start (not (stacks-avail_n2)))
)
)
(:durative-action START-ORDER_O12_N2_N1
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n2))
(at start (waiting_o12))
)
:effect
(and
(at end (started_o12))
(at end (stacks-avail_n1))
(at start (not (waiting_o12)))
(at start (not (stacks-avail_n2)))
)
)
(:durative-action START-ORDER_O11_N2_N1
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n2))
(at start (waiting_o11))
)
:effect
(and
(at end (started_o11))
(at end (stacks-avail_n1))
(at start (not (waiting_o11)))
(at start (not (stacks-avail_n2)))
)
)
(:durative-action START-ORDER_O10_N2_N1
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n2))
(at start (waiting_o10))
)
:effect
(and
(at end (started_o10))
(at end (stacks-avail_n1))
(at start (not (waiting_o10)))
(at start (not (stacks-avail_n2)))
)
)
(:durative-action START-ORDER_O9_N2_N1
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n2))
(at start (waiting_o9))
)
:effect
(and
(at end (started_o9))
(at end (stacks-avail_n1))
(at start (not (waiting_o9)))
(at start (not (stacks-avail_n2)))
)
)
(:durative-action START-ORDER_O8_N2_N1
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n2))
(at start (waiting_o8))
)
:effect
(and
(at end (started_o8))
(at end (stacks-avail_n1))
(at start (not (waiting_o8)))
(at start (not (stacks-avail_n2)))
)
)
(:durative-action START-ORDER_O7_N2_N1
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n2))
(at start (waiting_o7))
)
:effect
(and
(at end (started_o7))
(at end (stacks-avail_n1))
(at start (not (waiting_o7)))
(at start (not (stacks-avail_n2)))
)
)
(:durative-action START-ORDER_O6_N2_N1
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n2))
(at start (waiting_o6))
)
:effect
(and
(at end (started_o6))
(at end (stacks-avail_n1))
(at start (not (waiting_o6)))
(at start (not (stacks-avail_n2)))
)
)
(:durative-action START-ORDER_O5_N2_N1
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n2))
(at start (waiting_o5))
)
:effect
(and
(at end (started_o5))
(at end (stacks-avail_n1))
(at start (not (waiting_o5)))
(at start (not (stacks-avail_n2)))
)
)
(:durative-action START-ORDER_O4_N2_N1
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n2))
(at start (waiting_o4))
)
:effect
(and
(at end (started_o4))
(at end (stacks-avail_n1))
(at start (not (waiting_o4)))
(at start (not (stacks-avail_n2)))
)
)
(:durative-action START-ORDER_O3_N2_N1
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n2))
(at start (waiting_o3))
)
:effect
(and
(at end (started_o3))
(at end (stacks-avail_n1))
(at start (not (waiting_o3)))
(at start (not (stacks-avail_n2)))
)
)
(:durative-action START-ORDER_O2_N2_N1
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n2))
(at start (waiting_o2))
)
:effect
(and
(at end (started_o2))
(at end (stacks-avail_n1))
(at start (not (waiting_o2)))
(at start (not (stacks-avail_n2)))
)
)
(:durative-action START-ORDER_O1_N2_N1
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n2))
(at start (waiting_o1))
)
:effect
(and
(at end (started_o1))
(at end (stacks-avail_n1))
(at start (not (waiting_o1)))
(at start (not (stacks-avail_n2)))
)
)
(:durative-action START-ORDER_O15_N3_N2
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n3))
(at start (waiting_o15))
)
:effect
(and
(at end (started_o15))
(at end (stacks-avail_n2))
(at start (not (waiting_o15)))
(at start (not (stacks-avail_n3)))
)
)
(:durative-action START-ORDER_O14_N3_N2
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n3))
(at start (waiting_o14))
)
:effect
(and
(at end (started_o14))
(at end (stacks-avail_n2))
(at start (not (waiting_o14)))
(at start (not (stacks-avail_n3)))
)
)
(:durative-action START-ORDER_O13_N3_N2
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n3))
(at start (waiting_o13))
)
:effect
(and
(at end (started_o13))
(at end (stacks-avail_n2))
(at start (not (waiting_o13)))
(at start (not (stacks-avail_n3)))
)
)
(:durative-action START-ORDER_O12_N3_N2
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n3))
(at start (waiting_o12))
)
:effect
(and
(at end (started_o12))
(at end (stacks-avail_n2))
(at start (not (waiting_o12)))
(at start (not (stacks-avail_n3)))
)
)
(:durative-action START-ORDER_O11_N3_N2
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n3))
(at start (waiting_o11))
)
:effect
(and
(at end (started_o11))
(at end (stacks-avail_n2))
(at start (not (waiting_o11)))
(at start (not (stacks-avail_n3)))
)
)
(:durative-action START-ORDER_O10_N3_N2
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n3))
(at start (waiting_o10))
)
:effect
(and
(at end (started_o10))
(at end (stacks-avail_n2))
(at start (not (waiting_o10)))
(at start (not (stacks-avail_n3)))
)
)
(:durative-action START-ORDER_O9_N3_N2
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n3))
(at start (waiting_o9))
)
:effect
(and
(at end (started_o9))
(at end (stacks-avail_n2))
(at start (not (waiting_o9)))
(at start (not (stacks-avail_n3)))
)
)
(:durative-action START-ORDER_O8_N3_N2
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n3))
(at start (waiting_o8))
)
:effect
(and
(at end (started_o8))
(at end (stacks-avail_n2))
(at start (not (waiting_o8)))
(at start (not (stacks-avail_n3)))
)
)
(:durative-action START-ORDER_O7_N3_N2
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n3))
(at start (waiting_o7))
)
:effect
(and
(at end (started_o7))
(at end (stacks-avail_n2))
(at start (not (waiting_o7)))
(at start (not (stacks-avail_n3)))
)
)
(:durative-action START-ORDER_O6_N3_N2
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n3))
(at start (waiting_o6))
)
:effect
(and
(at end (started_o6))
(at end (stacks-avail_n2))
(at start (not (waiting_o6)))
(at start (not (stacks-avail_n3)))
)
)
(:durative-action START-ORDER_O5_N3_N2
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n3))
(at start (waiting_o5))
)
:effect
(and
(at end (started_o5))
(at end (stacks-avail_n2))
(at start (not (waiting_o5)))
(at start (not (stacks-avail_n3)))
)
)
(:durative-action START-ORDER_O4_N3_N2
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n3))
(at start (waiting_o4))
)
:effect
(and
(at end (started_o4))
(at end (stacks-avail_n2))
(at start (not (waiting_o4)))
(at start (not (stacks-avail_n3)))
)
)
(:durative-action START-ORDER_O3_N3_N2
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n3))
(at start (waiting_o3))
)
:effect
(and
(at end (started_o3))
(at end (stacks-avail_n2))
(at start (not (waiting_o3)))
(at start (not (stacks-avail_n3)))
)
)
(:durative-action START-ORDER_O2_N3_N2
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n3))
(at start (waiting_o2))
)
:effect
(and
(at end (started_o2))
(at end (stacks-avail_n2))
(at start (not (waiting_o2)))
(at start (not (stacks-avail_n3)))
)
)
(:durative-action START-ORDER_O1_N3_N2
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n3))
(at start (waiting_o1))
)
:effect
(and
(at end (started_o1))
(at end (stacks-avail_n2))
(at start (not (waiting_o1)))
(at start (not (stacks-avail_n3)))
)
)
(:durative-action START-ORDER_O15_N4_N3
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n4))
(at start (waiting_o15))
)
:effect
(and
(at end (started_o15))
(at end (stacks-avail_n3))
(at start (not (waiting_o15)))
(at start (not (stacks-avail_n4)))
)
)
(:durative-action START-ORDER_O14_N4_N3
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n4))
(at start (waiting_o14))
)
:effect
(and
(at end (started_o14))
(at end (stacks-avail_n3))
(at start (not (waiting_o14)))
(at start (not (stacks-avail_n4)))
)
)
(:durative-action START-ORDER_O13_N4_N3
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n4))
(at start (waiting_o13))
)
:effect
(and
(at end (started_o13))
(at end (stacks-avail_n3))
(at start (not (waiting_o13)))
(at start (not (stacks-avail_n4)))
)
)
(:durative-action START-ORDER_O12_N4_N3
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n4))
(at start (waiting_o12))
)
:effect
(and
(at end (started_o12))
(at end (stacks-avail_n3))
(at start (not (waiting_o12)))
(at start (not (stacks-avail_n4)))
)
)
(:durative-action START-ORDER_O11_N4_N3
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n4))
(at start (waiting_o11))
)
:effect
(and
(at end (started_o11))
(at end (stacks-avail_n3))
(at start (not (waiting_o11)))
(at start (not (stacks-avail_n4)))
)
)
(:durative-action START-ORDER_O10_N4_N3
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n4))
(at start (waiting_o10))
)
:effect
(and
(at end (started_o10))
(at end (stacks-avail_n3))
(at start (not (waiting_o10)))
(at start (not (stacks-avail_n4)))
)
)
(:durative-action START-ORDER_O9_N4_N3
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n4))
(at start (waiting_o9))
)
:effect
(and
(at end (started_o9))
(at end (stacks-avail_n3))
(at start (not (waiting_o9)))
(at start (not (stacks-avail_n4)))
)
)
(:durative-action START-ORDER_O8_N4_N3
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n4))
(at start (waiting_o8))
)
:effect
(and
(at end (started_o8))
(at end (stacks-avail_n3))
(at start (not (waiting_o8)))
(at start (not (stacks-avail_n4)))
)
)
(:durative-action START-ORDER_O7_N4_N3
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n4))
(at start (waiting_o7))
)
:effect
(and
(at end (started_o7))
(at end (stacks-avail_n3))
(at start (not (waiting_o7)))
(at start (not (stacks-avail_n4)))
)
)
(:durative-action START-ORDER_O6_N4_N3
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n4))
(at start (waiting_o6))
)
:effect
(and
(at end (started_o6))
(at end (stacks-avail_n3))
(at start (not (waiting_o6)))
(at start (not (stacks-avail_n4)))
)
)
(:durative-action START-ORDER_O5_N4_N3
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n4))
(at start (waiting_o5))
)
:effect
(and
(at end (started_o5))
(at end (stacks-avail_n3))
(at start (not (waiting_o5)))
(at start (not (stacks-avail_n4)))
)
)
(:durative-action START-ORDER_O4_N4_N3
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n4))
(at start (waiting_o4))
)
:effect
(and
(at end (started_o4))
(at end (stacks-avail_n3))
(at start (not (waiting_o4)))
(at start (not (stacks-avail_n4)))
)
)
(:durative-action START-ORDER_O3_N4_N3
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n4))
(at start (waiting_o3))
)
:effect
(and
(at end (started_o3))
(at end (stacks-avail_n3))
(at start (not (waiting_o3)))
(at start (not (stacks-avail_n4)))
)
)
(:durative-action START-ORDER_O2_N4_N3
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n4))
(at start (waiting_o2))
)
:effect
(and
(at end (started_o2))
(at end (stacks-avail_n3))
(at start (not (waiting_o2)))
(at start (not (stacks-avail_n4)))
)
)
(:durative-action START-ORDER_O1_N4_N3
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n4))
(at start (waiting_o1))
)
:effect
(and
(at end (started_o1))
(at end (stacks-avail_n3))
(at start (not (waiting_o1)))
(at start (not (stacks-avail_n4)))
)
)
(:durative-action START-ORDER_O15_N5_N4
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n5))
(at start (waiting_o15))
)
:effect
(and
(at end (started_o15))
(at end (stacks-avail_n4))
(at start (not (waiting_o15)))
(at start (not (stacks-avail_n5)))
)
)
(:durative-action START-ORDER_O14_N5_N4
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n5))
(at start (waiting_o14))
)
:effect
(and
(at end (started_o14))
(at end (stacks-avail_n4))
(at start (not (waiting_o14)))
(at start (not (stacks-avail_n5)))
)
)
(:durative-action START-ORDER_O13_N5_N4
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n5))
(at start (waiting_o13))
)
:effect
(and
(at end (started_o13))
(at end (stacks-avail_n4))
(at start (not (waiting_o13)))
(at start (not (stacks-avail_n5)))
)
)
(:durative-action START-ORDER_O12_N5_N4
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n5))
(at start (waiting_o12))
)
:effect
(and
(at end (started_o12))
(at end (stacks-avail_n4))
(at start (not (waiting_o12)))
(at start (not (stacks-avail_n5)))
)
)
(:durative-action START-ORDER_O11_N5_N4
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n5))
(at start (waiting_o11))
)
:effect
(and
(at end (started_o11))
(at end (stacks-avail_n4))
(at start (not (waiting_o11)))
(at start (not (stacks-avail_n5)))
)
)
(:durative-action START-ORDER_O10_N5_N4
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n5))
(at start (waiting_o10))
)
:effect
(and
(at end (started_o10))
(at end (stacks-avail_n4))
(at start (not (waiting_o10)))
(at start (not (stacks-avail_n5)))
)
)
(:durative-action START-ORDER_O9_N5_N4
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n5))
(at start (waiting_o9))
)
:effect
(and
(at end (started_o9))
(at end (stacks-avail_n4))
(at start (not (waiting_o9)))
(at start (not (stacks-avail_n5)))
)
)
(:durative-action START-ORDER_O8_N5_N4
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n5))
(at start (waiting_o8))
)
:effect
(and
(at end (started_o8))
(at end (stacks-avail_n4))
(at start (not (waiting_o8)))
(at start (not (stacks-avail_n5)))
)
)
(:durative-action START-ORDER_O7_N5_N4
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n5))
(at start (waiting_o7))
)
:effect
(and
(at end (started_o7))
(at end (stacks-avail_n4))
(at start (not (waiting_o7)))
(at start (not (stacks-avail_n5)))
)
)
(:durative-action START-ORDER_O6_N5_N4
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n5))
(at start (waiting_o6))
)
:effect
(and
(at end (started_o6))
(at end (stacks-avail_n4))
(at start (not (waiting_o6)))
(at start (not (stacks-avail_n5)))
)
)
(:durative-action START-ORDER_O5_N5_N4
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n5))
(at start (waiting_o5))
)
:effect
(and
(at end (started_o5))
(at end (stacks-avail_n4))
(at start (not (waiting_o5)))
(at start (not (stacks-avail_n5)))
)
)
(:durative-action START-ORDER_O4_N5_N4
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n5))
(at start (waiting_o4))
)
:effect
(and
(at end (started_o4))
(at end (stacks-avail_n4))
(at start (not (waiting_o4)))
(at start (not (stacks-avail_n5)))
)
)
(:durative-action START-ORDER_O3_N5_N4
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n5))
(at start (waiting_o3))
)
:effect
(and
(at end (started_o3))
(at end (stacks-avail_n4))
(at start (not (waiting_o3)))
(at start (not (stacks-avail_n5)))
)
)
(:durative-action START-ORDER_O2_N5_N4
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n5))
(at start (waiting_o2))
)
:effect
(and
(at end (started_o2))
(at end (stacks-avail_n4))
(at start (not (waiting_o2)))
(at start (not (stacks-avail_n5)))
)
)
(:durative-action START-ORDER_O1_N5_N4
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n5))
(at start (waiting_o1))
)
:effect
(and
(at end (started_o1))
(at end (stacks-avail_n4))
(at start (not (waiting_o1)))
(at start (not (stacks-avail_n5)))
)
)
(:durative-action START-ORDER_O15_N6_N5
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n6))
(at start (waiting_o15))
)
:effect
(and
(at end (started_o15))
(at end (stacks-avail_n5))
(at start (not (waiting_o15)))
(at start (not (stacks-avail_n6)))
)
)
(:durative-action START-ORDER_O14_N6_N5
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n6))
(at start (waiting_o14))
)
:effect
(and
(at end (started_o14))
(at end (stacks-avail_n5))
(at start (not (waiting_o14)))
(at start (not (stacks-avail_n6)))
)
)
(:durative-action START-ORDER_O13_N6_N5
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n6))
(at start (waiting_o13))
)
:effect
(and
(at end (started_o13))
(at end (stacks-avail_n5))
(at start (not (waiting_o13)))
(at start (not (stacks-avail_n6)))
)
)
(:durative-action START-ORDER_O12_N6_N5
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n6))
(at start (waiting_o12))
)
:effect
(and
(at end (started_o12))
(at end (stacks-avail_n5))
(at start (not (waiting_o12)))
(at start (not (stacks-avail_n6)))
)
)
(:durative-action START-ORDER_O11_N6_N5
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n6))
(at start (waiting_o11))
)
:effect
(and
(at end (started_o11))
(at end (stacks-avail_n5))
(at start (not (waiting_o11)))
(at start (not (stacks-avail_n6)))
)
)
(:durative-action START-ORDER_O10_N6_N5
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n6))
(at start (waiting_o10))
)
:effect
(and
(at end (started_o10))
(at end (stacks-avail_n5))
(at start (not (waiting_o10)))
(at start (not (stacks-avail_n6)))
)
)
(:durative-action START-ORDER_O9_N6_N5
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n6))
(at start (waiting_o9))
)
:effect
(and
(at end (started_o9))
(at end (stacks-avail_n5))
(at start (not (waiting_o9)))
(at start (not (stacks-avail_n6)))
)
)
(:durative-action START-ORDER_O8_N6_N5
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n6))
(at start (waiting_o8))
)
:effect
(and
(at end (started_o8))
(at end (stacks-avail_n5))
(at start (not (waiting_o8)))
(at start (not (stacks-avail_n6)))
)
)
(:durative-action START-ORDER_O7_N6_N5
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n6))
(at start (waiting_o7))
)
:effect
(and
(at end (started_o7))
(at end (stacks-avail_n5))
(at start (not (waiting_o7)))
(at start (not (stacks-avail_n6)))
)
)
(:durative-action START-ORDER_O6_N6_N5
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n6))
(at start (waiting_o6))
)
:effect
(and
(at end (started_o6))
(at end (stacks-avail_n5))
(at start (not (waiting_o6)))
(at start (not (stacks-avail_n6)))
)
)
(:durative-action START-ORDER_O5_N6_N5
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n6))
(at start (waiting_o5))
)
:effect
(and
(at end (started_o5))
(at end (stacks-avail_n5))
(at start (not (waiting_o5)))
(at start (not (stacks-avail_n6)))
)
)
(:durative-action START-ORDER_O4_N6_N5
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n6))
(at start (waiting_o4))
)
:effect
(and
(at end (started_o4))
(at end (stacks-avail_n5))
(at start (not (waiting_o4)))
(at start (not (stacks-avail_n6)))
)
)
(:durative-action START-ORDER_O3_N6_N5
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n6))
(at start (waiting_o3))
)
:effect
(and
(at end (started_o3))
(at end (stacks-avail_n5))
(at start (not (waiting_o3)))
(at start (not (stacks-avail_n6)))
)
)
(:durative-action START-ORDER_O2_N6_N5
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n6))
(at start (waiting_o2))
)
:effect
(and
(at end (started_o2))
(at end (stacks-avail_n5))
(at start (not (waiting_o2)))
(at start (not (stacks-avail_n6)))
)
)
(:durative-action START-ORDER_O1_N6_N5
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n6))
(at start (waiting_o1))
)
:effect
(and
(at end (started_o1))
(at end (stacks-avail_n5))
(at start (not (waiting_o1)))
(at start (not (stacks-avail_n6)))
)
)
(:durative-action START-ORDER_O15_N7_N6
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n7))
(at start (waiting_o15))
)
:effect
(and
(at end (started_o15))
(at end (stacks-avail_n6))
(at start (not (waiting_o15)))
(at start (not (stacks-avail_n7)))
)
)
(:durative-action START-ORDER_O14_N7_N6
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n7))
(at start (waiting_o14))
)
:effect
(and
(at end (started_o14))
(at end (stacks-avail_n6))
(at start (not (waiting_o14)))
(at start (not (stacks-avail_n7)))
)
)
(:durative-action START-ORDER_O13_N7_N6
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n7))
(at start (waiting_o13))
)
:effect
(and
(at end (started_o13))
(at end (stacks-avail_n6))
(at start (not (waiting_o13)))
(at start (not (stacks-avail_n7)))
)
)
(:durative-action START-ORDER_O12_N7_N6
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n7))
(at start (waiting_o12))
)
:effect
(and
(at end (started_o12))
(at end (stacks-avail_n6))
(at start (not (waiting_o12)))
(at start (not (stacks-avail_n7)))
)
)
(:durative-action START-ORDER_O11_N7_N6
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n7))
(at start (waiting_o11))
)
:effect
(and
(at end (started_o11))
(at end (stacks-avail_n6))
(at start (not (waiting_o11)))
(at start (not (stacks-avail_n7)))
)
)
(:durative-action START-ORDER_O10_N7_N6
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n7))
(at start (waiting_o10))
)
:effect
(and
(at end (started_o10))
(at end (stacks-avail_n6))
(at start (not (waiting_o10)))
(at start (not (stacks-avail_n7)))
)
)
(:durative-action START-ORDER_O9_N7_N6
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n7))
(at start (waiting_o9))
)
:effect
(and
(at end (started_o9))
(at end (stacks-avail_n6))
(at start (not (waiting_o9)))
(at start (not (stacks-avail_n7)))
)
)
(:durative-action START-ORDER_O8_N7_N6
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n7))
(at start (waiting_o8))
)
:effect
(and
(at end (started_o8))
(at end (stacks-avail_n6))
(at start (not (waiting_o8)))
(at start (not (stacks-avail_n7)))
)
)
(:durative-action START-ORDER_O7_N7_N6
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n7))
(at start (waiting_o7))
)
:effect
(and
(at end (started_o7))
(at end (stacks-avail_n6))
(at start (not (waiting_o7)))
(at start (not (stacks-avail_n7)))
)
)
(:durative-action START-ORDER_O6_N7_N6
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n7))
(at start (waiting_o6))
)
:effect
(and
(at end (started_o6))
(at end (stacks-avail_n6))
(at start (not (waiting_o6)))
(at start (not (stacks-avail_n7)))
)
)
(:durative-action START-ORDER_O5_N7_N6
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n7))
(at start (waiting_o5))
)
:effect
(and
(at end (started_o5))
(at end (stacks-avail_n6))
(at start (not (waiting_o5)))
(at start (not (stacks-avail_n7)))
)
)
(:durative-action START-ORDER_O4_N7_N6
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n7))
(at start (waiting_o4))
)
:effect
(and
(at end (started_o4))
(at end (stacks-avail_n6))
(at start (not (waiting_o4)))
(at start (not (stacks-avail_n7)))
)
)
(:durative-action START-ORDER_O3_N7_N6
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n7))
(at start (waiting_o3))
)
:effect
(and
(at end (started_o3))
(at end (stacks-avail_n6))
(at start (not (waiting_o3)))
(at start (not (stacks-avail_n7)))
)
)
(:durative-action START-ORDER_O2_N7_N6
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n7))
(at start (waiting_o2))
)
:effect
(and
(at end (started_o2))
(at end (stacks-avail_n6))
(at start (not (waiting_o2)))
(at start (not (stacks-avail_n7)))
)
)
(:durative-action START-ORDER_O1_N7_N6
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n7))
(at start (waiting_o1))
)
:effect
(and
(at end (started_o1))
(at end (stacks-avail_n6))
(at start (not (waiting_o1)))
(at start (not (stacks-avail_n7)))
)
)
(:durative-action START-ORDER_O15_N8_N7
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n8))
(at start (waiting_o15))
)
:effect
(and
(at end (started_o15))
(at end (stacks-avail_n7))
(at start (not (waiting_o15)))
(at start (not (stacks-avail_n8)))
)
)
(:durative-action START-ORDER_O14_N8_N7
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n8))
(at start (waiting_o14))
)
:effect
(and
(at end (started_o14))
(at end (stacks-avail_n7))
(at start (not (waiting_o14)))
(at start (not (stacks-avail_n8)))
)
)
(:durative-action START-ORDER_O13_N8_N7
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n8))
(at start (waiting_o13))
)
:effect
(and
(at end (started_o13))
(at end (stacks-avail_n7))
(at start (not (waiting_o13)))
(at start (not (stacks-avail_n8)))
)
)
(:durative-action START-ORDER_O12_N8_N7
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n8))
(at start (waiting_o12))
)
:effect
(and
(at end (started_o12))
(at end (stacks-avail_n7))
(at start (not (waiting_o12)))
(at start (not (stacks-avail_n8)))
)
)
(:durative-action START-ORDER_O11_N8_N7
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n8))
(at start (waiting_o11))
)
:effect
(and
(at end (started_o11))
(at end (stacks-avail_n7))
(at start (not (waiting_o11)))
(at start (not (stacks-avail_n8)))
)
)
(:durative-action START-ORDER_O10_N8_N7
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n8))
(at start (waiting_o10))
)
:effect
(and
(at end (started_o10))
(at end (stacks-avail_n7))
(at start (not (waiting_o10)))
(at start (not (stacks-avail_n8)))
)
)
(:durative-action START-ORDER_O9_N8_N7
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n8))
(at start (waiting_o9))
)
:effect
(and
(at end (started_o9))
(at end (stacks-avail_n7))
(at start (not (waiting_o9)))
(at start (not (stacks-avail_n8)))
)
)
(:durative-action START-ORDER_O8_N8_N7
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n8))
(at start (waiting_o8))
)
:effect
(and
(at end (started_o8))
(at end (stacks-avail_n7))
(at start (not (waiting_o8)))
(at start (not (stacks-avail_n8)))
)
)
(:durative-action START-ORDER_O7_N8_N7
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n8))
(at start (waiting_o7))
)
:effect
(and
(at end (started_o7))
(at end (stacks-avail_n7))
(at start (not (waiting_o7)))
(at start (not (stacks-avail_n8)))
)
)
(:durative-action START-ORDER_O6_N8_N7
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n8))
(at start (waiting_o6))
)
:effect
(and
(at end (started_o6))
(at end (stacks-avail_n7))
(at start (not (waiting_o6)))
(at start (not (stacks-avail_n8)))
)
)
(:durative-action START-ORDER_O5_N8_N7
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n8))
(at start (waiting_o5))
)
:effect
(and
(at end (started_o5))
(at end (stacks-avail_n7))
(at start (not (waiting_o5)))
(at start (not (stacks-avail_n8)))
)
)
(:durative-action START-ORDER_O4_N8_N7
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n8))
(at start (waiting_o4))
)
:effect
(and
(at end (started_o4))
(at end (stacks-avail_n7))
(at start (not (waiting_o4)))
(at start (not (stacks-avail_n8)))
)
)
(:durative-action START-ORDER_O3_N8_N7
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n8))
(at start (waiting_o3))
)
:effect
(and
(at end (started_o3))
(at end (stacks-avail_n7))
(at start (not (waiting_o3)))
(at start (not (stacks-avail_n8)))
)
)
(:durative-action START-ORDER_O2_N8_N7
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n8))
(at start (waiting_o2))
)
:effect
(and
(at end (started_o2))
(at end (stacks-avail_n7))
(at start (not (waiting_o2)))
(at start (not (stacks-avail_n8)))
)
)
(:durative-action START-ORDER_O1_N8_N7
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n8))
(at start (waiting_o1))
)
:effect
(and
(at end (started_o1))
(at end (stacks-avail_n7))
(at start (not (waiting_o1)))
(at start (not (stacks-avail_n8)))
)
)
(:durative-action START-ORDER_O15_N9_N8
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n9))
(at start (waiting_o15))
)
:effect
(and
(at end (started_o15))
(at end (stacks-avail_n8))
(at start (not (waiting_o15)))
(at start (not (stacks-avail_n9)))
)
)
(:durative-action START-ORDER_O14_N9_N8
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n9))
(at start (waiting_o14))
)
:effect
(and
(at end (started_o14))
(at end (stacks-avail_n8))
(at start (not (waiting_o14)))
(at start (not (stacks-avail_n9)))
)
)
(:durative-action START-ORDER_O13_N9_N8
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n9))
(at start (waiting_o13))
)
:effect
(and
(at end (started_o13))
(at end (stacks-avail_n8))
(at start (not (waiting_o13)))
(at start (not (stacks-avail_n9)))
)
)
(:durative-action START-ORDER_O12_N9_N8
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n9))
(at start (waiting_o12))
)
:effect
(and
(at end (started_o12))
(at end (stacks-avail_n8))
(at start (not (waiting_o12)))
(at start (not (stacks-avail_n9)))
)
)
(:durative-action START-ORDER_O11_N9_N8
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n9))
(at start (waiting_o11))
)
:effect
(and
(at end (started_o11))
(at end (stacks-avail_n8))
(at start (not (waiting_o11)))
(at start (not (stacks-avail_n9)))
)
)
(:durative-action START-ORDER_O10_N9_N8
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n9))
(at start (waiting_o10))
)
:effect
(and
(at end (started_o10))
(at end (stacks-avail_n8))
(at start (not (waiting_o10)))
(at start (not (stacks-avail_n9)))
)
)
(:durative-action START-ORDER_O9_N9_N8
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n9))
(at start (waiting_o9))
)
:effect
(and
(at end (started_o9))
(at end (stacks-avail_n8))
(at start (not (waiting_o9)))
(at start (not (stacks-avail_n9)))
)
)
(:durative-action START-ORDER_O8_N9_N8
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n9))
(at start (waiting_o8))
)
:effect
(and
(at end (started_o8))
(at end (stacks-avail_n8))
(at start (not (waiting_o8)))
(at start (not (stacks-avail_n9)))
)
)
(:durative-action START-ORDER_O7_N9_N8
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n9))
(at start (waiting_o7))
)
:effect
(and
(at end (started_o7))
(at end (stacks-avail_n8))
(at start (not (waiting_o7)))
(at start (not (stacks-avail_n9)))
)
)
(:durative-action START-ORDER_O6_N9_N8
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n9))
(at start (waiting_o6))
)
:effect
(and
(at end (started_o6))
(at end (stacks-avail_n8))
(at start (not (waiting_o6)))
(at start (not (stacks-avail_n9)))
)
)
(:durative-action START-ORDER_O5_N9_N8
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n9))
(at start (waiting_o5))
)
:effect
(and
(at end (started_o5))
(at end (stacks-avail_n8))
(at start (not (waiting_o5)))
(at start (not (stacks-avail_n9)))
)
)
(:durative-action START-ORDER_O4_N9_N8
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n9))
(at start (waiting_o4))
)
:effect
(and
(at end (started_o4))
(at end (stacks-avail_n8))
(at start (not (waiting_o4)))
(at start (not (stacks-avail_n9)))
)
)
(:durative-action START-ORDER_O3_N9_N8
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n9))
(at start (waiting_o3))
)
:effect
(and
(at end (started_o3))
(at end (stacks-avail_n8))
(at start (not (waiting_o3)))
(at start (not (stacks-avail_n9)))
)
)
(:durative-action START-ORDER_O2_N9_N8
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n9))
(at start (waiting_o2))
)
:effect
(and
(at end (started_o2))
(at end (stacks-avail_n8))
(at start (not (waiting_o2)))
(at start (not (stacks-avail_n9)))
)
)
(:durative-action START-ORDER_O1_N9_N8
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n9))
(at start (waiting_o1))
)
:effect
(and
(at end (started_o1))
(at end (stacks-avail_n8))
(at start (not (waiting_o1)))
(at start (not (stacks-avail_n9)))
)
)
(:durative-action START-ORDER_O15_N10_N9
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n10))
(at start (waiting_o15))
)
:effect
(and
(at end (started_o15))
(at end (stacks-avail_n9))
(at start (not (waiting_o15)))
(at start (not (stacks-avail_n10)))
)
)
(:durative-action START-ORDER_O14_N10_N9
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n10))
(at start (waiting_o14))
)
:effect
(and
(at end (started_o14))
(at end (stacks-avail_n9))
(at start (not (waiting_o14)))
(at start (not (stacks-avail_n10)))
)
)
(:durative-action START-ORDER_O13_N10_N9
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n10))
(at start (waiting_o13))
)
:effect
(and
(at end (started_o13))
(at end (stacks-avail_n9))
(at start (not (waiting_o13)))
(at start (not (stacks-avail_n10)))
)
)
(:durative-action START-ORDER_O12_N10_N9
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n10))
(at start (waiting_o12))
)
:effect
(and
(at end (started_o12))
(at end (stacks-avail_n9))
(at start (not (waiting_o12)))
(at start (not (stacks-avail_n10)))
)
)
(:durative-action START-ORDER_O11_N10_N9
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n10))
(at start (waiting_o11))
)
:effect
(and
(at end (started_o11))
(at end (stacks-avail_n9))
(at start (not (waiting_o11)))
(at start (not (stacks-avail_n10)))
)
)
(:durative-action START-ORDER_O10_N10_N9
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n10))
(at start (waiting_o10))
)
:effect
(and
(at end (started_o10))
(at end (stacks-avail_n9))
(at start (not (waiting_o10)))
(at start (not (stacks-avail_n10)))
)
)
(:durative-action START-ORDER_O9_N10_N9
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n10))
(at start (waiting_o9))
)
:effect
(and
(at end (started_o9))
(at end (stacks-avail_n9))
(at start (not (waiting_o9)))
(at start (not (stacks-avail_n10)))
)
)
(:durative-action START-ORDER_O8_N10_N9
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n10))
(at start (waiting_o8))
)
:effect
(and
(at end (started_o8))
(at end (stacks-avail_n9))
(at start (not (waiting_o8)))
(at start (not (stacks-avail_n10)))
)
)
(:durative-action START-ORDER_O7_N10_N9
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n10))
(at start (waiting_o7))
)
:effect
(and
(at end (started_o7))
(at end (stacks-avail_n9))
(at start (not (waiting_o7)))
(at start (not (stacks-avail_n10)))
)
)
(:durative-action START-ORDER_O6_N10_N9
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n10))
(at start (waiting_o6))
)
:effect
(and
(at end (started_o6))
(at end (stacks-avail_n9))
(at start (not (waiting_o6)))
(at start (not (stacks-avail_n10)))
)
)
(:durative-action START-ORDER_O5_N10_N9
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n10))
(at start (waiting_o5))
)
:effect
(and
(at end (started_o5))
(at end (stacks-avail_n9))
(at start (not (waiting_o5)))
(at start (not (stacks-avail_n10)))
)
)
(:durative-action START-ORDER_O4_N10_N9
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n10))
(at start (waiting_o4))
)
:effect
(and
(at end (started_o4))
(at end (stacks-avail_n9))
(at start (not (waiting_o4)))
(at start (not (stacks-avail_n10)))
)
)
(:durative-action START-ORDER_O3_N10_N9
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n10))
(at start (waiting_o3))
)
:effect
(and
(at end (started_o3))
(at end (stacks-avail_n9))
(at start (not (waiting_o3)))
(at start (not (stacks-avail_n10)))
)
)
(:durative-action START-ORDER_O2_N10_N9
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n10))
(at start (waiting_o2))
)
:effect
(and
(at end (started_o2))
(at end (stacks-avail_n9))
(at start (not (waiting_o2)))
(at start (not (stacks-avail_n10)))
)
)
(:durative-action START-ORDER_O1_N10_N9
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n10))
(at start (waiting_o1))
)
:effect
(and
(at end (started_o1))
(at end (stacks-avail_n9))
(at start (not (waiting_o1)))
(at start (not (stacks-avail_n10)))
)
)
(:durative-action START-ORDER_O15_N11_N10
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n11))
(at start (waiting_o15))
)
:effect
(and
(at end (started_o15))
(at end (stacks-avail_n10))
(at start (not (waiting_o15)))
(at start (not (stacks-avail_n11)))
)
)
(:durative-action START-ORDER_O14_N11_N10
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n11))
(at start (waiting_o14))
)
:effect
(and
(at end (started_o14))
(at end (stacks-avail_n10))
(at start (not (waiting_o14)))
(at start (not (stacks-avail_n11)))
)
)
(:durative-action START-ORDER_O13_N11_N10
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n11))
(at start (waiting_o13))
)
:effect
(and
(at end (started_o13))
(at end (stacks-avail_n10))
(at start (not (waiting_o13)))
(at start (not (stacks-avail_n11)))
)
)
(:durative-action START-ORDER_O12_N11_N10
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n11))
(at start (waiting_o12))
)
:effect
(and
(at end (started_o12))
(at end (stacks-avail_n10))
(at start (not (waiting_o12)))
(at start (not (stacks-avail_n11)))
)
)
(:durative-action START-ORDER_O11_N11_N10
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n11))
(at start (waiting_o11))
)
:effect
(and
(at end (started_o11))
(at end (stacks-avail_n10))
(at start (not (waiting_o11)))
(at start (not (stacks-avail_n11)))
)
)
(:durative-action START-ORDER_O10_N11_N10
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n11))
(at start (waiting_o10))
)
:effect
(and
(at end (started_o10))
(at end (stacks-avail_n10))
(at start (not (waiting_o10)))
(at start (not (stacks-avail_n11)))
)
)
(:durative-action START-ORDER_O9_N11_N10
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n11))
(at start (waiting_o9))
)
:effect
(and
(at end (started_o9))
(at end (stacks-avail_n10))
(at start (not (waiting_o9)))
(at start (not (stacks-avail_n11)))
)
)
(:durative-action START-ORDER_O8_N11_N10
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n11))
(at start (waiting_o8))
)
:effect
(and
(at end (started_o8))
(at end (stacks-avail_n10))
(at start (not (waiting_o8)))
(at start (not (stacks-avail_n11)))
)
)
(:durative-action START-ORDER_O7_N11_N10
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n11))
(at start (waiting_o7))
)
:effect
(and
(at end (started_o7))
(at end (stacks-avail_n10))
(at start (not (waiting_o7)))
(at start (not (stacks-avail_n11)))
)
)
(:durative-action START-ORDER_O6_N11_N10
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n11))
(at start (waiting_o6))
)
:effect
(and
(at end (started_o6))
(at end (stacks-avail_n10))
(at start (not (waiting_o6)))
(at start (not (stacks-avail_n11)))
)
)
(:durative-action START-ORDER_O5_N11_N10
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n11))
(at start (waiting_o5))
)
:effect
(and
(at end (started_o5))
(at end (stacks-avail_n10))
(at start (not (waiting_o5)))
(at start (not (stacks-avail_n11)))
)
)
(:durative-action START-ORDER_O4_N11_N10
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n11))
(at start (waiting_o4))
)
:effect
(and
(at end (started_o4))
(at end (stacks-avail_n10))
(at start (not (waiting_o4)))
(at start (not (stacks-avail_n11)))
)
)
(:durative-action START-ORDER_O3_N11_N10
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n11))
(at start (waiting_o3))
)
:effect
(and
(at end (started_o3))
(at end (stacks-avail_n10))
(at start (not (waiting_o3)))
(at start (not (stacks-avail_n11)))
)
)
(:durative-action START-ORDER_O2_N11_N10
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n11))
(at start (waiting_o2))
)
:effect
(and
(at end (started_o2))
(at end (stacks-avail_n10))
(at start (not (waiting_o2)))
(at start (not (stacks-avail_n11)))
)
)
(:durative-action START-ORDER_O1_N11_N10
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n11))
(at start (waiting_o1))
)
:effect
(and
(at end (started_o1))
(at end (stacks-avail_n10))
(at start (not (waiting_o1)))
(at start (not (stacks-avail_n11)))
)
)
(:durative-action START-ORDER_O15_N12_N11
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n12))
(at start (waiting_o15))
)
:effect
(and
(at end (started_o15))
(at end (stacks-avail_n11))
(at start (not (waiting_o15)))
(at start (not (stacks-avail_n12)))
)
)
(:durative-action START-ORDER_O14_N12_N11
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n12))
(at start (waiting_o14))
)
:effect
(and
(at end (started_o14))
(at end (stacks-avail_n11))
(at start (not (waiting_o14)))
(at start (not (stacks-avail_n12)))
)
)
(:durative-action START-ORDER_O13_N12_N11
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n12))
(at start (waiting_o13))
)
:effect
(and
(at end (started_o13))
(at end (stacks-avail_n11))
(at start (not (waiting_o13)))
(at start (not (stacks-avail_n12)))
)
)
(:durative-action START-ORDER_O12_N12_N11
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n12))
(at start (waiting_o12))
)
:effect
(and
(at end (started_o12))
(at end (stacks-avail_n11))
(at start (not (waiting_o12)))
(at start (not (stacks-avail_n12)))
)
)
(:durative-action START-ORDER_O11_N12_N11
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n12))
(at start (waiting_o11))
)
:effect
(and
(at end (started_o11))
(at end (stacks-avail_n11))
(at start (not (waiting_o11)))
(at start (not (stacks-avail_n12)))
)
)
(:durative-action START-ORDER_O10_N12_N11
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n12))
(at start (waiting_o10))
)
:effect
(and
(at end (started_o10))
(at end (stacks-avail_n11))
(at start (not (waiting_o10)))
(at start (not (stacks-avail_n12)))
)
)
(:durative-action START-ORDER_O9_N12_N11
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n12))
(at start (waiting_o9))
)
:effect
(and
(at end (started_o9))
(at end (stacks-avail_n11))
(at start (not (waiting_o9)))
(at start (not (stacks-avail_n12)))
)
)
(:durative-action START-ORDER_O8_N12_N11
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n12))
(at start (waiting_o8))
)
:effect
(and
(at end (started_o8))
(at end (stacks-avail_n11))
(at start (not (waiting_o8)))
(at start (not (stacks-avail_n12)))
)
)
(:durative-action START-ORDER_O7_N12_N11
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n12))
(at start (waiting_o7))
)
:effect
(and
(at end (started_o7))
(at end (stacks-avail_n11))
(at start (not (waiting_o7)))
(at start (not (stacks-avail_n12)))
)
)
(:durative-action START-ORDER_O6_N12_N11
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n12))
(at start (waiting_o6))
)
:effect
(and
(at end (started_o6))
(at end (stacks-avail_n11))
(at start (not (waiting_o6)))
(at start (not (stacks-avail_n12)))
)
)
(:durative-action START-ORDER_O5_N12_N11
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n12))
(at start (waiting_o5))
)
:effect
(and
(at end (started_o5))
(at end (stacks-avail_n11))
(at start (not (waiting_o5)))
(at start (not (stacks-avail_n12)))
)
)
(:durative-action START-ORDER_O4_N12_N11
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n12))
(at start (waiting_o4))
)
:effect
(and
(at end (started_o4))
(at end (stacks-avail_n11))
(at start (not (waiting_o4)))
(at start (not (stacks-avail_n12)))
)
)
(:durative-action START-ORDER_O3_N12_N11
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n12))
(at start (waiting_o3))
)
:effect
(and
(at end (started_o3))
(at end (stacks-avail_n11))
(at start (not (waiting_o3)))
(at start (not (stacks-avail_n12)))
)
)
(:durative-action START-ORDER_O2_N12_N11
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n12))
(at start (waiting_o2))
)
:effect
(and
(at end (started_o2))
(at end (stacks-avail_n11))
(at start (not (waiting_o2)))
(at start (not (stacks-avail_n12)))
)
)
(:durative-action START-ORDER_O1_N12_N11
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n12))
(at start (waiting_o1))
)
:effect
(and
(at end (started_o1))
(at end (stacks-avail_n11))
(at start (not (waiting_o1)))
(at start (not (stacks-avail_n12)))
)
)
(:durative-action START-ORDER_O15_N13_N12
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n13))
(at start (waiting_o15))
)
:effect
(and
(at end (started_o15))
(at end (stacks-avail_n12))
(at start (not (waiting_o15)))
(at start (not (stacks-avail_n13)))
)
)
(:durative-action START-ORDER_O14_N13_N12
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n13))
(at start (waiting_o14))
)
:effect
(and
(at end (started_o14))
(at end (stacks-avail_n12))
(at start (not (waiting_o14)))
(at start (not (stacks-avail_n13)))
)
)
(:durative-action START-ORDER_O13_N13_N12
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n13))
(at start (waiting_o13))
)
:effect
(and
(at end (started_o13))
(at end (stacks-avail_n12))
(at start (not (waiting_o13)))
(at start (not (stacks-avail_n13)))
)
)
(:durative-action START-ORDER_O12_N13_N12
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n13))
(at start (waiting_o12))
)
:effect
(and
(at end (started_o12))
(at end (stacks-avail_n12))
(at start (not (waiting_o12)))
(at start (not (stacks-avail_n13)))
)
)
(:durative-action START-ORDER_O11_N13_N12
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n13))
(at start (waiting_o11))
)
:effect
(and
(at end (started_o11))
(at end (stacks-avail_n12))
(at start (not (waiting_o11)))
(at start (not (stacks-avail_n13)))
)
)
(:durative-action START-ORDER_O10_N13_N12
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n13))
(at start (waiting_o10))
)
:effect
(and
(at end (started_o10))
(at end (stacks-avail_n12))
(at start (not (waiting_o10)))
(at start (not (stacks-avail_n13)))
)
)
(:durative-action START-ORDER_O9_N13_N12
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n13))
(at start (waiting_o9))
)
:effect
(and
(at end (started_o9))
(at end (stacks-avail_n12))
(at start (not (waiting_o9)))
(at start (not (stacks-avail_n13)))
)
)
(:durative-action START-ORDER_O8_N13_N12
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n13))
(at start (waiting_o8))
)
:effect
(and
(at end (started_o8))
(at end (stacks-avail_n12))
(at start (not (waiting_o8)))
(at start (not (stacks-avail_n13)))
)
)
(:durative-action START-ORDER_O7_N13_N12
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n13))
(at start (waiting_o7))
)
:effect
(and
(at end (started_o7))
(at end (stacks-avail_n12))
(at start (not (waiting_o7)))
(at start (not (stacks-avail_n13)))
)
)
(:durative-action START-ORDER_O6_N13_N12
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n13))
(at start (waiting_o6))
)
:effect
(and
(at end (started_o6))
(at end (stacks-avail_n12))
(at start (not (waiting_o6)))
(at start (not (stacks-avail_n13)))
)
)
(:durative-action START-ORDER_O5_N13_N12
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n13))
(at start (waiting_o5))
)
:effect
(and
(at end (started_o5))
(at end (stacks-avail_n12))
(at start (not (waiting_o5)))
(at start (not (stacks-avail_n13)))
)
)
(:durative-action START-ORDER_O4_N13_N12
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n13))
(at start (waiting_o4))
)
:effect
(and
(at end (started_o4))
(at end (stacks-avail_n12))
(at start (not (waiting_o4)))
(at start (not (stacks-avail_n13)))
)
)
(:durative-action START-ORDER_O3_N13_N12
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n13))
(at start (waiting_o3))
)
:effect
(and
(at end (started_o3))
(at end (stacks-avail_n12))
(at start (not (waiting_o3)))
(at start (not (stacks-avail_n13)))
)
)
(:durative-action START-ORDER_O2_N13_N12
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n13))
(at start (waiting_o2))
)
:effect
(and
(at end (started_o2))
(at end (stacks-avail_n12))
(at start (not (waiting_o2)))
(at start (not (stacks-avail_n13)))
)
)
(:durative-action START-ORDER_O1_N13_N12
:parameters ()
:duration (= ?duration 1.000000)
:condition
(and
(at start (stacks-avail_n13))
(at start (waiting_o1))
)
:effect
(and
(at end (started_o1))
(at end (stacks-avail_n12))
(at start (not (waiting_o1)))
(at start (not (stacks-avail_n13)))
)
)
)