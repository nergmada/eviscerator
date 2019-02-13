
(define (problem os-complex-shawinstances-4)
        (:domain openstacks-complex)
        (:objects o1 o2 o3 o4 o5 o6 o7 o8 o9 o10 o11 o12 o13 o14 o15 o16 o17
         o18 o19 o20 - order p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15
         p16 p17 p18 p19 p20 - product)
        (:init (waiting o1) (includes o1 p6) (includes o1 p10)
         (includes o1 p15) (includes o1 p19) (waiting o2) (includes o2 p2)
         (includes o2 p5) (includes o2 p7) (includes o2 p13) (includes o2 p14)
         (includes o2 p19) (waiting o3) (includes o3 p2) (includes o3 p8)
         (includes o3 p11) (waiting o4) (includes o4 p1) (includes o4 p3)
         (includes o4 p5) (includes o4 p12) (includes o4 p13) (includes o4 p14)
         (includes o4 p16) (waiting o5) (includes o5 p2) (includes o5 p4)
         (includes o5 p5) (includes o5 p8) (includes o5 p11) (includes o5 p15)
         (waiting o6) (includes o6 p12) (includes o6 p17) (includes o6 p19)
         (waiting o7) (includes o7 p2) (includes o7 p3) (includes o7 p4)
         (includes o7 p7) (includes o7 p9) (includes o7 p11) (includes o7 p14)
         (includes o7 p16) (waiting o8) (includes o8 p8) (includes o8 p11)
         (includes o8 p17) (waiting o9) (includes o9 p1) (includes o9 p6)
         (includes o9 p9) (includes o9 p12) (includes o9 p16) (includes o9 p17)
         (includes o9 p18) (includes o9 p20) (waiting o10) (includes o10 p6)
         (includes o10 p16) (includes o10 p19) (includes o10 p20) (waiting o11)
         (includes o11 p1) (includes o11 p3) (includes o11 p7)
         (includes o11 p9) (includes o11 p12) (includes o11 p13)
         (includes o11 p14) (includes o11 p18) (waiting o12) (includes o12 p3)
         (includes o12 p8) (includes o12 p9) (includes o12 p11)
         (includes o12 p12) (includes o12 p17) (includes o12 p18) (waiting o13)
         (includes o13 p4) (includes o13 p5) (includes o13 p6)
         (includes o13 p7) (includes o13 p9) (includes o13 p13)
         (includes o13 p14) (includes o13 p16) (includes o13 p18) (waiting o14)
         (includes o14 p15) (includes o14 p17) (includes o14 p19)
         (includes o14 p20) (waiting o15) (includes o15 p1) (includes o15 p12)
         (includes o15 p13) (waiting o16) (includes o16 p8) (includes o16 p10)
         (waiting o17) (includes o17 p1) (includes o17 p3) (includes o17 p4)
         (includes o17 p5) (includes o17 p6) (includes o17 p7)
         (includes o17 p9) (includes o17 p10) (includes o17 p13)
         (includes o17 p14) (includes o17 p15) (includes o17 p16)
         (includes o17 p20) (waiting o18) (includes o18 p1) (includes o18 p2)
         (includes o18 p3) (includes o18 p4) (includes o18 p5)
         (includes o18 p7) (includes o18 p8) (includes o18 p9)
         (includes o18 p10) (includes o18 p11) (includes o18 p12)
         (includes o18 p14) (includes o18 p16) (waiting o19) (includes o19 p2)
         (includes o19 p4) (includes o19 p7) (includes o19 p11) (waiting o20)
         (includes o20 p8) (includes o20 p10) (includes o20 p15)
         (includes o20 p17) (includes o20 p18) (= (make-time p1) 20)
         (= (make-time p2) 180) (= (make-time p3) 80) (= (make-time p4) 180)
         (= (make-time p5) 80) (= (make-time p6) 200) (= (make-time p7) 160)
         (= (make-time p8) 40) (= (make-time p9) 60) (= (make-time p10) 140)
         (= (make-time p11) 180) (= (make-time p12) 100)
         (= (make-time p13) 180) (= (make-time p14) 80) (= (make-time p15) 160)
         (= (make-time p16) 40) (= (make-time p17) 40) (= (make-time p18) 60)
         (= (make-time p19) 140) (= (make-time p20) 20) (= (stacks-in-use) 0)
         (= (max-in-use) 0))
        (:goal
         (and (shipped o1)
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
              (shipped o20)))
        (:metric minimize (+ (* 71.5 (max-in-use)) (total-time))))