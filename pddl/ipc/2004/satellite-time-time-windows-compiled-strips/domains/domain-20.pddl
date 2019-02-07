
(define (domain satellite)
  (:requirements :strips :equality :typing :fluents :durative-actions)
(:types satellite antenna direction instrument mode)
 

(:constants
	satellite0 - satellite
	satellite1 - satellite
	satellite2 - satellite
	satellite3 - satellite
	satellite4 - satellite
        antenna0 - antenna
        antenna1 - antenna
        antenna2 - antenna
        antenna3 - antenna
        antenna4 - antenna
        antenna5 - antenna
        antenna6 - antenna
        antenna7 - antenna

)

(:predicates 
               (on_board ?i - instrument ?s - satellite)
	       (supports ?i - instrument ?m - mode)
	       (pointing ?s - satellite ?d - direction)
	       (power_avail ?s - satellite)
	       (power_on ?i - instrument)
	       (calibrated ?i - instrument)
	       (have_image ?d - direction ?m - mode)
	       (calibration_target ?i - instrument ?d - direction)
               (available ?a - antenna)
               (visible ?a - antenna ?s - satellite)
               (sent_image ?d - direction ?m - mode)
               (TLstart)
               (TLstarted)
               (TLend)
               (TLrunning)
               (TL0)
               (TL1)
               (TL2)
               (TL3)
               (TL4)
               (TL5)
               (TL6)
               (TL7)
               (TL8)
               (TL9)
               (TL10)
               (TL11)
               (TL12)
               (TL13)
               (TL14)
               (TL15)
               (TL16)
               (TL17)
               (TL18)
               (TL19)
)

 

  (:functions (slew_time ?a ?b - direction)
            (calibration_time ?a - instrument ?d - direction)
            (send_time ?d - direction ?m - mode)
	)

 

  (:durative-action turn_to
   :parameters (?s - satellite ?d_new - direction ?d_prev - direction)
   :duration (= ?duration (slew_time ?d_prev ?d_new))
   :condition (and (at start (TLstarted)) (at start (pointing ?s ?d_prev))
              )
   :effect (and  (at end (pointing ?s ?d_new))
                 (at start (not (pointing ?s ?d_prev)))
           )
  )

 
  (:durative-action switch_on
   :parameters (?i - instrument ?s - satellite)
   :duration (= ?duration 2)
   :condition (and (at start (TLstarted)) (over all (on_board ?i ?s)) 
                      (at start (power_avail ?s)))
   :effect (and (at end (power_on ?i))
                (at start (not (calibrated ?i)))
                (at start (not (power_avail ?s)))
           )
          
  )

 
  (:durative-action switch_off
   :parameters (?i - instrument ?s - satellite)
   :duration (= ?duration 1)
   :condition (and (at start (TLstarted)) (over all (on_board ?i ?s))
                      (at start (power_on ?i)) 
                  )
   :effect (and (at start (not (power_on ?i)))
                (at end (power_avail ?s))
           )
  )

  (:durative-action calibrate
   :parameters (?s - satellite ?i - instrument ?d - direction)
   :duration (= ?duration (calibration_time ?i ?d))
   :condition (and (at start (TLstarted)) (over all (on_board ?i ?s))
		      (over all (calibration_target ?i ?d))
                      (at start (pointing ?s ?d))
                      (over all (power_on ?i))
                      (at end (power_on ?i))
                  )
   :effect (at end (calibrated ?i)) 
  )


  (:durative-action take_image
   :parameters (?s - satellite ?d - direction ?i - instrument ?m - mode)
   :duration (= ?duration 7)
   :condition (and (at start (TLstarted)) (over all (calibrated ?i))
                      (over all (on_board ?i ?s))
                      (over all (supports ?i ?m) )
                      (over all (power_on ?i))
                      (over all (pointing ?s ?d))
                      (at end (power_on ?i))
               )
   :effect (at end (have_image ?d ?m))
  )


  (:durative-action send_image
   :parameters (?s - satellite ?a - antenna ?d - direction ?m - mode)
   :duration (= ?duration (send_time ?d ?m))
   :condition (and (at start (TLstarted)) (at start (have_image ?d ?m))
                   (at start (available ?a))
                   (over all (visible ?a ?s))
               )
   :effect (and (at end (sent_image ?d ?m))
                (at start (not (available ?a)))
                (at end (available ?a)))
  )


(:durative-action timedliteralwrapper
 :parameters ()
 :duration (= ?duration 298.04)
 :condition
	(and (at start (TLstart)))
 :effect
	(and (at start (not (TLstart))) (at start (TLstarted)) (at start (TL0))
             (at start (TLrunning)) (at end (not (TLrunning)))))

(:durative-action timedliteral1
 :parameters ()
 :duration (= ?duration 44.00)
 :condition
	(and (over all (TLrunning)) (over all (TL0)))
 :effect
	(and (at end (TL1)) (at end (not (TL0)))
	(at end (visible antenna0 satellite1))
	(at end (visible antenna0 satellite4))
))

(:durative-action timedliteral2
 :parameters ()
 :duration (= ?duration 8.00)
 :condition
	(and (over all (TLrunning)) (over all (TL1)))
 :effect
	(and (at end (TL2)) (at end (not (TL1)))
	(at end (visible antenna1 satellite4))
	(at end (visible antenna1 satellite2))
))

(:durative-action timedliteral3
 :parameters ()
 :duration (= ?duration 6.00)
 :condition
	(and (over all (TLrunning)) (over all (TL2)))
 :effect
	(and (at end (TL3)) (at end (not (TL2)))
	(at end (visible antenna2 satellite2))
	(at end (visible antenna2 satellite0))
	(at end (visible antenna2 satellite1))
))

(:durative-action timedliteral4
 :parameters ()
 :duration (= ?duration 10.00)
 :condition
	(and (over all (TLrunning)) (over all (TL3)))
 :effect
	(and (at end (TL4)) (at end (not (TL3)))
	(at end (visible antenna3 satellite2))
	(at end (visible antenna3 satellite4))
	(at end (visible antenna3 satellite1))
))

(:durative-action timedliteral5
 :parameters ()
 :duration (= ?duration 9.00)
 :condition
	(and (over all (TLrunning)) (over all (TL4)))
 :effect
	(and (at end (TL5)) (at end (not (TL4)))
	(at end (visible antenna4 satellite0))
	(at end (visible antenna4 satellite1))
	(at end (visible antenna4 satellite2))
	(at end (visible antenna4 satellite4))
))

(:durative-action timedliteral6
 :parameters ()
 :duration (= ?duration 14.00)
 :condition
	(and (over all (TLrunning)) (over all (TL5)))
 :effect
	(and (at end (TL6)) (at end (not (TL5)))
	(at end (visible antenna5 satellite0))
	(at end (visible antenna5 satellite4))
	(at end (visible antenna5 satellite2))
))

(:durative-action timedliteral7
 :parameters ()
 :duration (= ?duration 11.00)
 :condition
	(and (over all (TLrunning)) (over all (TL6)))
 :effect
	(and (at end (TL7)) (at end (not (TL6)))
	(at end (visible antenna6 satellite1))
	(at end (visible antenna6 satellite4))
	(at end (visible antenna6 satellite0))
))

(:durative-action timedliteral8
 :parameters ()
 :duration (= ?duration 6.00)
 :condition
	(and (over all (TLrunning)) (over all (TL7)))
 :effect
	(and (at end (TL8)) (at end (not (TL7)))
	(at end (visible antenna7 satellite2))
	(at end (visible antenna7 satellite4))
	(at end (visible antenna7 satellite3))
))

(:durative-action timedliteral9
 :parameters ()
 :duration (= ?duration 16.04)
 :condition
	(and (over all (TLrunning)) (over all (TL8)))
 :effect
	(and (at end (TL9)) (at end (not (TL8)))
	(at end (not (visible antenna0 satellite1)))
	(at end (not (visible antenna0 satellite4)))
))

(:durative-action timedliteral10
 :parameters ()
 :duration (= ?duration 0.96)
 :condition
	(and (over all (TLrunning)) (over all (TL9)))
 :effect
	(and (at end (TL10)) (at end (not (TL9)))
	(at end (visible antenna0 satellite3))
	(at end (visible antenna0 satellite2))
	(at end (visible antenna0 satellite0))
))

(:durative-action timedliteral11
 :parameters ()
 :duration (= ?duration 7.04)
 :condition
	(and (over all (TLrunning)) (over all (TL10)))
 :effect
	(and (at end (TL11)) (at end (not (TL10)))
	(at end (not (visible antenna1 satellite4)))
	(at end (not (visible antenna1 satellite2)))
))

(:durative-action timedliteral12
 :parameters ()
 :duration (= ?duration 6.00)
 :condition
	(and (over all (TLrunning)) (over all (TL11)))
 :effect
	(and (at end (TL12)) (at end (not (TL11)))
	(at end (not (visible antenna2 satellite2)))
	(at end (not (visible antenna2 satellite0)))
	(at end (not (visible antenna2 satellite1)))
))

(:durative-action timedliteral13
 :parameters ()
 :duration (= ?duration 10.00)
 :condition
	(and (over all (TLrunning)) (over all (TL12)))
 :effect
	(and (at end (TL13)) (at end (not (TL12)))
	(at end (not (visible antenna3 satellite2)))
	(at end (not (visible antenna3 satellite4)))
	(at end (not (visible antenna3 satellite1)))
))

(:durative-action timedliteral14
 :parameters ()
 :duration (= ?duration 9.00)
 :condition
	(and (over all (TLrunning)) (over all (TL13)))
 :effect
	(and (at end (TL14)) (at end (not (TL13)))
	(at end (not (visible antenna4 satellite0)))
	(at end (not (visible antenna4 satellite1)))
	(at end (not (visible antenna4 satellite2)))
	(at end (not (visible antenna4 satellite4)))
))

(:durative-action timedliteral15
 :parameters ()
 :duration (= ?duration 14.00)
 :condition
	(and (over all (TLrunning)) (over all (TL14)))
 :effect
	(and (at end (TL15)) (at end (not (TL14)))
	(at end (not (visible antenna5 satellite0)))
	(at end (not (visible antenna5 satellite4)))
	(at end (not (visible antenna5 satellite2)))
))

(:durative-action timedliteral16
 :parameters ()
 :duration (= ?duration 11.00)
 :condition
	(and (over all (TLrunning)) (over all (TL15)))
 :effect
	(and (at end (TL16)) (at end (not (TL15)))
	(at end (not (visible antenna6 satellite1)))
	(at end (not (visible antenna6 satellite4)))
	(at end (not (visible antenna6 satellite0)))
))

(:durative-action timedliteral17
 :parameters ()
 :duration (= ?duration 6.00)
 :condition
	(and (over all (TLrunning)) (over all (TL16)))
 :effect
	(and (at end (TL17)) (at end (not (TL16)))
	(at end (not (visible antenna7 satellite2)))
	(at end (not (visible antenna7 satellite4)))
	(at end (not (visible antenna7 satellite3)))
))

(:durative-action timedliteral18
 :parameters ()
 :duration (= ?duration 17.00)
 :condition
	(and (over all (TLrunning)) (over all (TL17)))
 :effect
	(and (at end (TL18)) (at end (not (TL17)))
	(at end (not (visible antenna0 satellite3)))
	(at end (not (visible antenna0 satellite2)))
	(at end (not (visible antenna0 satellite0)))
))

(:durative-action timedliteral19
 :parameters ()
 :duration (= ?duration 12.96)
 :condition
	(and (over all (TLrunning)) (over all (TL18)))
 :effect
	(and (at end (TL19)) (at end (not (TL18)))
	(at end (visible antenna0 satellite3))
	(at end (visible antenna0 satellite4))
	(at end (visible antenna0 satellite1))
	(at end (visible antenna0 satellite0))
))

(:durative-action timedliteral20
 :parameters ()
 :duration (= ?duration 80.04)
 :condition
	(and (over all (TLrunning)) (over all (TL19)))
 :effect
	(and (at end (TLend)) (at end (not (TL19)))
	(at end (not (visible antenna0 satellite3)))
	(at end (not (visible antenna0 satellite4)))
	(at end (not (visible antenna0 satellite1)))
	(at end (not (visible antenna0 satellite0)))
))


)

