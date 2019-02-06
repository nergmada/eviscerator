(define (problem TPP)
(:domain TPP-PropositionalSimplePreferences)
(:objects
	goods1 goods2 goods3 goods4 goods5 goods6 goods7 goods8 goods9 - goods
	truck1 - truck
	market1 market2 - market
	depot1 - depot
	level1 level2 level3 level4 - level)

(:init
	(next level1 level0)
	(next level2 level1)
	(next level3 level2)
	(next level4 level3)
	(ready-to-load goods1 market1 level0)
	(ready-to-load goods1 market2 level0)
	(ready-to-load goods1 depot1 level0)
	(ready-to-load goods2 market1 level0)
	(ready-to-load goods2 market2 level0)
	(ready-to-load goods2 depot1 level0)
	(ready-to-load goods3 market1 level0)
	(ready-to-load goods3 market2 level0)
	(ready-to-load goods3 depot1 level0)
	(ready-to-load goods4 market1 level0)
	(ready-to-load goods4 market2 level0)
	(ready-to-load goods4 depot1 level0)
	(ready-to-load goods5 market1 level0)
	(ready-to-load goods5 market2 level0)
	(ready-to-load goods5 depot1 level0)
	(ready-to-load goods6 market1 level0)
	(ready-to-load goods6 market2 level0)
	(ready-to-load goods6 depot1 level0)
	(ready-to-load goods7 market1 level0)
	(ready-to-load goods7 market2 level0)
	(ready-to-load goods7 depot1 level0)
	(ready-to-load goods8 market1 level0)
	(ready-to-load goods8 market2 level0)
	(ready-to-load goods8 depot1 level0)
	(ready-to-load goods9 market1 level0)
	(ready-to-load goods9 market2 level0)
	(ready-to-load goods9 depot1 level0)
	(stored goods1 level0)
	(stored goods2 level0)
	(stored goods3 level0)
	(stored goods4 level0)
	(stored goods5 level0)
	(stored goods6 level0)
	(stored goods7 level0)
	(stored goods8 level0)
	(stored goods9 level0)
	(loaded goods1 truck1 level0)
	(loaded goods2 truck1 level0)
	(loaded goods3 truck1 level0)
	(loaded goods4 truck1 level0)
	(loaded goods5 truck1 level0)
	(loaded goods6 truck1 level0)
	(loaded goods7 truck1 level0)
	(loaded goods8 truck1 level0)
	(loaded goods9 truck1 level0)
	(connected market1 market2)
	(connected market2 market1)
	(connected depot1 market1)
	(connected market1 depot1)
	(connected depot1 market2)
	(connected market2 depot1)
	(on-sale goods1 market1 level3)
	(on-sale goods2 market1 level2)
	(on-sale goods3 market1 level2)
	(on-sale goods4 market1 level4)
	(on-sale goods5 market1 level1)
	(on-sale goods6 market1 level1)
	(on-sale goods7 market1 level2)
	(on-sale goods8 market1 level1)
	(on-sale goods9 market1 level4)
	(on-sale goods1 market2 level0)
	(on-sale goods2 market2 level2)
	(on-sale goods3 market2 level0)
	(on-sale goods4 market2 level0)
	(on-sale goods5 market2 level3)
	(on-sale goods6 market2 level1)
	(on-sale goods7 market2 level0)
	(on-sale goods8 market2 level0)
	(on-sale goods9 market2 level0)
	(at truck1 depot1))

(:goal (and
	(forall (?g - goods) (preference p0A (stored ?g level1)))
	(forall (?g - goods) (preference p1A (stored ?g level2)))
	(forall (?g - goods) (preference p2A (stored ?g level3)))
	(forall (?g - goods) (preference p3A (stored ?g level4)))

	(forall (?l - level)
	   (preference p4A (imply (stored goods6 ?l) (stored goods7 ?l))))

	(forall (?l - level)
	   (preference p4B (imply (stored goods6 ?l) (stored goods9 ?l))))

	(forall (?l - level)
	   (preference p4C (imply (stored goods1 ?l) (stored goods3 ?l))))

	(forall (?g - goods)
	   (preference p5A
	      (and (forall (?m - market) (ready-to-load ?g ?m level0))
		   (forall (?t - truck) (loaded ?g ?t level0)))))))


(:metric minimize (+ (* 1 (is-violated p0A))
		     (* 2 (is-violated p1A))
		     (* 4 (is-violated p2A))
		     (* 8 (is-violated p3A))
		     (* 16 (is-violated p4A))
		     (* 16 (is-violated p4B))
		     (* 16 (is-violated p4C))
		     (* 32 (is-violated p5A))
		     (* 1 (is-violated p-drive))))
)
