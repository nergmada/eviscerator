; Map of the Depots:                                                      
; 000=111 22 333 444 555 66=777=888                   
; *0  1 * 2* 3*  4*  *5  *6 *7  8*                    
;----------------------------------                   
; 0: depot0 area
; 1: depot1 area
; 2: depot2 area
; 3: depot3 area
; 4: depot4 area
; 5: depot5 area
; 6: depot6 area
; 7: depot7 area
; 8: depot8 area
; *: Depot access point
; =: Transit area

(define (problem storage-15)
(:domain Storage-TimePreferences)
(:objects
	depot0-1-1 depot0-1-2 depot0-1-3 depot0-2-1 depot0-2-2 depot1-1-1 depot1-1-2 depot1-1-3 depot1-2-1 depot1-2-3 depot2-1-1 depot2-1-2 depot2-2-1 depot2-2-2 depot3-1-1 depot3-1-2 depot3-1-3 depot3-2-1 depot3-2-2 depot4-1-1 depot4-1-2 depot4-1-3 depot4-2-1 depot4-2-2 depot5-1-1 depot5-1-2 depot5-1-3 depot5-2-1 depot5-2-2 depot6-1-1 depot6-1-2 depot6-2-1 depot6-2-2 depot7-1-1 depot7-1-2 depot7-1-3 depot7-2-1 depot7-2-2 depot8-1-1 depot8-1-2 depot8-1-3 depot8-2-1 depot8-2-2 container-0-0 container-0-1 container-0-2 container-0-3 container-1-0 container-1-1 container-1-2 container-1-3 container-2-0 container-2-1 container-2-2 container-2-3 container-3-0 container-3-1 container-3-2 - storearea
	hoist0 hoist1 hoist2 hoist3 - hoist
	crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 crate8 crate9 crate10 crate11 crate12 crate13 crate14 - crate
	container0 container1 container2 container3 - container
	depot0 depot1 depot2 depot3 depot4 depot5 depot6 depot7 depot8 - depot
	loadarea transit0 transit1 transit2 - transitarea)

(:init
	(connected depot0-1-1 depot0-2-1)
	(connected depot0-1-1 depot0-1-2)
	(connected depot0-1-2 depot0-2-2)
	(connected depot0-1-2 depot0-1-3)
	(connected depot0-1-2 depot0-1-1)
	(connected depot0-1-3 depot0-1-2)
	(connected depot0-2-1 depot0-1-1)
	(connected depot0-2-1 depot0-2-2)
	(connected depot0-2-2 depot0-1-2)
	(connected depot0-2-2 depot0-2-1)
	(connected depot1-1-1 depot1-2-1)
	(connected depot1-1-1 depot1-1-2)
	(connected depot1-1-2 depot1-1-3)
	(connected depot1-1-2 depot1-1-1)
	(connected depot1-1-3 depot1-2-3)
	(connected depot1-1-3 depot1-1-2)
	(connected depot1-2-1 depot1-1-1)
	(connected depot1-2-3 depot1-1-3)
	(connected depot2-1-1 depot2-2-1)
	(connected depot2-1-1 depot2-1-2)
	(connected depot2-1-2 depot2-2-2)
	(connected depot2-1-2 depot2-1-1)
	(connected depot2-2-1 depot2-1-1)
	(connected depot2-2-1 depot2-2-2)
	(connected depot2-2-2 depot2-1-2)
	(connected depot2-2-2 depot2-2-1)
	(connected depot3-1-1 depot3-2-1)
	(connected depot3-1-1 depot3-1-2)
	(connected depot3-1-2 depot3-2-2)
	(connected depot3-1-2 depot3-1-3)
	(connected depot3-1-2 depot3-1-1)
	(connected depot3-1-3 depot3-1-2)
	(connected depot3-2-1 depot3-1-1)
	(connected depot3-2-1 depot3-2-2)
	(connected depot3-2-2 depot3-1-2)
	(connected depot3-2-2 depot3-2-1)
	(connected depot4-1-1 depot4-2-1)
	(connected depot4-1-1 depot4-1-2)
	(connected depot4-1-2 depot4-2-2)
	(connected depot4-1-2 depot4-1-3)
	(connected depot4-1-2 depot4-1-1)
	(connected depot4-1-3 depot4-1-2)
	(connected depot4-2-1 depot4-1-1)
	(connected depot4-2-1 depot4-2-2)
	(connected depot4-2-2 depot4-1-2)
	(connected depot4-2-2 depot4-2-1)
	(connected depot5-1-1 depot5-2-1)
	(connected depot5-1-1 depot5-1-2)
	(connected depot5-1-2 depot5-2-2)
	(connected depot5-1-2 depot5-1-3)
	(connected depot5-1-2 depot5-1-1)
	(connected depot5-1-3 depot5-1-2)
	(connected depot5-2-1 depot5-1-1)
	(connected depot5-2-1 depot5-2-2)
	(connected depot5-2-2 depot5-1-2)
	(connected depot5-2-2 depot5-2-1)
	(connected depot6-1-1 depot6-2-1)
	(connected depot6-1-1 depot6-1-2)
	(connected depot6-1-2 depot6-2-2)
	(connected depot6-1-2 depot6-1-1)
	(connected depot6-2-1 depot6-1-1)
	(connected depot6-2-1 depot6-2-2)
	(connected depot6-2-2 depot6-1-2)
	(connected depot6-2-2 depot6-2-1)
	(connected depot7-1-1 depot7-2-1)
	(connected depot7-1-1 depot7-1-2)
	(connected depot7-1-2 depot7-2-2)
	(connected depot7-1-2 depot7-1-3)
	(connected depot7-1-2 depot7-1-1)
	(connected depot7-1-3 depot7-1-2)
	(connected depot7-2-1 depot7-1-1)
	(connected depot7-2-1 depot7-2-2)
	(connected depot7-2-2 depot7-1-2)
	(connected depot7-2-2 depot7-2-1)
	(connected depot8-1-1 depot8-2-1)
	(connected depot8-1-1 depot8-1-2)
	(connected depot8-1-2 depot8-2-2)
	(connected depot8-1-2 depot8-1-3)
	(connected depot8-1-2 depot8-1-1)
	(connected depot8-1-3 depot8-1-2)
	(connected depot8-2-1 depot8-1-1)
	(connected depot8-2-1 depot8-2-2)
	(connected depot8-2-2 depot8-1-2)
	(connected depot8-2-2 depot8-2-1)
	(connected transit0 depot0-1-3)
	(connected transit0 depot1-1-1)
	(connected transit1 depot6-1-2)
	(connected transit1 depot7-1-1)
	(connected transit2 depot7-1-3)
	(connected transit2 depot8-1-1)
	(in depot0-1-1 depot0)
	(in depot0-1-2 depot0)
	(in depot0-1-3 depot0)
	(in depot0-2-1 depot0)
	(in depot0-2-2 depot0)
	(in depot1-1-1 depot1)
	(in depot1-1-2 depot1)
	(in depot1-1-3 depot1)
	(in depot1-2-1 depot1)
	(in depot1-2-3 depot1)
	(in depot2-1-1 depot2)
	(in depot2-1-2 depot2)
	(in depot2-2-1 depot2)
	(in depot2-2-2 depot2)
	(in depot3-1-1 depot3)
	(in depot3-1-2 depot3)
	(in depot3-1-3 depot3)
	(in depot3-2-1 depot3)
	(in depot3-2-2 depot3)
	(in depot4-1-1 depot4)
	(in depot4-1-2 depot4)
	(in depot4-1-3 depot4)
	(in depot4-2-1 depot4)
	(in depot4-2-2 depot4)
	(in depot5-1-1 depot5)
	(in depot5-1-2 depot5)
	(in depot5-1-3 depot5)
	(in depot5-2-1 depot5)
	(in depot5-2-2 depot5)
	(in depot6-1-1 depot6)
	(in depot6-1-2 depot6)
	(in depot6-2-1 depot6)
	(in depot6-2-2 depot6)
	(in depot7-1-1 depot7)
	(in depot7-1-2 depot7)
	(in depot7-1-3 depot7)
	(in depot7-2-1 depot7)
	(in depot7-2-2 depot7)
	(in depot8-1-1 depot8)
	(in depot8-1-2 depot8)
	(in depot8-1-3 depot8)
	(in depot8-2-1 depot8)
	(in depot8-2-2 depot8)
	(on crate0 container-0-0)
	(on crate1 container-0-1)
	(on crate2 container-0-2)
	(on crate3 container-0-3)
	(on crate4 container-1-0)
	(on crate5 container-1-1)
	(on crate6 container-1-2)
	(on crate7 container-1-3)
	(on crate8 container-2-0)
	(on crate9 container-2-1)
	(on crate10 container-2-2)
	(on crate11 container-2-3)
	(on crate12 container-3-0)
	(on crate13 container-3-1)
	(on crate14 container-3-2)
	(in crate0 container0)
	(in crate1 container0)
	(in crate2 container0)
	(in crate3 container0)
	(in crate4 container1)
	(in crate5 container1)
	(in crate6 container1)
	(in crate7 container1)
	(in crate8 container2)
	(in crate9 container2)
	(in crate10 container2)
	(in crate11 container2)
	(in crate12 container3)
	(in crate13 container3)
	(in crate14 container3)
	(in container-0-0 container0)
	(in container-0-1 container0)
	(in container-0-2 container0)
	(in container-0-3 container0)
	(in container-1-0 container1)
	(in container-1-1 container1)
	(in container-1-2 container1)
	(in container-1-3 container1)
	(in container-2-0 container2)
	(in container-2-1 container2)
	(in container-2-2 container2)
	(in container-2-3 container2)
	(in container-3-0 container3)
	(in container-3-1 container3)
	(in container-3-2 container3)
	(connected loadarea container-0-0) 
	(connected container-0-0 loadarea)
	(connected loadarea container-0-1) 
	(connected container-0-1 loadarea)
	(connected loadarea container-0-2) 
	(connected container-0-2 loadarea)
	(connected loadarea container-0-3) 
	(connected container-0-3 loadarea)
	(connected loadarea container-1-0) 
	(connected container-1-0 loadarea)
	(connected loadarea container-1-1) 
	(connected container-1-1 loadarea)
	(connected loadarea container-1-2) 
	(connected container-1-2 loadarea)
	(connected loadarea container-1-3) 
	(connected container-1-3 loadarea)
	(connected loadarea container-2-0) 
	(connected container-2-0 loadarea)
	(connected loadarea container-2-1) 
	(connected container-2-1 loadarea)
	(connected loadarea container-2-2) 
	(connected container-2-2 loadarea)
	(connected loadarea container-2-3) 
	(connected container-2-3 loadarea)
	(connected loadarea container-3-0) 
	(connected container-3-0 loadarea)
	(connected loadarea container-3-1) 
	(connected container-3-1 loadarea)
	(connected loadarea container-3-2) 
	(connected container-3-2 loadarea)  
	(connected depot0-2-1 loadarea)
	(connected loadarea depot0-2-1)
	(connected depot1-2-3 loadarea)
	(connected loadarea depot1-2-3)
	(connected depot2-2-2 loadarea)
	(connected loadarea depot2-2-2)
	(connected depot3-2-2 loadarea)
	(connected loadarea depot3-2-2)
	(connected depot4-2-2 loadarea)
	(connected loadarea depot4-2-2)
	(connected depot5-2-1 loadarea)
	(connected loadarea depot5-2-1)
	(connected depot6-2-1 loadarea)
	(connected loadarea depot6-2-1)
	(connected depot7-2-1 loadarea)
	(connected loadarea depot7-2-1)
	(connected depot8-2-2 loadarea)
	(connected loadarea depot8-2-2)  
	(clear depot0-1-1)
	(clear depot0-1-2)
	(clear depot0-1-3)
	(clear depot0-2-1)
	(clear depot0-2-2)
	(clear depot1-1-1)
	(clear depot1-1-2)
	(clear depot1-1-3)
	(clear depot1-2-1)
	(clear depot1-2-3)
	(clear depot2-1-1)
	(clear depot2-1-2)
	(clear depot2-2-1)
	(clear depot2-2-2)
	(clear depot3-2-1)
	(clear depot3-2-2)
	(clear depot4-1-1)
	(clear depot4-1-2)
	(clear depot4-1-3)
	(clear depot4-2-1)
	(clear depot4-2-2)
	(clear depot5-1-1)
	(clear depot5-1-2)
	(clear depot5-1-3)
	(clear depot5-2-1)
	(clear depot5-2-2)
	(clear depot6-1-1)
	(clear depot6-1-2)
	(clear depot6-2-1)
	(clear depot6-2-2)
	(clear depot7-1-1)
	(clear depot7-1-2)
	(clear depot7-1-3)
	(clear depot7-2-1)
	(clear depot7-2-2)
	(clear depot8-1-1)
	(clear depot8-1-2)
	(clear depot8-1-3)
	(clear depot8-2-1)  
	(at hoist0 depot3-1-2)
	(available hoist0)
	(at hoist1 depot3-1-1)
	(available hoist1)
	(at hoist2 depot3-1-3)
	(available hoist2)
	(at hoist3 depot8-2-2)
	(available hoist3)
	(compatible crate0 crate1)
	(compatible crate1 crate0)
	(compatible crate0 crate2)
	(compatible crate2 crate0)
	(compatible crate0 crate3)
	(compatible crate3 crate0)
	(compatible crate1 crate2)
	(compatible crate2 crate1)
	(compatible crate1 crate3)
	(compatible crate3 crate1)
	(compatible crate2 crate3)
	(compatible crate3 crate2)
	(compatible crate4 crate5)
	(compatible crate5 crate4)
	(compatible crate4 crate6)
	(compatible crate6 crate4)
	(compatible crate4 crate7)
	(compatible crate7 crate4)
	(compatible crate5 crate6)
	(compatible crate6 crate5)
	(compatible crate5 crate7)
	(compatible crate7 crate5)
	(compatible crate6 crate7)
	(compatible crate7 crate6)
	(compatible crate8 crate9)
	(compatible crate9 crate8)
	(compatible crate8 crate10)
	(compatible crate10 crate8)
	(compatible crate8 crate11)
	(compatible crate11 crate8)
	(compatible crate9 crate10)
	(compatible crate10 crate9)
	(compatible crate9 crate11)
	(compatible crate11 crate9)
	(compatible crate10 crate11)
	(compatible crate11 crate10)
	(compatible crate12 crate13)
	(compatible crate13 crate12)
	(compatible crate12 crate14)
	(compatible crate14 crate12)
	(compatible crate13 crate14)
	(compatible crate14 crate13))

(:goal (and
	(preference p4A (clear depot0-2-1))
	(preference p2A (clear depot0-1-1))
	(preference p2B (clear depot0-2-2))
	(preference p1A (clear depot0-1-2))
	(preference p5A (clear depot1-2-3))
	(preference p3A (clear depot1-1-3))
	(preference p2C (clear depot1-1-2))
	(preference p1B (clear depot1-1-1))
	(preference p3B (clear depot2-2-2))
	(preference p1C (clear depot2-1-2))
	(preference p1D (clear depot2-2-1))
	(preference p3C (clear depot3-2-2))
	(preference p1E (clear depot3-1-2))
	(preference p1F (clear depot3-2-1))
	(preference p3D (clear depot4-2-2))
	(preference p1G (clear depot4-1-2))
	(preference p1H (clear depot4-2-1))
	(preference p4B (clear depot5-2-1))
	(preference p2D (clear depot5-1-1))
	(preference p2E (clear depot5-2-2))
	(preference p1I (clear depot5-1-2))
	(preference p3E (clear depot6-2-1))
	(preference p1J (clear depot6-1-1))
	(preference p1K (clear depot6-2-2))
	(preference p4C (clear depot7-2-1))
	(preference p2F (clear depot7-1-1))
	(preference p2G (clear depot7-2-2))
	(preference p1L (clear depot7-1-2))
	(preference p3F (clear depot8-2-2))
	(preference p1M (clear depot8-1-2))
	(preference p1N (clear depot8-2-1))

	(forall (?c - crate)
	   (preference p9A (exists (?d - depot) (and (in ?c ?d) (not (= ?d depot1))))))
	(forall (?c - crate)
	   (preference p15A (exists (?d - depot) (and (in ?c ?d) (not (= ?d depot2))))))
	(forall (?c - crate)
	   (preference p19A (exists (?d - depot) (and (in ?c ?d) (not (= ?d depot3))))))
	(forall (?c - crate)
	   (preference p23A (exists (?d - depot) (and (in ?c ?d) (not (= ?d depot4))))))
	(forall (?c - crate)
	   (preference p27A (exists (?d - depot) (and (in ?c ?d) (not (= ?d depot5))))))
	(forall (?c - crate)
	   (preference p32A (exists (?d - depot) (and (in ?c ?d) (not (= ?d depot6))))))
	(forall (?c - crate)
	   (preference p36A (exists (?d - depot) (and (in ?c ?d) (not (= ?d depot7))))))
	(forall (?c - crate)
	   (preference p41A (exists (?d - depot) (and (in ?c ?d) (not (= ?d depot8))))))))

(:constraints (and
	(forall (?c1 ?c2 - crate ?s1 ?s2 - storearea)
	   (preference p21A (always (imply (and (on ?c1 ?s1) (on ?c2 ?s2)
					        (not (= ?c1 ?c2)) (connected ?s1 ?s2))
					   (compatible ?c1 ?c2)))))

	(forall (?c1 ?c2 - crate ?d - depot)
	   (preference p12A (always (imply (and (in ?c1 ?d) (in ?c2 ?d) (not (= ?c1 ?c2)))
					  (compatible ?c1 ?c2)))))

	(forall (?c - crate)
	   (preference p7A (at-most-once (exists (?h - hoist) (lifting ?h ?c)))))

	(forall (?h - hoist)
	   (preference p8A (sometime (exists (?c - crate) (lifting ?h ?c)))))

	(preference p6A (sometime-before (exists (?d1 - depot) (in crate0 ?d1))
					 (exists (?d2 - depot) (in crate3 ?d2))))
	(preference p6B (sometime-before (exists (?d1 - depot) (in crate0 ?d1))
					 (exists (?d2 - depot) (in crate4 ?d2))))
	(preference p6C (sometime-before (exists (?d1 - depot) (in crate0 ?d1))
					 (exists (?d2 - depot) (in crate5 ?d2))))
	(preference p6D (sometime-before (exists (?d1 - depot) (in crate0 ?d1))
					 (exists (?d2 - depot) (in crate6 ?d2))))
	(preference p6E (sometime-before (exists (?d1 - depot) (in crate0 ?d1))
					 (exists (?d2 - depot) (in crate7 ?d2))))
	(preference p6F (sometime-before (exists (?d1 - depot) (in crate0 ?d1))
					 (exists (?d2 - depot) (in crate8 ?d2))))
	(preference p6G (sometime-before (exists (?d1 - depot) (in crate0 ?d1))
					 (exists (?d2 - depot) (in crate9 ?d2))))
	(preference p6H (sometime-before (exists (?d1 - depot) (in crate0 ?d1))
					 (exists (?d2 - depot) (in crate10 ?d2))))
	(preference p6I (sometime-before (exists (?d1 - depot) (in crate0 ?d1))
					 (exists (?d2 - depot) (in crate11 ?d2))))
	(preference p6J (sometime-before (exists (?d1 - depot) (in crate0 ?d1))
					 (exists (?d2 - depot) (in crate12 ?d2))))
	(preference p6K (sometime-before (exists (?d1 - depot) (in crate0 ?d1))
					 (exists (?d2 - depot) (in crate13 ?d2))))
	(preference p6L (sometime-before (exists (?d1 - depot) (in crate0 ?d1))
					 (exists (?d2 - depot) (in crate14 ?d2))))
	(preference p6M (sometime-before (exists (?d1 - depot) (in crate1 ?d1))
					 (exists (?d2 - depot) (in crate3 ?d2))))
	(preference p6N (sometime-before (exists (?d1 - depot) (in crate1 ?d1))
					 (exists (?d2 - depot) (in crate4 ?d2))))
	(preference p6O (sometime-before (exists (?d1 - depot) (in crate1 ?d1))
					 (exists (?d2 - depot) (in crate5 ?d2))))
	(preference p6P (sometime-before (exists (?d1 - depot) (in crate1 ?d1))
					 (exists (?d2 - depot) (in crate6 ?d2))))
	(preference p6Q (sometime-before (exists (?d1 - depot) (in crate1 ?d1))
					 (exists (?d2 - depot) (in crate7 ?d2))))
	(preference p6R (sometime-before (exists (?d1 - depot) (in crate1 ?d1))
					 (exists (?d2 - depot) (in crate8 ?d2))))
	(preference p6S (sometime-before (exists (?d1 - depot) (in crate1 ?d1))
					 (exists (?d2 - depot) (in crate9 ?d2))))
	(preference p6T (sometime-before (exists (?d1 - depot) (in crate1 ?d1))
					 (exists (?d2 - depot) (in crate10 ?d2))))
	(preference p6U (sometime-before (exists (?d1 - depot) (in crate1 ?d1))
					 (exists (?d2 - depot) (in crate11 ?d2))))
	(preference p6V (sometime-before (exists (?d1 - depot) (in crate1 ?d1))
					 (exists (?d2 - depot) (in crate12 ?d2))))
	(preference p6W (sometime-before (exists (?d1 - depot) (in crate1 ?d1))
					 (exists (?d2 - depot) (in crate13 ?d2))))
	(preference p6X (sometime-before (exists (?d1 - depot) (in crate1 ?d1))
					 (exists (?d2 - depot) (in crate14 ?d2))))
	(preference p6Y (sometime-before (exists (?d1 - depot) (in crate2 ?d1))
					 (exists (?d2 - depot) (in crate3 ?d2))))
	(preference p6Z (sometime-before (exists (?d1 - depot) (in crate2 ?d1))
					 (exists (?d2 - depot) (in crate4 ?d2))))
	(preference p6BA (sometime-before (exists (?d1 - depot) (in crate2 ?d1))
					 (exists (?d2 - depot) (in crate5 ?d2))))
	(preference p6BB (sometime-before (exists (?d1 - depot) (in crate2 ?d1))
					 (exists (?d2 - depot) (in crate6 ?d2))))
	(preference p6BC (sometime-before (exists (?d1 - depot) (in crate2 ?d1))
					 (exists (?d2 - depot) (in crate7 ?d2))))
	(preference p6BD (sometime-before (exists (?d1 - depot) (in crate2 ?d1))
					 (exists (?d2 - depot) (in crate8 ?d2))))
	(preference p6BE (sometime-before (exists (?d1 - depot) (in crate2 ?d1))
					 (exists (?d2 - depot) (in crate9 ?d2))))
	(preference p6BF (sometime-before (exists (?d1 - depot) (in crate2 ?d1))
					 (exists (?d2 - depot) (in crate10 ?d2))))
	(preference p6BG (sometime-before (exists (?d1 - depot) (in crate2 ?d1))
					 (exists (?d2 - depot) (in crate11 ?d2))))
	(preference p6BH (sometime-before (exists (?d1 - depot) (in crate2 ?d1))
					 (exists (?d2 - depot) (in crate12 ?d2))))
	(preference p6BI (sometime-before (exists (?d1 - depot) (in crate2 ?d1))
					 (exists (?d2 - depot) (in crate13 ?d2))))
	(preference p6BJ (sometime-before (exists (?d1 - depot) (in crate2 ?d1))
					 (exists (?d2 - depot) (in crate14 ?d2))))

	(forall (?c - crate)
	   (preference p11A (within 74 (exists (?d - depot) (in ?c ?d)))))

	(forall (?h - hoist)
	   (preference p10A (always-within 3.5 (at ?h loadarea)
				 (exists (?a - storearea ?d - depot) (and (at ?h ?a) (in ?a ?d))))))))

(:metric minimize (+ (* 1 (is-violated p1A))
		     (* 1 (is-violated p1B))
		     (* 1 (is-violated p1C))
		     (* 1 (is-violated p1D))
		     (* 1 (is-violated p1E))
		     (* 1 (is-violated p1F))
		     (* 1 (is-violated p1G))
		     (* 1 (is-violated p1H))
		     (* 1 (is-violated p1I))
		     (* 1 (is-violated p1J))
		     (* 1 (is-violated p1K))
		     (* 1 (is-violated p1L))
		     (* 1 (is-violated p1M))
		     (* 1 (is-violated p1N))
		     (* 2 (is-violated p2A))
		     (* 2 (is-violated p2B))
		     (* 2 (is-violated p2C))
		     (* 2 (is-violated p2D))
		     (* 2 (is-violated p2E))
		     (* 2 (is-violated p2F))
		     (* 2 (is-violated p2G))
		     (* 3 (is-violated p3A))
		     (* 3 (is-violated p3B))
		     (* 3 (is-violated p3C))
		     (* 3 (is-violated p3D))
		     (* 3 (is-violated p3E))
		     (* 3 (is-violated p3F))
		     (* 4 (is-violated p4A))
		     (* 4 (is-violated p4B))
		     (* 4 (is-violated p4C))
		     (* 5 (is-violated p5A))
		     (* 6 (is-violated p6A))
		     (* 6 (is-violated p6B))
		     (* 6 (is-violated p6C))
		     (* 6 (is-violated p6D))
		     (* 6 (is-violated p6E))
		     (* 6 (is-violated p6F))
		     (* 6 (is-violated p6G))
		     (* 6 (is-violated p6H))
		     (* 6 (is-violated p6I))
		     (* 6 (is-violated p6J))
		     (* 6 (is-violated p6K))
		     (* 6 (is-violated p6L))
		     (* 6 (is-violated p6M))
		     (* 6 (is-violated p6N))
		     (* 6 (is-violated p6O))
		     (* 6 (is-violated p6P))
		     (* 6 (is-violated p6Q))
		     (* 6 (is-violated p6R))
		     (* 6 (is-violated p6S))
		     (* 6 (is-violated p6T))
		     (* 6 (is-violated p6U))
		     (* 6 (is-violated p6V))
		     (* 6 (is-violated p6W))
		     (* 6 (is-violated p6X))
		     (* 6 (is-violated p6Y))
		     (* 6 (is-violated p6Z))
		     (* 6 (is-violated p6BA))
		     (* 6 (is-violated p6BB))
		     (* 6 (is-violated p6BC))
		     (* 6 (is-violated p6BD))
		     (* 6 (is-violated p6BE))
		     (* 6 (is-violated p6BF))
		     (* 6 (is-violated p6BG))
		     (* 6 (is-violated p6BH))
		     (* 6 (is-violated p6BI))
		     (* 6 (is-violated p6BJ))
		     (* 7 (is-violated p7A))
		     (* 8 (is-violated p8A))
		     (* 9 (is-violated p9A))
		     (* 10 (is-violated p10A))
		     (* 11 (is-violated p11A))
		     (* 12 (is-violated p12A))
		     (* 15 (is-violated p15A))
		     (* 19 (is-violated p19A))
		     (* 21 (is-violated p21A))
		     (* 23 (is-violated p23A))
		     (* 27 (is-violated p27A))
		     (* 32 (is-violated p32A))
		     (* 36 (is-violated p36A))
		     (* 41 (is-violated p41A))))
)
