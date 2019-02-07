;; The execution of mobile applications requires a proper configuration
;; of mobile network components. This domain is modeled with 
;; resources of mobile network components and negotiation of MAC.
;; Applicable for 10 applications. The duration of an action is modeled
;; via the delay predicate. The delay varies for each application and
;; module according to their execution duration in the radio bearer/ network.

;; Intra-application constraint: yes
;; Inter-application constraint: no
;; Roman Englert, December 2003

(define (problem BS)
 (:domain INCOMPATIBEL-APPLICATION-CONFIGURATION)
 (:objects	
	MS1 MS2 - message
	A1 A2 A3 A4 A5 A6 A7 A8 A9 A10 - application
        M1 M2 M3 M4 M5 M6 M7 M8 M9 M10 - mobile
        L1 L2 L3 L4 L5 L6 L7 L8 L9 L10 - list
	ae - agent
 )

 (:init
 	(= (time-trm A1) 70) 
	(= (time-ct A1) 45) 
	(= (time-am A1) 73) 
	(= (time-aeem A1) 75) 
	(= (time-rrc A1) 214) 
	(= (time-rab A1) 69) 
	(= (time-aeei A1) 33) 
	(= (time-bs A1) 28)

	(= (time-trm A2) 66) 
	(= (time-ct A2) 59) 
	(= (time-am A2) 39) 
	(= (time-aeem A2) 58) 
	(= (time-rrc A2) 173) 
	(= (time-rab A2) 79) 
	(= (time-aeei A2) 79) 
	(= (time-bs A2) 19) 

	(= (time-trm A3) 58) 
	(= (time-ct A3) 59) 
	(= (time-am A3) 35) 
	(= (time-aeem A3) 75) 
	(= (time-rrc A3) 172) 
	(= (time-rab A3) 78) 
	(= (time-aeei A3) 90) 
	(= (time-bs A3) 22) 

	(= (time-trm A4) 58) 
	(= (time-ct A4) 53) 
	(= (time-am A4) 32) 
	(= (time-aeem A4) 77) 
	(= (time-rrc A4) 174) 
	(= (time-rab A4) 65) 
	(= (time-aeei A4) 81) 
	(= (time-bs A4) 22)

	(= (time-trm A5) 54) 
	(= (time-ct A5) 52) 
	(= (time-am A5) 35) 
	(= (time-aeem A5) 79) 
	(= (time-rrc A5) 176) 
	(= (time-rab A5) 64) 
	(= (time-aeei A5) 80) 
	(= (time-bs A5) 15) 

 	(= (time-trm A6) 73) 
	(= (time-ct A6) 55) 
	(= (time-am A6) 74) 
	(= (time-aeem A6) 69) 
	(= (time-rrc A6) 203) 
	(= (time-rab A6) 68) 
	(= (time-aeei A6) 46) 
	(= (time-bs A6) 39)

	(= (time-trm A7) 59) 
	(= (time-ct A7) 48) 
	(= (time-am A7) 33) 
	(= (time-aeem A7) 79) 
	(= (time-rrc A7) 179) 
	(= (time-rab A7) 69) 
	(= (time-aeei A7) 78) 
	(= (time-bs A7) 29) 

	(= (time-trm A8) 55) 
	(= (time-ct A8) 55) 
	(= (time-am A8) 32) 
	(= (time-aeem A8) 78) 
	(= (time-rrc A8) 190) 
	(= (time-rab A8) 72) 
	(= (time-aeei A8) 78) 
	(= (time-bs A8) 23) 

	(= (time-trm A9) 52) 
	(= (time-ct A9) 57) 
	(= (time-am A9) 34) 
	(= (time-aeem A9) 65) 
	(= (time-rrc A9) 181) 
	(= (time-rab A9) 72) 
	(= (time-aeei A9) 74) 
	(= (time-bs A9) 22) 

	(= (time-trm A10) 55) 
	(= (time-ct A10) 59) 
	(= (time-am A10) 36) 
	(= (time-aeem A10) 64) 
	(= (time-rrc A10) 180) 
	(= (time-rab A10) 65) 
	(= (time-aeei A10) 83) 
	(= (time-bs A10) 25) 

        ;; types
        (location M1) 
	(authentification M1)
        (location M2) 
	(authentification M2)
        (location M3) 
	(authentification M3)
        (location M4) 
	(authentification M4)
        (location M5) 
	(authentification M5)
        (location M6) 
	(authentification M6)
        (location M7) 
	(authentification M7)
        (location M8) 
	(authentification M8)
        (location M9) 
	(authentification M9)
        (location M10) 
	(authentification M10)

	;; Game
	(initiated A1 M1) 
        (qos-params A1 L1)
	(= (list-pdu L1) 132)
 	(= (app-cpu A1 M1) 79) 
        (= (app-display A1 M1) 33) 
        (= (app-keyboard A1 M1) 1) 
        (= (app-energy A1 M1) 26) 
        (= (app-channels A1 M1) 11)
	(message-trm M1 MS1)
	(message-aeei A1 MS2)

 	;; Ticker
	(initiated A2 M1) 
        (qos-params A2 L2)
	(= (list-pdu L2) 63)
 	(= (app-cpu A2 M1) 8) 
        (= (app-display A2 M1) 3) 
        (= (app-keyboard A2 M1) 10) 
        (= (app-energy A2 M1) 19) 
        (= (app-channels A2 M1) 1)
	(message-aeei A2 MS2)

 	;; A3
	(initiated A3 M1) 
        (qos-params A3 L3)
	(= (list-pdu L3) 254)
 	(= (app-cpu A3 M1) 19) 
        (= (app-display A3 M1) 5) 
        (= (app-keyboard A3 M1) 6) 
        (= (app-energy A3 M1) 2) 
        (= (app-channels A3 M1) 9)
	(message-aeei A3 MS2)

 	;; A4
	(initiated A4 M1) 
	(qos-params A4 L4)
	(= (list-pdu L4) 266)
 	(= (app-cpu A4 M1) 12) 
	(= (app-display A4 M1) 3) 
	(= (app-keyboard A4 M1) 4) 
	(= (app-energy A4 M1) 2) 
	(= (app-channels A4 M1) 8)
	(message-aeei A4 MS2)

 	;; A5
	(initiated A5 M1) 
	(qos-params A5 L5)
	(= (list-pdu L5) 250)
 	(= (app-cpu A5 M1) 5) 
	(= (app-display A5 M1) 6) 
	(= (app-keyboard A5 M1) 3) 
	(= (app-energy A5 M1) 1) 
	(= (app-channels A5 M1) 3)
	(message-aeei A5 MS2)

 	;; A6
	(initiated A6 M1) 
	(qos-params A6 L6)
	(= (list-pdu L6) 251)
 	(= (app-cpu A6 M1) 19) 
	(= (app-display A6 M1) 1) 
	(= (app-keyboard A6 M1) 1) 
	(= (app-energy A6 M1) 10) 
	(= (app-channels A6 M1) 1)
	(message-aeei A6 MS2)

 	;; A7
	(initiated A7 M1) 
	(qos-params A7 L7)
	(= (list-pdu L7) 259)
 	(= (app-cpu A7 M1) 15) 
	(= (app-display A7 M1) 9) 
	(= (app-keyboard A7 M1) 1) 
	(= (app-energy A7 M1) 1) 
	(= (app-channels A7 M1) 1)
	(message-aeei A7 MS2)

 	;; A8
	(initiated A8 M1) 
	(qos-params A8 L8)
	(= (list-pdu L8) 262)
 	(= (app-cpu A8 M1) 19) 
	(= (app-display A8 M1) 4) 
	(= (app-keyboard A8 M1) 1) 
	(= (app-energy A8 M1) 1) 
	(= (app-channels A8 M1) 10)
	(message-aeei A8 MS2)

 	;; A9
	(initiated A9 M1) 
	(qos-params A9 L9)
	(= (list-pdu L9) 256)
 	(= (app-cpu A9 M1) 10) 
	(= (app-display A9 M1) 5) 
	(= (app-keyboard A9 M1) 1) 
	(= (app-energy A9 M1) 10) 
	(= (app-channels A9 M1) 1)
	(message-aeei A9 MS2)

 	;; A10
	(initiated A10 M1) 
	(qos-params A10 L10)
	(= (list-pdu L10) 256)
 	(= (app-cpu A10 M1) 10) 
	(= (app-display A10 M1) 5) 
	(= (app-keyboard A10 M1) 1) 
	(= (app-energy A10 M1) 5) 
	(= (app-channels A10 M1) 1)
	(message-aeei A10 MS2)
 
	;; TRM
	(= (max-mobile-cpu) 300)
	(= (max-d-available) 140)
	(= (max-k-available) 12)
	(= (max-e-load) 150)
	(= (max-mobile-channels-available) 12)
	;; CT
	(= (max-num-mobiles) 256)
	(= (max-num-calls) 10)
	(= (max-mobile-storage) 2000)
	;; RRC
	(= (max-logical-channels) 100)
	(= (max-cell-update) 10)
	(= (max-handover) 10)
	(= (max-active-set-up) 10)
	;; AEEI
	(= (max-ggsn-bitrate) 10000)
	(= (max-no-pdp) 20)
	(= (max-no-apn) 20)

  ;; current status

	(= (has-mobile-cpu) 0)
	(= (has-d-available) 0)
	(= (has-k-available) 0)
	(= (has-e-load) 0)
	(= (has-mobile-channels-available) 0)
	;; CT
	(= (has-num-mobiles) 0)
	(= (has-num-calls) 0)
	(= (has-mobile-storage) 0)
	;; RRC
	(= (has-logical-channels) 0)
	(= (has-cell-update) 0)
	(= (has-handover) 0)
	(= (has-active-set-up) 0)
	;; AEEI
	(= (has-ggsn-bitrate) 0)
	(= (has-max-no-pdp) 0)
	(= (has-max-no-apn) 0)

	;; phases: init resource allocation and bearer establishment
	(at 70 (begin-init ae))
	(at 761 (not(begin-init ae)))
	(at 1430 (begin-aeei ae))
	(at 2151 (not(begin-aeei ae)))

;;	(at 70 (bs-ct-available))
;;	(at 120 (not(bs-ct-available)))
;;	(at 190 (bs-aeem-available))
;;	(at 260 (not(bs-aeem-available)))
;;	(at 470 (bs-rab-available))
;;	(at 540 (not(bs-rab-available)))
 )

 (:goal 
    (and 	
	(bs-ok A1 M1 L1 ae) 
	(bs-ok A2 M1 L2 ae) 
   )
 )

 (:metric minimize (total-time))
)
