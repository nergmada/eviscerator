(define (problem DLOG-8-6-25)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	driver4 - driver
	driver5 - driver
	driver6 - driver
	driver7 - driver
	driver8 - driver
	truck1 - truck
	truck2 - truck
	truck3 - truck
	truck4 - truck
	truck5 - truck
	truck6 - truck
	package1 - obj
	package2 - obj
	package3 - obj
	package4 - obj
	package5 - obj
	package6 - obj
	package7 - obj
	package8 - obj
	package9 - obj
	package10 - obj
	package11 - obj
	package12 - obj
	package13 - obj
	package14 - obj
	package15 - obj
	package16 - obj
	package17 - obj
	package18 - obj
	package19 - obj
	package20 - obj
	package21 - obj
	package22 - obj
	package23 - obj
	package24 - obj
	package25 - obj
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	s4 - location
	s5 - location
	s6 - location
	s7 - location
	s8 - location
	s9 - location
	s10 - location
	s11 - location
	s12 - location
	s13 - location
	s14 - location
	s15 - location
	s16 - location
	s17 - location
	s18 - location
	s19 - location
	p0-2 - location
	p0-16 - location
	p1-14 - location
	p1-15 - location
	p2-9 - location
	p2-14 - location
	p2-15 - location
	p3-11 - location
	p3-12 - location
	p4-3 - location
	p4-7 - location
	p4-9 - location
	p4-11 - location
	p4-16 - location
	p5-8 - location
	p5-17 - location
	p6-11 - location
	p7-6 - location
	p7-10 - location
	p7-15 - location
	p7-18 - location
	p7-19 - location
	p8-0 - location
	p8-4 - location
	p10-13 - location
	p12-1 - location
	p13-5 - location
	p13-8 - location
	p13-9 - location
	p13-18 - location
	p14-0 - location
	p14-13 - location
	p14-15 - location
	p15-5 - location
	p15-13 - location
	p16-12 - location
	p18-6 - location
	p19-11 - location
	p19-18 - location
	)
	(:init
	(at driver1 s13)
	(at driver2 s12)
	(at driver3 s19)
	(at driver4 s15)
	(at driver5 s13)
	(at driver6 s0)
	(at driver7 s16)
	(at driver8 s8)
	(at truck1 s13)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 10)
	(at truck2 s8)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 10)
	(at truck3 s5)
	(empty truck3)
	(= (load truck3) 0)
	(= (fuel-per-minute truck3) 10)
	(at truck4 s17)
	(empty truck4)
	(= (load truck4) 0)
	(= (fuel-per-minute truck4) 10)
	(at truck5 s16)
	(empty truck5)
	(= (load truck5) 0)
	(= (fuel-per-minute truck5) 10)
	(at truck6 s16)
	(empty truck6)
	(= (load truck6) 0)
	(= (fuel-per-minute truck6) 10)
	(at package1 s18)
	(at package2 s15)
	(at package3 s8)
	(at package4 s2)
	(at package5 s8)
	(at package6 s9)
	(at package7 s15)
	(at package8 s15)
	(at package9 s1)
	(at package10 s3)
	(at package11 s1)
	(at package12 s6)
	(at package13 s16)
	(at package14 s14)
	(at package15 s11)
	(at package16 s17)
	(at package17 s14)
	(at package18 s18)
	(at package19 s0)
	(at package20 s0)
	(at package21 s12)
	(at package22 s11)
	(at package23 s17)
	(at package24 s6)
	(at package25 s8)
	(path s0 p0-2)
	(path p0-2 s0)
	(path s2 p0-2)
	(path p0-2 s2)
	(= (time-to-walk s0 p0-2) 77)
	(= (time-to-walk p0-2 s0) 77)
	(= (time-to-walk s2 p0-2) 70)
	(= (time-to-walk p0-2 s2) 70)
	(path s0 p0-16)
	(path p0-16 s0)
	(path s16 p0-16)
	(path p0-16 s16)
	(= (time-to-walk s0 p0-16) 50)
	(= (time-to-walk p0-16 s0) 50)
	(= (time-to-walk s16 p0-16) 82)
	(= (time-to-walk p0-16 s16) 82)
	(path s1 p1-14)
	(path p1-14 s1)
	(path s14 p1-14)
	(path p1-14 s14)
	(= (time-to-walk s1 p1-14) 45)
	(= (time-to-walk p1-14 s1) 45)
	(= (time-to-walk s14 p1-14) 88)
	(= (time-to-walk p1-14 s14) 88)
	(path s1 p1-15)
	(path p1-15 s1)
	(path s15 p1-15)
	(path p1-15 s15)
	(= (time-to-walk s1 p1-15) 84)
	(= (time-to-walk p1-15 s1) 84)
	(= (time-to-walk s15 p1-15) 37)
	(= (time-to-walk p1-15 s15) 37)
	(path s2 p2-9)
	(path p2-9 s2)
	(path s9 p2-9)
	(path p2-9 s9)
	(= (time-to-walk s2 p2-9) 2)
	(= (time-to-walk p2-9 s2) 2)
	(= (time-to-walk s9 p2-9) 68)
	(= (time-to-walk p2-9 s9) 68)
	(path s2 p2-14)
	(path p2-14 s2)
	(path s14 p2-14)
	(path p2-14 s14)
	(= (time-to-walk s2 p2-14) 40)
	(= (time-to-walk p2-14 s2) 40)
	(= (time-to-walk s14 p2-14) 22)
	(= (time-to-walk p2-14 s14) 22)
	(path s2 p2-15)
	(path p2-15 s2)
	(path s15 p2-15)
	(path p2-15 s15)
	(= (time-to-walk s2 p2-15) 17)
	(= (time-to-walk p2-15 s2) 17)
	(= (time-to-walk s15 p2-15) 40)
	(= (time-to-walk p2-15 s15) 40)
	(path s3 p3-11)
	(path p3-11 s3)
	(path s11 p3-11)
	(path p3-11 s11)
	(= (time-to-walk s3 p3-11) 57)
	(= (time-to-walk p3-11 s3) 57)
	(= (time-to-walk s11 p3-11) 13)
	(= (time-to-walk p3-11 s11) 13)
	(path s3 p3-12)
	(path p3-12 s3)
	(path s12 p3-12)
	(path p3-12 s12)
	(= (time-to-walk s3 p3-12) 2)
	(= (time-to-walk p3-12 s3) 2)
	(= (time-to-walk s12 p3-12) 99)
	(= (time-to-walk p3-12 s12) 99)
	(path s4 p4-3)
	(path p4-3 s4)
	(path s3 p4-3)
	(path p4-3 s3)
	(= (time-to-walk s4 p4-3) 46)
	(= (time-to-walk p4-3 s4) 46)
	(= (time-to-walk s3 p4-3) 58)
	(= (time-to-walk p4-3 s3) 58)
	(path s4 p4-7)
	(path p4-7 s4)
	(path s7 p4-7)
	(path p4-7 s7)
	(= (time-to-walk s4 p4-7) 71)
	(= (time-to-walk p4-7 s4) 71)
	(= (time-to-walk s7 p4-7) 94)
	(= (time-to-walk p4-7 s7) 94)
	(path s4 p4-9)
	(path p4-9 s4)
	(path s9 p4-9)
	(path p4-9 s9)
	(= (time-to-walk s4 p4-9) 45)
	(= (time-to-walk p4-9 s4) 45)
	(= (time-to-walk s9 p4-9) 24)
	(= (time-to-walk p4-9 s9) 24)
	(path s4 p4-11)
	(path p4-11 s4)
	(path s11 p4-11)
	(path p4-11 s11)
	(= (time-to-walk s4 p4-11) 100)
	(= (time-to-walk p4-11 s4) 100)
	(= (time-to-walk s11 p4-11) 79)
	(= (time-to-walk p4-11 s11) 79)
	(path s4 p4-16)
	(path p4-16 s4)
	(path s16 p4-16)
	(path p4-16 s16)
	(= (time-to-walk s4 p4-16) 48)
	(= (time-to-walk p4-16 s4) 48)
	(= (time-to-walk s16 p4-16) 77)
	(= (time-to-walk p4-16 s16) 77)
	(path s5 p5-8)
	(path p5-8 s5)
	(path s8 p5-8)
	(path p5-8 s8)
	(= (time-to-walk s5 p5-8) 20)
	(= (time-to-walk p5-8 s5) 20)
	(= (time-to-walk s8 p5-8) 32)
	(= (time-to-walk p5-8 s8) 32)
	(path s5 p5-17)
	(path p5-17 s5)
	(path s17 p5-17)
	(path p5-17 s17)
	(= (time-to-walk s5 p5-17) 66)
	(= (time-to-walk p5-17 s5) 66)
	(= (time-to-walk s17 p5-17) 97)
	(= (time-to-walk p5-17 s17) 97)
	(path s6 p6-11)
	(path p6-11 s6)
	(path s11 p6-11)
	(path p6-11 s11)
	(= (time-to-walk s6 p6-11) 2)
	(= (time-to-walk p6-11 s6) 2)
	(= (time-to-walk s11 p6-11) 16)
	(= (time-to-walk p6-11 s11) 16)
	(path s7 p7-6)
	(path p7-6 s7)
	(path s6 p7-6)
	(path p7-6 s6)
	(= (time-to-walk s7 p7-6) 79)
	(= (time-to-walk p7-6 s7) 79)
	(= (time-to-walk s6 p7-6) 47)
	(= (time-to-walk p7-6 s6) 47)
	(path s7 p7-10)
	(path p7-10 s7)
	(path s10 p7-10)
	(path p7-10 s10)
	(= (time-to-walk s7 p7-10) 3)
	(= (time-to-walk p7-10 s7) 3)
	(= (time-to-walk s10 p7-10) 62)
	(= (time-to-walk p7-10 s10) 62)
	(path s7 p7-15)
	(path p7-15 s7)
	(path s15 p7-15)
	(path p7-15 s15)
	(= (time-to-walk s7 p7-15) 84)
	(= (time-to-walk p7-15 s7) 84)
	(= (time-to-walk s15 p7-15) 4)
	(= (time-to-walk p7-15 s15) 4)
	(path s7 p7-18)
	(path p7-18 s7)
	(path s18 p7-18)
	(path p7-18 s18)
	(= (time-to-walk s7 p7-18) 29)
	(= (time-to-walk p7-18 s7) 29)
	(= (time-to-walk s18 p7-18) 23)
	(= (time-to-walk p7-18 s18) 23)
	(path s7 p7-19)
	(path p7-19 s7)
	(path s19 p7-19)
	(path p7-19 s19)
	(= (time-to-walk s7 p7-19) 26)
	(= (time-to-walk p7-19 s7) 26)
	(= (time-to-walk s19 p7-19) 46)
	(= (time-to-walk p7-19 s19) 46)
	(path s8 p8-0)
	(path p8-0 s8)
	(path s0 p8-0)
	(path p8-0 s0)
	(= (time-to-walk s8 p8-0) 62)
	(= (time-to-walk p8-0 s8) 62)
	(= (time-to-walk s0 p8-0) 82)
	(= (time-to-walk p8-0 s0) 82)
	(path s8 p8-4)
	(path p8-4 s8)
	(path s4 p8-4)
	(path p8-4 s4)
	(= (time-to-walk s8 p8-4) 58)
	(= (time-to-walk p8-4 s8) 58)
	(= (time-to-walk s4 p8-4) 64)
	(= (time-to-walk p8-4 s4) 64)
	(path s10 p10-13)
	(path p10-13 s10)
	(path s13 p10-13)
	(path p10-13 s13)
	(= (time-to-walk s10 p10-13) 81)
	(= (time-to-walk p10-13 s10) 81)
	(= (time-to-walk s13 p10-13) 3)
	(= (time-to-walk p10-13 s13) 3)
	(path s12 p12-1)
	(path p12-1 s12)
	(path s1 p12-1)
	(path p12-1 s1)
	(= (time-to-walk s12 p12-1) 22)
	(= (time-to-walk p12-1 s12) 22)
	(= (time-to-walk s1 p12-1) 52)
	(= (time-to-walk p12-1 s1) 52)
	(path s13 p13-5)
	(path p13-5 s13)
	(path s5 p13-5)
	(path p13-5 s5)
	(= (time-to-walk s13 p13-5) 96)
	(= (time-to-walk p13-5 s13) 96)
	(= (time-to-walk s5 p13-5) 66)
	(= (time-to-walk p13-5 s5) 66)
	(path s13 p13-8)
	(path p13-8 s13)
	(path s8 p13-8)
	(path p13-8 s8)
	(= (time-to-walk s13 p13-8) 75)
	(= (time-to-walk p13-8 s13) 75)
	(= (time-to-walk s8 p13-8) 96)
	(= (time-to-walk p13-8 s8) 96)
	(path s13 p13-9)
	(path p13-9 s13)
	(path s9 p13-9)
	(path p13-9 s9)
	(= (time-to-walk s13 p13-9) 44)
	(= (time-to-walk p13-9 s13) 44)
	(= (time-to-walk s9 p13-9) 23)
	(= (time-to-walk p13-9 s9) 23)
	(path s13 p13-18)
	(path p13-18 s13)
	(path s18 p13-18)
	(path p13-18 s18)
	(= (time-to-walk s13 p13-18) 72)
	(= (time-to-walk p13-18 s13) 72)
	(= (time-to-walk s18 p13-18) 64)
	(= (time-to-walk p13-18 s18) 64)
	(path s14 p14-0)
	(path p14-0 s14)
	(path s0 p14-0)
	(path p14-0 s0)
	(= (time-to-walk s14 p14-0) 54)
	(= (time-to-walk p14-0 s14) 54)
	(= (time-to-walk s0 p14-0) 38)
	(= (time-to-walk p14-0 s0) 38)
	(path s14 p14-13)
	(path p14-13 s14)
	(path s13 p14-13)
	(path p14-13 s13)
	(= (time-to-walk s14 p14-13) 60)
	(= (time-to-walk p14-13 s14) 60)
	(= (time-to-walk s13 p14-13) 56)
	(= (time-to-walk p14-13 s13) 56)
	(path s14 p14-15)
	(path p14-15 s14)
	(path s15 p14-15)
	(path p14-15 s15)
	(= (time-to-walk s14 p14-15) 54)
	(= (time-to-walk p14-15 s14) 54)
	(= (time-to-walk s15 p14-15) 38)
	(= (time-to-walk p14-15 s15) 38)
	(path s15 p15-5)
	(path p15-5 s15)
	(path s5 p15-5)
	(path p15-5 s5)
	(= (time-to-walk s15 p15-5) 2)
	(= (time-to-walk p15-5 s15) 2)
	(= (time-to-walk s5 p15-5) 56)
	(= (time-to-walk p15-5 s5) 56)
	(path s15 p15-13)
	(path p15-13 s15)
	(path s13 p15-13)
	(path p15-13 s13)
	(= (time-to-walk s15 p15-13) 100)
	(= (time-to-walk p15-13 s15) 100)
	(= (time-to-walk s13 p15-13) 85)
	(= (time-to-walk p15-13 s13) 85)
	(path s16 p16-12)
	(path p16-12 s16)
	(path s12 p16-12)
	(path p16-12 s12)
	(= (time-to-walk s16 p16-12) 60)
	(= (time-to-walk p16-12 s16) 60)
	(= (time-to-walk s12 p16-12) 28)
	(= (time-to-walk p16-12 s12) 28)
	(path s18 p18-6)
	(path p18-6 s18)
	(path s6 p18-6)
	(path p18-6 s6)
	(= (time-to-walk s18 p18-6) 8)
	(= (time-to-walk p18-6 s18) 8)
	(= (time-to-walk s6 p18-6) 85)
	(= (time-to-walk p18-6 s6) 85)
	(path s19 p19-11)
	(path p19-11 s19)
	(path s11 p19-11)
	(path p19-11 s11)
	(= (time-to-walk s19 p19-11) 73)
	(= (time-to-walk p19-11 s19) 73)
	(= (time-to-walk s11 p19-11) 70)
	(= (time-to-walk p19-11 s11) 70)
	(path s19 p19-18)
	(path p19-18 s19)
	(path s18 p19-18)
	(path p19-18 s18)
	(= (time-to-walk s19 p19-18) 67)
	(= (time-to-walk p19-18 s19) 67)
	(= (time-to-walk s18 p19-18) 31)
	(= (time-to-walk p19-18 s18) 31)
	(link s1 s0)
	(link s0 s1)
	(= (time-to-drive s1 s0) 33)
	(= (time-to-drive s0 s1) 33)
	(link s1 s6)
	(link s6 s1)
	(= (time-to-drive s1 s6) 48)
	(= (time-to-drive s6 s1) 48)
	(link s1 s9)
	(link s9 s1)
	(= (time-to-drive s1 s9) 33)
	(= (time-to-drive s9 s1) 33)
	(link s2 s6)
	(link s6 s2)
	(= (time-to-drive s2 s6) 54)
	(= (time-to-drive s6 s2) 54)
	(link s2 s18)
	(link s18 s2)
	(= (time-to-drive s2 s18) 99)
	(= (time-to-drive s18 s2) 99)
	(link s2 s19)
	(link s19 s2)
	(= (time-to-drive s2 s19) 29)
	(= (time-to-drive s19 s2) 29)
	(link s3 s1)
	(link s1 s3)
	(= (time-to-drive s3 s1) 20)
	(= (time-to-drive s1 s3) 20)
	(link s3 s5)
	(link s5 s3)
	(= (time-to-drive s3 s5) 73)
	(= (time-to-drive s5 s3) 73)
	(link s3 s7)
	(link s7 s3)
	(= (time-to-drive s3 s7) 24)
	(= (time-to-drive s7 s3) 24)
	(link s3 s11)
	(link s11 s3)
	(= (time-to-drive s3 s11) 64)
	(= (time-to-drive s11 s3) 64)
	(link s3 s18)
	(link s18 s3)
	(= (time-to-drive s3 s18) 95)
	(= (time-to-drive s18 s3) 95)
	(link s4 s3)
	(link s3 s4)
	(= (time-to-drive s4 s3) 96)
	(= (time-to-drive s3 s4) 96)
	(link s4 s5)
	(link s5 s4)
	(= (time-to-drive s4 s5) 27)
	(= (time-to-drive s5 s4) 27)
	(link s4 s12)
	(link s12 s4)
	(= (time-to-drive s4 s12) 49)
	(= (time-to-drive s12 s4) 49)
	(link s5 s0)
	(link s0 s5)
	(= (time-to-drive s5 s0) 33)
	(= (time-to-drive s0 s5) 33)
	(link s5 s9)
	(link s9 s5)
	(= (time-to-drive s5 s9) 87)
	(= (time-to-drive s9 s5) 87)
	(link s5 s16)
	(link s16 s5)
	(= (time-to-drive s5 s16) 5)
	(= (time-to-drive s16 s5) 5)
	(link s5 s17)
	(link s17 s5)
	(= (time-to-drive s5 s17) 86)
	(= (time-to-drive s17 s5) 86)
	(link s6 s3)
	(link s3 s6)
	(= (time-to-drive s6 s3) 25)
	(= (time-to-drive s3 s6) 25)
	(link s6 s7)
	(link s7 s6)
	(= (time-to-drive s6 s7) 6)
	(= (time-to-drive s7 s6) 6)
	(link s6 s11)
	(link s11 s6)
	(= (time-to-drive s6 s11) 42)
	(= (time-to-drive s11 s6) 42)
	(link s6 s12)
	(link s12 s6)
	(= (time-to-drive s6 s12) 24)
	(= (time-to-drive s12 s6) 24)
	(link s6 s16)
	(link s16 s6)
	(= (time-to-drive s6 s16) 91)
	(= (time-to-drive s16 s6) 91)
	(link s6 s18)
	(link s18 s6)
	(= (time-to-drive s6 s18) 2)
	(= (time-to-drive s18 s6) 2)
	(link s7 s4)
	(link s4 s7)
	(= (time-to-drive s7 s4) 51)
	(= (time-to-drive s4 s7) 51)
	(link s7 s9)
	(link s9 s7)
	(= (time-to-drive s7 s9) 99)
	(= (time-to-drive s9 s7) 99)
	(link s7 s18)
	(link s18 s7)
	(= (time-to-drive s7 s18) 86)
	(= (time-to-drive s18 s7) 86)
	(link s8 s0)
	(link s0 s8)
	(= (time-to-drive s8 s0) 24)
	(= (time-to-drive s0 s8) 24)
	(link s8 s6)
	(link s6 s8)
	(= (time-to-drive s8 s6) 68)
	(= (time-to-drive s6 s8) 68)
	(link s8 s9)
	(link s9 s8)
	(= (time-to-drive s8 s9) 53)
	(= (time-to-drive s9 s8) 53)
	(link s8 s10)
	(link s10 s8)
	(= (time-to-drive s8 s10) 54)
	(= (time-to-drive s10 s8) 54)
	(link s8 s11)
	(link s11 s8)
	(= (time-to-drive s8 s11) 100)
	(= (time-to-drive s11 s8) 100)
	(link s8 s12)
	(link s12 s8)
	(= (time-to-drive s8 s12) 100)
	(= (time-to-drive s12 s8) 100)
	(link s8 s15)
	(link s15 s8)
	(= (time-to-drive s8 s15) 87)
	(= (time-to-drive s15 s8) 87)
	(link s8 s19)
	(link s19 s8)
	(= (time-to-drive s8 s19) 54)
	(= (time-to-drive s19 s8) 54)
	(link s9 s15)
	(link s15 s9)
	(= (time-to-drive s9 s15) 98)
	(= (time-to-drive s15 s9) 98)
	(link s9 s18)
	(link s18 s9)
	(= (time-to-drive s9 s18) 15)
	(= (time-to-drive s18 s9) 15)
	(link s10 s0)
	(link s0 s10)
	(= (time-to-drive s10 s0) 74)
	(= (time-to-drive s0 s10) 74)
	(link s10 s13)
	(link s13 s10)
	(= (time-to-drive s10 s13) 71)
	(= (time-to-drive s13 s10) 71)
	(link s10 s15)
	(link s15 s10)
	(= (time-to-drive s10 s15) 38)
	(= (time-to-drive s15 s10) 38)
	(link s10 s16)
	(link s16 s10)
	(= (time-to-drive s10 s16) 37)
	(= (time-to-drive s16 s10) 37)
	(link s11 s1)
	(link s1 s11)
	(= (time-to-drive s11 s1) 65)
	(= (time-to-drive s1 s11) 65)
	(link s11 s5)
	(link s5 s11)
	(= (time-to-drive s11 s5) 33)
	(= (time-to-drive s5 s11) 33)
	(link s11 s10)
	(link s10 s11)
	(= (time-to-drive s11 s10) 64)
	(= (time-to-drive s10 s11) 64)
	(link s11 s16)
	(link s16 s11)
	(= (time-to-drive s11 s16) 13)
	(= (time-to-drive s16 s11) 13)
	(link s12 s1)
	(link s1 s12)
	(= (time-to-drive s12 s1) 66)
	(= (time-to-drive s1 s12) 66)
	(link s12 s15)
	(link s15 s12)
	(= (time-to-drive s12 s15) 50)
	(= (time-to-drive s15 s12) 50)
	(link s12 s16)
	(link s16 s12)
	(= (time-to-drive s12 s16) 17)
	(= (time-to-drive s16 s12) 17)
	(link s13 s2)
	(link s2 s13)
	(= (time-to-drive s13 s2) 52)
	(= (time-to-drive s2 s13) 52)
	(link s13 s9)
	(link s9 s13)
	(= (time-to-drive s13 s9) 74)
	(= (time-to-drive s9 s13) 74)
	(link s13 s17)
	(link s17 s13)
	(= (time-to-drive s13 s17) 23)
	(= (time-to-drive s17 s13) 23)
	(link s14 s2)
	(link s2 s14)
	(= (time-to-drive s14 s2) 93)
	(= (time-to-drive s2 s14) 93)
	(link s14 s4)
	(link s4 s14)
	(= (time-to-drive s14 s4) 98)
	(= (time-to-drive s4 s14) 98)
	(link s14 s8)
	(link s8 s14)
	(= (time-to-drive s14 s8) 14)
	(= (time-to-drive s8 s14) 14)
	(link s15 s4)
	(link s4 s15)
	(= (time-to-drive s15 s4) 94)
	(= (time-to-drive s4 s15) 94)
	(link s15 s5)
	(link s5 s15)
	(= (time-to-drive s15 s5) 48)
	(= (time-to-drive s5 s15) 48)
	(link s15 s16)
	(link s16 s15)
	(= (time-to-drive s15 s16) 12)
	(= (time-to-drive s16 s15) 12)
	(link s15 s17)
	(link s17 s15)
	(= (time-to-drive s15 s17) 80)
	(= (time-to-drive s17 s15) 80)
	(link s16 s0)
	(link s0 s16)
	(= (time-to-drive s16 s0) 72)
	(= (time-to-drive s0 s16) 72)
	(link s16 s14)
	(link s14 s16)
	(= (time-to-drive s16 s14) 79)
	(= (time-to-drive s14 s16) 79)
	(link s16 s17)
	(link s17 s16)
	(= (time-to-drive s16 s17) 32)
	(= (time-to-drive s17 s16) 32)
	(link s17 s8)
	(link s8 s17)
	(= (time-to-drive s17 s8) 26)
	(= (time-to-drive s8 s17) 26)
	(link s17 s11)
	(link s11 s17)
	(= (time-to-drive s17 s11) 79)
	(= (time-to-drive s11 s17) 79)
	(link s18 s12)
	(link s12 s18)
	(= (time-to-drive s18 s12) 32)
	(= (time-to-drive s12 s18) 32)
	(link s18 s14)
	(link s14 s18)
	(= (time-to-drive s18 s14) 12)
	(= (time-to-drive s14 s18) 12)
	(link s18 s19)
	(link s19 s18)
	(= (time-to-drive s18 s19) 33)
	(= (time-to-drive s19 s18) 33)
	(link s19 s6)
	(link s6 s19)
	(= (time-to-drive s19 s6) 29)
	(= (time-to-drive s6 s19) 29)
	(link s19 s10)
	(link s10 s19)
	(= (time-to-drive s19 s10) 27)
	(= (time-to-drive s10 s19) 27)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s13)
	(at driver2 s6)
	(at driver3 s15)
	(at driver5 s6)
	(at driver6 s5)
	(at driver7 s8)
	(at truck3 s5)
	(at truck4 s18)
	(at truck6 s12)
	(at package1 s6)
	(at package2 s7)
	(at package3 s3)
	(at package4 s11)
	(at package5 s5)
	(at package6 s14)
	(at package7 s19)
	(at package8 s16)
	(at package9 s13)
	(at package10 s9)
	(at package11 s7)
	(at package12 s3)
	(at package13 s11)
	(at package14 s14)
	(at package15 s2)
	(at package16 s12)
	(at package18 s2)
	(at package19 s4)
	(at package20 s7)
	(at package21 s8)
	(at package22 s14)
	(at package23 s10)
	(at package24 s4)
	(at package25 s16)
	))

(:metric minimize (+ (* 4 (total-time)) (* 1 (fuel-used))))

)
