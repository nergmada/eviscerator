(define (problem ZTRAVEL-5-70)
(:domain zeno-travel)
(:objects
	plane1 - aircraft
	plane2 - aircraft
	plane3 - aircraft
	plane4 - aircraft
	plane5 - aircraft
	person1 - person
	person2 - person
	person3 - person
	person4 - person
	person5 - person
	person6 - person
	person7 - person
	person8 - person
	person9 - person
	person10 - person
	person11 - person
	person12 - person
	person13 - person
	person14 - person
	person15 - person
	person16 - person
	person17 - person
	person18 - person
	person19 - person
	person20 - person
	person21 - person
	person22 - person
	person23 - person
	person24 - person
	person25 - person
	person26 - person
	person27 - person
	person28 - person
	person29 - person
	person30 - person
	person31 - person
	person32 - person
	person33 - person
	person34 - person
	person35 - person
	person36 - person
	person37 - person
	person38 - person
	person39 - person
	person40 - person
	person41 - person
	person42 - person
	person43 - person
	person44 - person
	person45 - person
	person46 - person
	person47 - person
	person48 - person
	person49 - person
	person50 - person
	person51 - person
	person52 - person
	person53 - person
	person54 - person
	person55 - person
	person56 - person
	person57 - person
	person58 - person
	person59 - person
	person60 - person
	person61 - person
	person62 - person
	person63 - person
	person64 - person
	person65 - person
	person66 - person
	person67 - person
	person68 - person
	person69 - person
	person70 - person
	city0 - city
	city1 - city
	city2 - city
	city3 - city
	city4 - city
	city5 - city
	city6 - city
	city7 - city
	city8 - city
	city9 - city
	)
(:init
	(at plane1 city1)
	(= (capacity plane1) 4659)
	(= (fuel plane1) 1968)
	(= (slow-burn plane1) 2)
	(= (fast-burn plane1) 7)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 7)
	(at plane2 city7)
	(= (capacity plane2) 2600)
	(= (fuel plane2) 777)
	(= (slow-burn plane2) 1)
	(= (fast-burn plane2) 3)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 7)
	(at plane3 city0)
	(= (capacity plane3) 2934)
	(= (fuel plane3) 868)
	(= (slow-burn plane3) 1)
	(= (fast-burn plane3) 3)
	(= (onboard plane3) 0)
	(= (zoom-limit plane3) 1)
	(at plane4 city7)
	(= (capacity plane4) 4538)
	(= (fuel plane4) 1856)
	(= (slow-burn plane4) 2)
	(= (fast-burn plane4) 6)
	(= (onboard plane4) 0)
	(= (zoom-limit plane4) 10)
	(at plane5 city6)
	(= (capacity plane5) 2181)
	(= (fuel plane5) 963)
	(= (slow-burn plane5) 1)
	(= (fast-burn plane5) 3)
	(= (onboard plane5) 0)
	(= (zoom-limit plane5) 10)
	(at person1 city3)
	(at person2 city2)
	(at person3 city6)
	(at person4 city4)
	(at person5 city4)
	(at person6 city6)
	(at person7 city6)
	(at person8 city6)
	(at person9 city5)
	(at person10 city2)
	(at person11 city6)
	(at person12 city9)
	(at person13 city7)
	(at person14 city0)
	(at person15 city6)
	(at person16 city4)
	(at person17 city9)
	(at person18 city0)
	(at person19 city2)
	(at person20 city4)
	(at person21 city5)
	(at person22 city3)
	(at person23 city7)
	(at person24 city6)
	(at person25 city7)
	(at person26 city8)
	(at person27 city5)
	(at person28 city3)
	(at person29 city2)
	(at person30 city3)
	(at person31 city8)
	(at person32 city2)
	(at person33 city5)
	(at person34 city6)
	(at person35 city8)
	(at person36 city5)
	(at person37 city5)
	(at person38 city3)
	(at person39 city5)
	(at person40 city9)
	(at person41 city6)
	(at person42 city3)
	(at person43 city9)
	(at person44 city2)
	(at person45 city3)
	(at person46 city9)
	(at person47 city4)
	(at person48 city8)
	(at person49 city0)
	(at person50 city3)
	(at person51 city1)
	(at person52 city0)
	(at person53 city3)
	(at person54 city7)
	(at person55 city8)
	(at person56 city4)
	(at person57 city4)
	(at person58 city2)
	(at person59 city3)
	(at person60 city9)
	(at person61 city2)
	(at person62 city2)
	(at person63 city1)
	(at person64 city4)
	(at person65 city8)
	(at person66 city1)
	(at person67 city0)
	(at person68 city9)
	(at person69 city1)
	(at person70 city2)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 791)
	(= (distance city0 city2) 564)
	(= (distance city0 city3) 874)
	(= (distance city0 city4) 906)
	(= (distance city0 city5) 501)
	(= (distance city0 city6) 596)
	(= (distance city0 city7) 668)
	(= (distance city0 city8) 914)
	(= (distance city0 city9) 628)
	(= (distance city1 city0) 791)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 522)
	(= (distance city1 city3) 831)
	(= (distance city1 city4) 710)
	(= (distance city1 city5) 795)
	(= (distance city1 city6) 956)
	(= (distance city1 city7) 555)
	(= (distance city1 city8) 563)
	(= (distance city1 city9) 883)
	(= (distance city2 city0) 564)
	(= (distance city2 city1) 522)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 675)
	(= (distance city2 city4) 577)
	(= (distance city2 city5) 936)
	(= (distance city2 city6) 923)
	(= (distance city2 city7) 900)
	(= (distance city2 city8) 998)
	(= (distance city2 city9) 655)
	(= (distance city3 city0) 874)
	(= (distance city3 city1) 831)
	(= (distance city3 city2) 675)
	(= (distance city3 city3) 0)
	(= (distance city3 city4) 834)
	(= (distance city3 city5) 743)
	(= (distance city3 city6) 516)
	(= (distance city3 city7) 795)
	(= (distance city3 city8) 666)
	(= (distance city3 city9) 526)
	(= (distance city4 city0) 906)
	(= (distance city4 city1) 710)
	(= (distance city4 city2) 577)
	(= (distance city4 city3) 834)
	(= (distance city4 city4) 0)
	(= (distance city4 city5) 727)
	(= (distance city4 city6) 957)
	(= (distance city4 city7) 590)
	(= (distance city4 city8) 601)
	(= (distance city4 city9) 864)
	(= (distance city5 city0) 501)
	(= (distance city5 city1) 795)
	(= (distance city5 city2) 936)
	(= (distance city5 city3) 743)
	(= (distance city5 city4) 727)
	(= (distance city5 city5) 0)
	(= (distance city5 city6) 592)
	(= (distance city5 city7) 698)
	(= (distance city5 city8) 533)
	(= (distance city5 city9) 506)
	(= (distance city6 city0) 596)
	(= (distance city6 city1) 956)
	(= (distance city6 city2) 923)
	(= (distance city6 city3) 516)
	(= (distance city6 city4) 957)
	(= (distance city6 city5) 592)
	(= (distance city6 city6) 0)
	(= (distance city6 city7) 826)
	(= (distance city6 city8) 555)
	(= (distance city6 city9) 838)
	(= (distance city7 city0) 668)
	(= (distance city7 city1) 555)
	(= (distance city7 city2) 900)
	(= (distance city7 city3) 795)
	(= (distance city7 city4) 590)
	(= (distance city7 city5) 698)
	(= (distance city7 city6) 826)
	(= (distance city7 city7) 0)
	(= (distance city7 city8) 536)
	(= (distance city7 city9) 851)
	(= (distance city8 city0) 914)
	(= (distance city8 city1) 563)
	(= (distance city8 city2) 998)
	(= (distance city8 city3) 666)
	(= (distance city8 city4) 601)
	(= (distance city8 city5) 533)
	(= (distance city8 city6) 555)
	(= (distance city8 city7) 536)
	(= (distance city8 city8) 0)
	(= (distance city8 city9) 795)
	(= (distance city9 city0) 628)
	(= (distance city9 city1) 883)
	(= (distance city9 city2) 655)
	(= (distance city9 city3) 526)
	(= (distance city9 city4) 864)
	(= (distance city9 city5) 506)
	(= (distance city9 city6) 838)
	(= (distance city9 city7) 851)
	(= (distance city9 city8) 795)
	(= (distance city9 city9) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at person1 city7)
	(at person2 city5)
	(at person3 city5)
	(at person4 city1)
	(at person5 city0)
	(at person6 city6)
	(at person7 city0)
	(at person8 city1)
	(at person9 city2)
	(at person10 city4)
	(at person11 city8)
	(at person12 city0)
	(at person13 city6)
	(at person14 city1)
	(at person15 city5)
	(at person16 city2)
	(at person17 city8)
	(at person18 city4)
	(at person19 city0)
	(at person20 city3)
	(at person21 city9)
	(at person22 city9)
	(at person23 city7)
	(at person24 city7)
	(at person25 city4)
	(at person26 city9)
	(at person27 city8)
	(at person28 city8)
	(at person29 city1)
	(at person30 city5)
	(at person31 city0)
	(at person32 city3)
	(at person33 city0)
	(at person34 city7)
	(at person35 city4)
	(at person36 city3)
	(at person37 city9)
	(at person38 city2)
	(at person39 city4)
	(at person40 city7)
	(at person41 city6)
	(at person42 city8)
	(at person43 city4)
	(at person44 city1)
	(at person45 city9)
	(at person46 city5)
	(at person47 city0)
	(at person48 city3)
	(at person49 city9)
	(at person50 city8)
	(at person51 city4)
	(at person52 city8)
	(at person53 city7)
	(at person54 city0)
	(at person55 city4)
	(at person56 city3)
	(at person57 city8)
	(at person58 city6)
	(at person59 city6)
	(at person60 city9)
	(at person61 city1)
	(at person62 city2)
	(at person64 city3)
	(at person65 city1)
	(at person66 city6)
	(at person67 city0)
	(at person68 city2)
	(at person69 city6)
	(at person70 city5)
	))

(:metric minimize (+ (* 4 (total-time))  (* 1 (total-fuel-used))))
)
