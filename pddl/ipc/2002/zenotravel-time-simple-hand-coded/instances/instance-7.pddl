(define (problem ZTRAVEL-5-80)
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
	person71 - person
	person72 - person
	person73 - person
	person74 - person
	person75 - person
	person76 - person
	person77 - person
	person78 - person
	person79 - person
	person80 - person
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
	fl0 - flevel
	fl1 - flevel
	fl2 - flevel
	fl3 - flevel
	fl4 - flevel
	fl5 - flevel
	fl6 - flevel
	)
(:init
	(at plane1 city1)
	(fuel-level plane1 fl2)
	(at plane2 city8)
	(fuel-level plane2 fl0)
	(at plane3 city5)
	(fuel-level plane3 fl0)
	(at plane4 city3)
	(fuel-level plane4 fl6)
	(at plane5 city8)
	(fuel-level plane5 fl3)
	(at person1 city6)
	(at person2 city4)
	(at person3 city9)
	(at person4 city2)
	(at person5 city1)
	(at person6 city8)
	(at person7 city2)
	(at person8 city5)
	(at person9 city2)
	(at person10 city1)
	(at person11 city3)
	(at person12 city8)
	(at person13 city2)
	(at person14 city3)
	(at person15 city8)
	(at person16 city7)
	(at person17 city3)
	(at person18 city9)
	(at person19 city9)
	(at person20 city4)
	(at person21 city1)
	(at person22 city5)
	(at person23 city8)
	(at person24 city6)
	(at person25 city9)
	(at person26 city5)
	(at person27 city7)
	(at person28 city1)
	(at person29 city2)
	(at person30 city4)
	(at person31 city7)
	(at person32 city7)
	(at person33 city8)
	(at person34 city9)
	(at person35 city4)
	(at person36 city5)
	(at person37 city9)
	(at person38 city9)
	(at person39 city0)
	(at person40 city6)
	(at person41 city7)
	(at person42 city6)
	(at person43 city3)
	(at person44 city0)
	(at person45 city0)
	(at person46 city1)
	(at person47 city2)
	(at person48 city5)
	(at person49 city0)
	(at person50 city6)
	(at person51 city8)
	(at person52 city8)
	(at person53 city1)
	(at person54 city5)
	(at person55 city6)
	(at person56 city4)
	(at person57 city3)
	(at person58 city1)
	(at person59 city0)
	(at person60 city1)
	(at person61 city0)
	(at person62 city5)
	(at person63 city1)
	(at person64 city9)
	(at person65 city6)
	(at person66 city8)
	(at person67 city1)
	(at person68 city4)
	(at person69 city5)
	(at person70 city6)
	(at person71 city3)
	(at person72 city3)
	(at person73 city4)
	(at person74 city8)
	(at person75 city7)
	(at person76 city1)
	(at person77 city1)
	(at person78 city1)
	(at person79 city5)
	(at person80 city4)
	(next fl0 fl1)
	(next fl1 fl2)
	(next fl2 fl3)
	(next fl3 fl4)
	(next fl4 fl5)
	(next fl5 fl6)
)
(:goal (and
	(at plane2 city3)
	(at plane3 city1)
	(at person1 city6)
	(at person2 city9)
	(at person3 city4)
	(at person4 city5)
	(at person5 city3)
	(at person6 city5)
	(at person7 city1)
	(at person9 city0)
	(at person10 city0)
	(at person11 city7)
	(at person12 city1)
	(at person13 city0)
	(at person14 city3)
	(at person15 city5)
	(at person16 city3)
	(at person17 city5)
	(at person18 city1)
	(at person19 city3)
	(at person20 city5)
	(at person21 city8)
	(at person22 city7)
	(at person23 city9)
	(at person24 city2)
	(at person25 city1)
	(at person26 city8)
	(at person27 city2)
	(at person28 city1)
	(at person29 city0)
	(at person30 city5)
	(at person31 city7)
	(at person32 city3)
	(at person33 city1)
	(at person34 city7)
	(at person35 city6)
	(at person36 city1)
	(at person37 city8)
	(at person38 city0)
	(at person39 city3)
	(at person40 city7)
	(at person41 city5)
	(at person42 city2)
	(at person43 city0)
	(at person44 city0)
	(at person45 city4)
	(at person46 city0)
	(at person47 city9)
	(at person48 city8)
	(at person49 city9)
	(at person50 city5)
	(at person51 city3)
	(at person52 city0)
	(at person53 city3)
	(at person54 city4)
	(at person55 city4)
	(at person56 city6)
	(at person57 city9)
	(at person58 city4)
	(at person59 city5)
	(at person60 city2)
	(at person62 city9)
	(at person63 city0)
	(at person64 city5)
	(at person65 city2)
	(at person66 city6)
	(at person67 city0)
	(at person68 city1)
	(at person69 city1)
	(at person70 city3)
	(at person71 city4)
	(at person72 city9)
	(at person73 city1)
	(at person74 city0)
	(at person75 city6)
	(at person76 city5)
	(at person77 city7)
	(at person78 city1)
	(at person79 city7)
	(at person80 city3)
	))

(:metric minimize (total-time))
)
