(define (problem os-netbenefit-p33_1)
(:domain openstacks-netbenefit-numeric-ADL)
(:objects 
o1 o2 o3 o4 o5 o6 o7 o8 o9 o10 o11 o12 o13 o14 o15 o16 o17 o18 o19 o20 o21 o22 o23 o24 o25 o26 o27 o28 o29 o30 o31 o32 o33  - order
p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33  - product

)

(:init
(= (stacks-in-use) 0)
(= (max-in-use) 0)

(waiting o1)
(includes o1 p6)

(waiting o2)
(includes o2 p16)

(waiting o3)
(includes o3 p31)

(waiting o4)
(includes o4 p18)(includes o4 p29)

(waiting o5)
(includes o5 p1)(includes o5 p11)(includes o5 p12)

(waiting o6)
(includes o6 p25)

(waiting o7)
(includes o7 p25)(includes o7 p29)

(waiting o8)
(includes o8 p10)(includes o8 p17)

(waiting o9)
(includes o9 p12)

(waiting o10)
(includes o10 p4)(includes o10 p7)(includes o10 p23)

(waiting o11)
(includes o11 p13)(includes o11 p25)

(waiting o12)
(includes o12 p11)

(waiting o13)
(includes o13 p29)(includes o13 p33)

(waiting o14)
(includes o14 p25)

(waiting o15)
(includes o15 p26)(includes o15 p32)

(waiting o16)
(includes o16 p2)(includes o16 p8)(includes o16 p29)

(waiting o17)
(includes o17 p3)(includes o17 p26)

(waiting o18)
(includes o18 p5)(includes o18 p10)

(waiting o19)
(includes o19 p13)(includes o19 p17)(includes o19 p19)

(waiting o20)
(includes o20 p29)(includes o20 p33)

(waiting o21)
(includes o21 p6)(includes o21 p11)(includes o21 p27)

(waiting o22)
(includes o22 p1)(includes o22 p4)

(waiting o23)
(includes o23 p13)(includes o23 p28)

(waiting o24)
(includes o24 p27)

(waiting o25)
(includes o25 p22)

(waiting o26)
(includes o26 p14)

(waiting o27)
(includes o27 p16)

(waiting o28)
(includes o28 p30)(includes o28 p31)

(waiting o29)
(includes o29 p15)

(waiting o30)
(includes o30 p10)(includes o30 p11)(includes o30 p13)(includes o30 p15)(includes o30 p17)(includes o30 p20)

(waiting o31)
(includes o31 p9)

(waiting o32)
(includes o32 p20)(includes o32 p21)(includes o32 p24)

(waiting o33)
(includes o33 p6)(includes o33 p14)(includes o33 p32)

(= (total-cost) 0)

(= (stack-cost) 16)

)

(:goal
(and
(shipped o1)
(shipped o2)
(shipped o3)
(shipped o4)
(shipped o5)
(shipped o6)
(shipped o7)
(shipped o8)
(shipped o9)
(shipped o10)
(shipped o11)
(shipped o12)
(shipped o13)
(shipped o14)
(shipped o15)
(shipped o16)
(shipped o17)
(shipped o18)
(shipped o19)
(shipped o20)
(shipped o21)
(shipped o22)
(shipped o23)
(shipped o24)
(shipped o25)
(shipped o26)
(shipped o27)
(shipped o28)
(shipped o29)
(shipped o30)
(shipped o31)
(shipped o32)
(shipped o33)
(preference d-o1-p6 (delivered o1 p6))
(preference d-o2-p16 (delivered o2 p16))
(preference d-o3-p31 (delivered o3 p31))
(preference d-o4-p18 (delivered o4 p18))
(preference d-o4-p29 (delivered o4 p29))
(preference d-o5-p1 (delivered o5 p1))
(preference d-o5-p11 (delivered o5 p11))
(preference d-o5-p12 (delivered o5 p12))
(preference d-o6-p25 (delivered o6 p25))
(preference d-o7-p25 (delivered o7 p25))
(preference d-o7-p29 (delivered o7 p29))
(preference d-o8-p10 (delivered o8 p10))
(preference d-o8-p17 (delivered o8 p17))
(preference d-o9-p12 (delivered o9 p12))
(preference d-o10-p4 (delivered o10 p4))
(preference d-o10-p7 (delivered o10 p7))
(preference d-o10-p23 (delivered o10 p23))
(preference d-o11-p13 (delivered o11 p13))
(preference d-o11-p25 (delivered o11 p25))
(preference d-o12-p11 (delivered o12 p11))
(preference d-o13-p29 (delivered o13 p29))
(preference d-o13-p33 (delivered o13 p33))
(preference d-o14-p25 (delivered o14 p25))
(preference d-o15-p26 (delivered o15 p26))
(preference d-o15-p32 (delivered o15 p32))
(preference d-o16-p2 (delivered o16 p2))
(preference d-o16-p8 (delivered o16 p8))
(preference d-o16-p29 (delivered o16 p29))
(preference d-o17-p3 (delivered o17 p3))
(preference d-o17-p26 (delivered o17 p26))
(preference d-o18-p5 (delivered o18 p5))
(preference d-o18-p10 (delivered o18 p10))
(preference d-o19-p13 (delivered o19 p13))
(preference d-o19-p17 (delivered o19 p17))
(preference d-o19-p19 (delivered o19 p19))
(preference d-o20-p29 (delivered o20 p29))
(preference d-o20-p33 (delivered o20 p33))
(preference d-o21-p6 (delivered o21 p6))
(preference d-o21-p11 (delivered o21 p11))
(preference d-o21-p27 (delivered o21 p27))
(preference d-o22-p1 (delivered o22 p1))
(preference d-o22-p4 (delivered o22 p4))
(preference d-o23-p13 (delivered o23 p13))
(preference d-o23-p28 (delivered o23 p28))
(preference d-o24-p27 (delivered o24 p27))
(preference d-o25-p22 (delivered o25 p22))
(preference d-o26-p14 (delivered o26 p14))
(preference d-o27-p16 (delivered o27 p16))
(preference d-o28-p30 (delivered o28 p30))
(preference d-o28-p31 (delivered o28 p31))
(preference d-o29-p15 (delivered o29 p15))
(preference d-o30-p10 (delivered o30 p10))
(preference d-o30-p11 (delivered o30 p11))
(preference d-o30-p13 (delivered o30 p13))
(preference d-o30-p15 (delivered o30 p15))
(preference d-o30-p17 (delivered o30 p17))
(preference d-o30-p20 (delivered o30 p20))
(preference d-o31-p9 (delivered o31 p9))
(preference d-o32-p20 (delivered o32 p20))
(preference d-o32-p21 (delivered o32 p21))
(preference d-o32-p24 (delivered o32 p24))
(preference d-o33-p6 (delivered o33 p6))
(preference d-o33-p14 (delivered o33 p14))
(preference d-o33-p32 (delivered o33 p32))
))

(:metric maximize (- 544 (+
(total-cost)
(* (is-violated d-o1-p6) 1)
(* (is-violated d-o2-p16) 1)
(* (is-violated d-o3-p31) 1)
(* (is-violated d-o4-p18) 1)
(* (is-violated d-o4-p29) 1)
(* (is-violated d-o5-p1) 1)
(* (is-violated d-o5-p11) 1)
(* (is-violated d-o5-p12) 1)
(* (is-violated d-o6-p25) 1)
(* (is-violated d-o7-p25) 1)
(* (is-violated d-o7-p29) 1)
(* (is-violated d-o8-p10) 1)
(* (is-violated d-o8-p17) 1)
(* (is-violated d-o9-p12) 1)
(* (is-violated d-o10-p4) 1)
(* (is-violated d-o10-p7) 1)
(* (is-violated d-o10-p23) 1)
(* (is-violated d-o11-p13) 1)
(* (is-violated d-o11-p25) 1)
(* (is-violated d-o12-p11) 1)
(* (is-violated d-o13-p29) 1)
(* (is-violated d-o13-p33) 1)
(* (is-violated d-o14-p25) 1)
(* (is-violated d-o15-p26) 1)
(* (is-violated d-o15-p32) 1)
(* (is-violated d-o16-p2) 1)
(* (is-violated d-o16-p8) 1)
(* (is-violated d-o16-p29) 1)
(* (is-violated d-o17-p3) 1)
(* (is-violated d-o17-p26) 1)
(* (is-violated d-o18-p5) 1)
(* (is-violated d-o18-p10) 1)
(* (is-violated d-o19-p13) 1)
(* (is-violated d-o19-p17) 1)
(* (is-violated d-o19-p19) 1)
(* (is-violated d-o20-p29) 1)
(* (is-violated d-o20-p33) 1)
(* (is-violated d-o21-p6) 1)
(* (is-violated d-o21-p11) 1)
(* (is-violated d-o21-p27) 1)
(* (is-violated d-o22-p1) 1)
(* (is-violated d-o22-p4) 1)
(* (is-violated d-o23-p13) 1)
(* (is-violated d-o23-p28) 1)
(* (is-violated d-o24-p27) 1)
(* (is-violated d-o25-p22) 1)
(* (is-violated d-o26-p14) 1)
(* (is-violated d-o27-p16) 1)
(* (is-violated d-o28-p30) 1)
(* (is-violated d-o28-p31) 1)
(* (is-violated d-o29-p15) 1)
(* (is-violated d-o30-p10) 1)
(* (is-violated d-o30-p11) 1)
(* (is-violated d-o30-p13) 1)
(* (is-violated d-o30-p15) 1)
(* (is-violated d-o30-p17) 1)
(* (is-violated d-o30-p20) 1)
(* (is-violated d-o31-p9) 1)
(* (is-violated d-o32-p20) 1)
(* (is-violated d-o32-p21) 1)
(* (is-violated d-o32-p24) 1)
(* (is-violated d-o33-p6) 1)
(* (is-violated d-o33-p14) 1)
(* (is-violated d-o33-p32) 1)
)))
)
