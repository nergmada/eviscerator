(define (problem ZTRAVEL-5-60)
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
	city10 - city
	city11 - city
	city12 - city
	city13 - city
	city14 - city
	city15 - city
	city16 - city
	city17 - city
	city18 - city
	city19 - city
	city20 - city
	city21 - city
	city22 - city
	city23 - city
	city24 - city
	city25 - city
	city26 - city
	city27 - city
	city28 - city
	city29 - city
	)
(:init
	(at plane1 city13)
	(= (capacity plane1) 8875)
	(= (fuel plane1) 231)
	(= (slow-burn plane1) 4)
	(= (fast-burn plane1) 8)
	(= (onboard plane1) 0)
	(= (zoom-limit plane1) 9)
	(at plane2 city10)
	(= (capacity plane2) 6474)
	(= (fuel plane2) 2008)
	(= (slow-burn plane2) 3)
	(= (fast-burn plane2) 9)
	(= (onboard plane2) 0)
	(= (zoom-limit plane2) 8)
	(at plane3 city25)
	(= (capacity plane3) 15007)
	(= (fuel plane3) 1528)
	(= (slow-burn plane3) 5)
	(= (fast-burn plane3) 10)
	(= (onboard plane3) 0)
	(= (zoom-limit plane3) 5)
	(at plane4 city29)
	(= (capacity plane4) 8111)
	(= (fuel plane4) 2528)
	(= (slow-burn plane4) 3)
	(= (fast-burn plane4) 10)
	(= (onboard plane4) 0)
	(= (zoom-limit plane4) 8)
	(at plane5 city6)
	(= (capacity plane5) 2789)
	(= (fuel plane5) 532)
	(= (slow-burn plane5) 1)
	(= (fast-burn plane5) 2)
	(= (onboard plane5) 0)
	(= (zoom-limit plane5) 3)
	(at person1 city16)
	(at person2 city13)
	(at person3 city24)
	(at person4 city24)
	(at person5 city27)
	(at person6 city10)
	(at person7 city4)
	(at person8 city7)
	(at person9 city23)
	(at person10 city1)
	(at person11 city13)
	(at person12 city4)
	(at person13 city27)
	(at person14 city3)
	(at person15 city24)
	(at person16 city4)
	(at person17 city3)
	(at person18 city9)
	(at person19 city24)
	(at person20 city19)
	(at person21 city20)
	(at person22 city6)
	(at person23 city8)
	(at person24 city11)
	(at person25 city14)
	(at person26 city14)
	(at person27 city1)
	(at person28 city19)
	(at person29 city10)
	(at person30 city26)
	(at person31 city27)
	(at person32 city28)
	(at person33 city15)
	(at person34 city12)
	(at person35 city12)
	(at person36 city14)
	(at person37 city27)
	(at person38 city27)
	(at person39 city20)
	(at person40 city29)
	(at person41 city27)
	(at person42 city26)
	(at person43 city1)
	(at person44 city8)
	(at person45 city22)
	(at person46 city7)
	(at person47 city27)
	(at person48 city26)
	(at person49 city13)
	(at person50 city12)
	(at person51 city12)
	(at person52 city3)
	(at person53 city22)
	(at person54 city17)
	(at person55 city29)
	(at person56 city12)
	(at person57 city12)
	(at person58 city0)
	(at person59 city26)
	(at person60 city9)
	(= (distance city0 city0) 0)
	(= (distance city0 city1) 898)
	(= (distance city0 city2) 740)
	(= (distance city0 city3) 606)
	(= (distance city0 city4) 914)
	(= (distance city0 city5) 960)
	(= (distance city0 city6) 683)
	(= (distance city0 city7) 999)
	(= (distance city0 city8) 920)
	(= (distance city0 city9) 896)
	(= (distance city0 city10) 700)
	(= (distance city0 city11) 576)
	(= (distance city0 city12) 626)
	(= (distance city0 city13) 770)
	(= (distance city0 city14) 879)
	(= (distance city0 city15) 941)
	(= (distance city0 city16) 579)
	(= (distance city0 city17) 973)
	(= (distance city0 city18) 679)
	(= (distance city0 city19) 708)
	(= (distance city0 city20) 557)
	(= (distance city0 city21) 618)
	(= (distance city0 city22) 922)
	(= (distance city0 city23) 571)
	(= (distance city0 city24) 742)
	(= (distance city0 city25) 844)
	(= (distance city0 city26) 723)
	(= (distance city0 city27) 771)
	(= (distance city0 city28) 545)
	(= (distance city0 city29) 830)
	(= (distance city1 city0) 898)
	(= (distance city1 city1) 0)
	(= (distance city1 city2) 665)
	(= (distance city1 city3) 904)
	(= (distance city1 city4) 728)
	(= (distance city1 city5) 905)
	(= (distance city1 city6) 510)
	(= (distance city1 city7) 643)
	(= (distance city1 city8) 866)
	(= (distance city1 city9) 694)
	(= (distance city1 city10) 642)
	(= (distance city1 city11) 786)
	(= (distance city1 city12) 590)
	(= (distance city1 city13) 843)
	(= (distance city1 city14) 863)
	(= (distance city1 city15) 717)
	(= (distance city1 city16) 613)
	(= (distance city1 city17) 742)
	(= (distance city1 city18) 659)
	(= (distance city1 city19) 692)
	(= (distance city1 city20) 715)
	(= (distance city1 city21) 838)
	(= (distance city1 city22) 901)
	(= (distance city1 city23) 772)
	(= (distance city1 city24) 957)
	(= (distance city1 city25) 823)
	(= (distance city1 city26) 844)
	(= (distance city1 city27) 699)
	(= (distance city1 city28) 667)
	(= (distance city1 city29) 567)
	(= (distance city2 city0) 740)
	(= (distance city2 city1) 665)
	(= (distance city2 city2) 0)
	(= (distance city2 city3) 971)
	(= (distance city2 city4) 713)
	(= (distance city2 city5) 898)
	(= (distance city2 city6) 636)
	(= (distance city2 city7) 617)
	(= (distance city2 city8) 627)
	(= (distance city2 city9) 542)
	(= (distance city2 city10) 628)
	(= (distance city2 city11) 770)
	(= (distance city2 city12) 908)
	(= (distance city2 city13) 823)
	(= (distance city2 city14) 913)
	(= (distance city2 city15) 694)
	(= (distance city2 city16) 913)
	(= (distance city2 city17) 756)
	(= (distance city2 city18) 558)
	(= (distance city2 city19) 631)
	(= (distance city2 city20) 870)
	(= (distance city2 city21) 800)
	(= (distance city2 city22) 790)
	(= (distance city2 city23) 562)
	(= (distance city2 city24) 516)
	(= (distance city2 city25) 629)
	(= (distance city2 city26) 964)
	(= (distance city2 city27) 789)
	(= (distance city2 city28) 586)
	(= (distance city2 city29) 787)
	(= (distance city3 city0) 606)
	(= (distance city3 city1) 904)
	(= (distance city3 city2) 971)
	(= (distance city3 city3) 0)
	(= (distance city3 city4) 633)
	(= (distance city3 city5) 786)
	(= (distance city3 city6) 955)
	(= (distance city3 city7) 701)
	(= (distance city3 city8) 757)
	(= (distance city3 city9) 668)
	(= (distance city3 city10) 599)
	(= (distance city3 city11) 894)
	(= (distance city3 city12) 786)
	(= (distance city3 city13) 727)
	(= (distance city3 city14) 936)
	(= (distance city3 city15) 914)
	(= (distance city3 city16) 997)
	(= (distance city3 city17) 844)
	(= (distance city3 city18) 737)
	(= (distance city3 city19) 911)
	(= (distance city3 city20) 539)
	(= (distance city3 city21) 651)
	(= (distance city3 city22) 667)
	(= (distance city3 city23) 597)
	(= (distance city3 city24) 783)
	(= (distance city3 city25) 537)
	(= (distance city3 city26) 898)
	(= (distance city3 city27) 574)
	(= (distance city3 city28) 600)
	(= (distance city3 city29) 915)
	(= (distance city4 city0) 914)
	(= (distance city4 city1) 728)
	(= (distance city4 city2) 713)
	(= (distance city4 city3) 633)
	(= (distance city4 city4) 0)
	(= (distance city4 city5) 703)
	(= (distance city4 city6) 564)
	(= (distance city4 city7) 704)
	(= (distance city4 city8) 790)
	(= (distance city4 city9) 852)
	(= (distance city4 city10) 838)
	(= (distance city4 city11) 576)
	(= (distance city4 city12) 808)
	(= (distance city4 city13) 540)
	(= (distance city4 city14) 833)
	(= (distance city4 city15) 976)
	(= (distance city4 city16) 640)
	(= (distance city4 city17) 727)
	(= (distance city4 city18) 763)
	(= (distance city4 city19) 867)
	(= (distance city4 city20) 664)
	(= (distance city4 city21) 677)
	(= (distance city4 city22) 865)
	(= (distance city4 city23) 508)
	(= (distance city4 city24) 915)
	(= (distance city4 city25) 776)
	(= (distance city4 city26) 548)
	(= (distance city4 city27) 567)
	(= (distance city4 city28) 944)
	(= (distance city4 city29) 646)
	(= (distance city5 city0) 960)
	(= (distance city5 city1) 905)
	(= (distance city5 city2) 898)
	(= (distance city5 city3) 786)
	(= (distance city5 city4) 703)
	(= (distance city5 city5) 0)
	(= (distance city5 city6) 850)
	(= (distance city5 city7) 982)
	(= (distance city5 city8) 544)
	(= (distance city5 city9) 924)
	(= (distance city5 city10) 582)
	(= (distance city5 city11) 960)
	(= (distance city5 city12) 628)
	(= (distance city5 city13) 647)
	(= (distance city5 city14) 665)
	(= (distance city5 city15) 918)
	(= (distance city5 city16) 500)
	(= (distance city5 city17) 503)
	(= (distance city5 city18) 995)
	(= (distance city5 city19) 808)
	(= (distance city5 city20) 544)
	(= (distance city5 city21) 828)
	(= (distance city5 city22) 785)
	(= (distance city5 city23) 684)
	(= (distance city5 city24) 556)
	(= (distance city5 city25) 548)
	(= (distance city5 city26) 552)
	(= (distance city5 city27) 720)
	(= (distance city5 city28) 726)
	(= (distance city5 city29) 917)
	(= (distance city6 city0) 683)
	(= (distance city6 city1) 510)
	(= (distance city6 city2) 636)
	(= (distance city6 city3) 955)
	(= (distance city6 city4) 564)
	(= (distance city6 city5) 850)
	(= (distance city6 city6) 0)
	(= (distance city6 city7) 729)
	(= (distance city6 city8) 642)
	(= (distance city6 city9) 694)
	(= (distance city6 city10) 778)
	(= (distance city6 city11) 710)
	(= (distance city6 city12) 638)
	(= (distance city6 city13) 924)
	(= (distance city6 city14) 561)
	(= (distance city6 city15) 620)
	(= (distance city6 city16) 969)
	(= (distance city6 city17) 985)
	(= (distance city6 city18) 703)
	(= (distance city6 city19) 929)
	(= (distance city6 city20) 614)
	(= (distance city6 city21) 851)
	(= (distance city6 city22) 594)
	(= (distance city6 city23) 533)
	(= (distance city6 city24) 851)
	(= (distance city6 city25) 598)
	(= (distance city6 city26) 528)
	(= (distance city6 city27) 660)
	(= (distance city6 city28) 643)
	(= (distance city6 city29) 857)
	(= (distance city7 city0) 999)
	(= (distance city7 city1) 643)
	(= (distance city7 city2) 617)
	(= (distance city7 city3) 701)
	(= (distance city7 city4) 704)
	(= (distance city7 city5) 982)
	(= (distance city7 city6) 729)
	(= (distance city7 city7) 0)
	(= (distance city7 city8) 946)
	(= (distance city7 city9) 828)
	(= (distance city7 city10) 913)
	(= (distance city7 city11) 994)
	(= (distance city7 city12) 880)
	(= (distance city7 city13) 634)
	(= (distance city7 city14) 721)
	(= (distance city7 city15) 798)
	(= (distance city7 city16) 863)
	(= (distance city7 city17) 864)
	(= (distance city7 city18) 992)
	(= (distance city7 city19) 641)
	(= (distance city7 city20) 574)
	(= (distance city7 city21) 630)
	(= (distance city7 city22) 566)
	(= (distance city7 city23) 635)
	(= (distance city7 city24) 751)
	(= (distance city7 city25) 535)
	(= (distance city7 city26) 621)
	(= (distance city7 city27) 954)
	(= (distance city7 city28) 965)
	(= (distance city7 city29) 735)
	(= (distance city8 city0) 920)
	(= (distance city8 city1) 866)
	(= (distance city8 city2) 627)
	(= (distance city8 city3) 757)
	(= (distance city8 city4) 790)
	(= (distance city8 city5) 544)
	(= (distance city8 city6) 642)
	(= (distance city8 city7) 946)
	(= (distance city8 city8) 0)
	(= (distance city8 city9) 805)
	(= (distance city8 city10) 559)
	(= (distance city8 city11) 769)
	(= (distance city8 city12) 657)
	(= (distance city8 city13) 658)
	(= (distance city8 city14) 797)
	(= (distance city8 city15) 818)
	(= (distance city8 city16) 801)
	(= (distance city8 city17) 654)
	(= (distance city8 city18) 764)
	(= (distance city8 city19) 629)
	(= (distance city8 city20) 568)
	(= (distance city8 city21) 759)
	(= (distance city8 city22) 510)
	(= (distance city8 city23) 702)
	(= (distance city8 city24) 980)
	(= (distance city8 city25) 808)
	(= (distance city8 city26) 565)
	(= (distance city8 city27) 844)
	(= (distance city8 city28) 801)
	(= (distance city8 city29) 707)
	(= (distance city9 city0) 896)
	(= (distance city9 city1) 694)
	(= (distance city9 city2) 542)
	(= (distance city9 city3) 668)
	(= (distance city9 city4) 852)
	(= (distance city9 city5) 924)
	(= (distance city9 city6) 694)
	(= (distance city9 city7) 828)
	(= (distance city9 city8) 805)
	(= (distance city9 city9) 0)
	(= (distance city9 city10) 918)
	(= (distance city9 city11) 932)
	(= (distance city9 city12) 773)
	(= (distance city9 city13) 554)
	(= (distance city9 city14) 683)
	(= (distance city9 city15) 808)
	(= (distance city9 city16) 675)
	(= (distance city9 city17) 638)
	(= (distance city9 city18) 773)
	(= (distance city9 city19) 911)
	(= (distance city9 city20) 944)
	(= (distance city9 city21) 833)
	(= (distance city9 city22) 680)
	(= (distance city9 city23) 602)
	(= (distance city9 city24) 992)
	(= (distance city9 city25) 977)
	(= (distance city9 city26) 920)
	(= (distance city9 city27) 794)
	(= (distance city9 city28) 632)
	(= (distance city9 city29) 684)
	(= (distance city10 city0) 700)
	(= (distance city10 city1) 642)
	(= (distance city10 city2) 628)
	(= (distance city10 city3) 599)
	(= (distance city10 city4) 838)
	(= (distance city10 city5) 582)
	(= (distance city10 city6) 778)
	(= (distance city10 city7) 913)
	(= (distance city10 city8) 559)
	(= (distance city10 city9) 918)
	(= (distance city10 city10) 0)
	(= (distance city10 city11) 923)
	(= (distance city10 city12) 700)
	(= (distance city10 city13) 943)
	(= (distance city10 city14) 934)
	(= (distance city10 city15) 902)
	(= (distance city10 city16) 924)
	(= (distance city10 city17) 742)
	(= (distance city10 city18) 968)
	(= (distance city10 city19) 768)
	(= (distance city10 city20) 544)
	(= (distance city10 city21) 675)
	(= (distance city10 city22) 687)
	(= (distance city10 city23) 976)
	(= (distance city10 city24) 949)
	(= (distance city10 city25) 741)
	(= (distance city10 city26) 660)
	(= (distance city10 city27) 758)
	(= (distance city10 city28) 917)
	(= (distance city10 city29) 798)
	(= (distance city11 city0) 576)
	(= (distance city11 city1) 786)
	(= (distance city11 city2) 770)
	(= (distance city11 city3) 894)
	(= (distance city11 city4) 576)
	(= (distance city11 city5) 960)
	(= (distance city11 city6) 710)
	(= (distance city11 city7) 994)
	(= (distance city11 city8) 769)
	(= (distance city11 city9) 932)
	(= (distance city11 city10) 923)
	(= (distance city11 city11) 0)
	(= (distance city11 city12) 532)
	(= (distance city11 city13) 828)
	(= (distance city11 city14) 743)
	(= (distance city11 city15) 865)
	(= (distance city11 city16) 509)
	(= (distance city11 city17) 845)
	(= (distance city11 city18) 858)
	(= (distance city11 city19) 986)
	(= (distance city11 city20) 766)
	(= (distance city11 city21) 652)
	(= (distance city11 city22) 618)
	(= (distance city11 city23) 950)
	(= (distance city11 city24) 576)
	(= (distance city11 city25) 818)
	(= (distance city11 city26) 894)
	(= (distance city11 city27) 510)
	(= (distance city11 city28) 721)
	(= (distance city11 city29) 819)
	(= (distance city12 city0) 626)
	(= (distance city12 city1) 590)
	(= (distance city12 city2) 908)
	(= (distance city12 city3) 786)
	(= (distance city12 city4) 808)
	(= (distance city12 city5) 628)
	(= (distance city12 city6) 638)
	(= (distance city12 city7) 880)
	(= (distance city12 city8) 657)
	(= (distance city12 city9) 773)
	(= (distance city12 city10) 700)
	(= (distance city12 city11) 532)
	(= (distance city12 city12) 0)
	(= (distance city12 city13) 753)
	(= (distance city12 city14) 689)
	(= (distance city12 city15) 588)
	(= (distance city12 city16) 797)
	(= (distance city12 city17) 865)
	(= (distance city12 city18) 775)
	(= (distance city12 city19) 774)
	(= (distance city12 city20) 814)
	(= (distance city12 city21) 517)
	(= (distance city12 city22) 934)
	(= (distance city12 city23) 572)
	(= (distance city12 city24) 935)
	(= (distance city12 city25) 733)
	(= (distance city12 city26) 604)
	(= (distance city12 city27) 764)
	(= (distance city12 city28) 977)
	(= (distance city12 city29) 970)
	(= (distance city13 city0) 770)
	(= (distance city13 city1) 843)
	(= (distance city13 city2) 823)
	(= (distance city13 city3) 727)
	(= (distance city13 city4) 540)
	(= (distance city13 city5) 647)
	(= (distance city13 city6) 924)
	(= (distance city13 city7) 634)
	(= (distance city13 city8) 658)
	(= (distance city13 city9) 554)
	(= (distance city13 city10) 943)
	(= (distance city13 city11) 828)
	(= (distance city13 city12) 753)
	(= (distance city13 city13) 0)
	(= (distance city13 city14) 773)
	(= (distance city13 city15) 822)
	(= (distance city13 city16) 828)
	(= (distance city13 city17) 759)
	(= (distance city13 city18) 588)
	(= (distance city13 city19) 980)
	(= (distance city13 city20) 878)
	(= (distance city13 city21) 539)
	(= (distance city13 city22) 556)
	(= (distance city13 city23) 697)
	(= (distance city13 city24) 934)
	(= (distance city13 city25) 567)
	(= (distance city13 city26) 918)
	(= (distance city13 city27) 753)
	(= (distance city13 city28) 820)
	(= (distance city13 city29) 608)
	(= (distance city14 city0) 879)
	(= (distance city14 city1) 863)
	(= (distance city14 city2) 913)
	(= (distance city14 city3) 936)
	(= (distance city14 city4) 833)
	(= (distance city14 city5) 665)
	(= (distance city14 city6) 561)
	(= (distance city14 city7) 721)
	(= (distance city14 city8) 797)
	(= (distance city14 city9) 683)
	(= (distance city14 city10) 934)
	(= (distance city14 city11) 743)
	(= (distance city14 city12) 689)
	(= (distance city14 city13) 773)
	(= (distance city14 city14) 0)
	(= (distance city14 city15) 841)
	(= (distance city14 city16) 617)
	(= (distance city14 city17) 973)
	(= (distance city14 city18) 617)
	(= (distance city14 city19) 892)
	(= (distance city14 city20) 787)
	(= (distance city14 city21) 635)
	(= (distance city14 city22) 826)
	(= (distance city14 city23) 860)
	(= (distance city14 city24) 570)
	(= (distance city14 city25) 560)
	(= (distance city14 city26) 964)
	(= (distance city14 city27) 834)
	(= (distance city14 city28) 537)
	(= (distance city14 city29) 935)
	(= (distance city15 city0) 941)
	(= (distance city15 city1) 717)
	(= (distance city15 city2) 694)
	(= (distance city15 city3) 914)
	(= (distance city15 city4) 976)
	(= (distance city15 city5) 918)
	(= (distance city15 city6) 620)
	(= (distance city15 city7) 798)
	(= (distance city15 city8) 818)
	(= (distance city15 city9) 808)
	(= (distance city15 city10) 902)
	(= (distance city15 city11) 865)
	(= (distance city15 city12) 588)
	(= (distance city15 city13) 822)
	(= (distance city15 city14) 841)
	(= (distance city15 city15) 0)
	(= (distance city15 city16) 607)
	(= (distance city15 city17) 860)
	(= (distance city15 city18) 763)
	(= (distance city15 city19) 867)
	(= (distance city15 city20) 949)
	(= (distance city15 city21) 744)
	(= (distance city15 city22) 746)
	(= (distance city15 city23) 988)
	(= (distance city15 city24) 801)
	(= (distance city15 city25) 943)
	(= (distance city15 city26) 923)
	(= (distance city15 city27) 868)
	(= (distance city15 city28) 862)
	(= (distance city15 city29) 677)
	(= (distance city16 city0) 579)
	(= (distance city16 city1) 613)
	(= (distance city16 city2) 913)
	(= (distance city16 city3) 997)
	(= (distance city16 city4) 640)
	(= (distance city16 city5) 500)
	(= (distance city16 city6) 969)
	(= (distance city16 city7) 863)
	(= (distance city16 city8) 801)
	(= (distance city16 city9) 675)
	(= (distance city16 city10) 924)
	(= (distance city16 city11) 509)
	(= (distance city16 city12) 797)
	(= (distance city16 city13) 828)
	(= (distance city16 city14) 617)
	(= (distance city16 city15) 607)
	(= (distance city16 city16) 0)
	(= (distance city16 city17) 688)
	(= (distance city16 city18) 970)
	(= (distance city16 city19) 519)
	(= (distance city16 city20) 806)
	(= (distance city16 city21) 944)
	(= (distance city16 city22) 636)
	(= (distance city16 city23) 698)
	(= (distance city16 city24) 732)
	(= (distance city16 city25) 772)
	(= (distance city16 city26) 525)
	(= (distance city16 city27) 592)
	(= (distance city16 city28) 843)
	(= (distance city16 city29) 585)
	(= (distance city17 city0) 973)
	(= (distance city17 city1) 742)
	(= (distance city17 city2) 756)
	(= (distance city17 city3) 844)
	(= (distance city17 city4) 727)
	(= (distance city17 city5) 503)
	(= (distance city17 city6) 985)
	(= (distance city17 city7) 864)
	(= (distance city17 city8) 654)
	(= (distance city17 city9) 638)
	(= (distance city17 city10) 742)
	(= (distance city17 city11) 845)
	(= (distance city17 city12) 865)
	(= (distance city17 city13) 759)
	(= (distance city17 city14) 973)
	(= (distance city17 city15) 860)
	(= (distance city17 city16) 688)
	(= (distance city17 city17) 0)
	(= (distance city17 city18) 557)
	(= (distance city17 city19) 677)
	(= (distance city17 city20) 623)
	(= (distance city17 city21) 992)
	(= (distance city17 city22) 785)
	(= (distance city17 city23) 983)
	(= (distance city17 city24) 755)
	(= (distance city17 city25) 653)
	(= (distance city17 city26) 932)
	(= (distance city17 city27) 500)
	(= (distance city17 city28) 899)
	(= (distance city17 city29) 921)
	(= (distance city18 city0) 679)
	(= (distance city18 city1) 659)
	(= (distance city18 city2) 558)
	(= (distance city18 city3) 737)
	(= (distance city18 city4) 763)
	(= (distance city18 city5) 995)
	(= (distance city18 city6) 703)
	(= (distance city18 city7) 992)
	(= (distance city18 city8) 764)
	(= (distance city18 city9) 773)
	(= (distance city18 city10) 968)
	(= (distance city18 city11) 858)
	(= (distance city18 city12) 775)
	(= (distance city18 city13) 588)
	(= (distance city18 city14) 617)
	(= (distance city18 city15) 763)
	(= (distance city18 city16) 970)
	(= (distance city18 city17) 557)
	(= (distance city18 city18) 0)
	(= (distance city18 city19) 801)
	(= (distance city18 city20) 842)
	(= (distance city18 city21) 844)
	(= (distance city18 city22) 670)
	(= (distance city18 city23) 705)
	(= (distance city18 city24) 522)
	(= (distance city18 city25) 858)
	(= (distance city18 city26) 676)
	(= (distance city18 city27) 541)
	(= (distance city18 city28) 665)
	(= (distance city18 city29) 620)
	(= (distance city19 city0) 708)
	(= (distance city19 city1) 692)
	(= (distance city19 city2) 631)
	(= (distance city19 city3) 911)
	(= (distance city19 city4) 867)
	(= (distance city19 city5) 808)
	(= (distance city19 city6) 929)
	(= (distance city19 city7) 641)
	(= (distance city19 city8) 629)
	(= (distance city19 city9) 911)
	(= (distance city19 city10) 768)
	(= (distance city19 city11) 986)
	(= (distance city19 city12) 774)
	(= (distance city19 city13) 980)
	(= (distance city19 city14) 892)
	(= (distance city19 city15) 867)
	(= (distance city19 city16) 519)
	(= (distance city19 city17) 677)
	(= (distance city19 city18) 801)
	(= (distance city19 city19) 0)
	(= (distance city19 city20) 678)
	(= (distance city19 city21) 864)
	(= (distance city19 city22) 853)
	(= (distance city19 city23) 950)
	(= (distance city19 city24) 889)
	(= (distance city19 city25) 945)
	(= (distance city19 city26) 793)
	(= (distance city19 city27) 975)
	(= (distance city19 city28) 502)
	(= (distance city19 city29) 971)
	(= (distance city20 city0) 557)
	(= (distance city20 city1) 715)
	(= (distance city20 city2) 870)
	(= (distance city20 city3) 539)
	(= (distance city20 city4) 664)
	(= (distance city20 city5) 544)
	(= (distance city20 city6) 614)
	(= (distance city20 city7) 574)
	(= (distance city20 city8) 568)
	(= (distance city20 city9) 944)
	(= (distance city20 city10) 544)
	(= (distance city20 city11) 766)
	(= (distance city20 city12) 814)
	(= (distance city20 city13) 878)
	(= (distance city20 city14) 787)
	(= (distance city20 city15) 949)
	(= (distance city20 city16) 806)
	(= (distance city20 city17) 623)
	(= (distance city20 city18) 842)
	(= (distance city20 city19) 678)
	(= (distance city20 city20) 0)
	(= (distance city20 city21) 598)
	(= (distance city20 city22) 995)
	(= (distance city20 city23) 757)
	(= (distance city20 city24) 581)
	(= (distance city20 city25) 751)
	(= (distance city20 city26) 910)
	(= (distance city20 city27) 513)
	(= (distance city20 city28) 751)
	(= (distance city20 city29) 809)
	(= (distance city21 city0) 618)
	(= (distance city21 city1) 838)
	(= (distance city21 city2) 800)
	(= (distance city21 city3) 651)
	(= (distance city21 city4) 677)
	(= (distance city21 city5) 828)
	(= (distance city21 city6) 851)
	(= (distance city21 city7) 630)
	(= (distance city21 city8) 759)
	(= (distance city21 city9) 833)
	(= (distance city21 city10) 675)
	(= (distance city21 city11) 652)
	(= (distance city21 city12) 517)
	(= (distance city21 city13) 539)
	(= (distance city21 city14) 635)
	(= (distance city21 city15) 744)
	(= (distance city21 city16) 944)
	(= (distance city21 city17) 992)
	(= (distance city21 city18) 844)
	(= (distance city21 city19) 864)
	(= (distance city21 city20) 598)
	(= (distance city21 city21) 0)
	(= (distance city21 city22) 934)
	(= (distance city21 city23) 553)
	(= (distance city21 city24) 652)
	(= (distance city21 city25) 779)
	(= (distance city21 city26) 723)
	(= (distance city21 city27) 857)
	(= (distance city21 city28) 801)
	(= (distance city21 city29) 581)
	(= (distance city22 city0) 922)
	(= (distance city22 city1) 901)
	(= (distance city22 city2) 790)
	(= (distance city22 city3) 667)
	(= (distance city22 city4) 865)
	(= (distance city22 city5) 785)
	(= (distance city22 city6) 594)
	(= (distance city22 city7) 566)
	(= (distance city22 city8) 510)
	(= (distance city22 city9) 680)
	(= (distance city22 city10) 687)
	(= (distance city22 city11) 618)
	(= (distance city22 city12) 934)
	(= (distance city22 city13) 556)
	(= (distance city22 city14) 826)
	(= (distance city22 city15) 746)
	(= (distance city22 city16) 636)
	(= (distance city22 city17) 785)
	(= (distance city22 city18) 670)
	(= (distance city22 city19) 853)
	(= (distance city22 city20) 995)
	(= (distance city22 city21) 934)
	(= (distance city22 city22) 0)
	(= (distance city22 city23) 534)
	(= (distance city22 city24) 843)
	(= (distance city22 city25) 747)
	(= (distance city22 city26) 655)
	(= (distance city22 city27) 521)
	(= (distance city22 city28) 611)
	(= (distance city22 city29) 508)
	(= (distance city23 city0) 571)
	(= (distance city23 city1) 772)
	(= (distance city23 city2) 562)
	(= (distance city23 city3) 597)
	(= (distance city23 city4) 508)
	(= (distance city23 city5) 684)
	(= (distance city23 city6) 533)
	(= (distance city23 city7) 635)
	(= (distance city23 city8) 702)
	(= (distance city23 city9) 602)
	(= (distance city23 city10) 976)
	(= (distance city23 city11) 950)
	(= (distance city23 city12) 572)
	(= (distance city23 city13) 697)
	(= (distance city23 city14) 860)
	(= (distance city23 city15) 988)
	(= (distance city23 city16) 698)
	(= (distance city23 city17) 983)
	(= (distance city23 city18) 705)
	(= (distance city23 city19) 950)
	(= (distance city23 city20) 757)
	(= (distance city23 city21) 553)
	(= (distance city23 city22) 534)
	(= (distance city23 city23) 0)
	(= (distance city23 city24) 972)
	(= (distance city23 city25) 501)
	(= (distance city23 city26) 953)
	(= (distance city23 city27) 766)
	(= (distance city23 city28) 976)
	(= (distance city23 city29) 956)
	(= (distance city24 city0) 742)
	(= (distance city24 city1) 957)
	(= (distance city24 city2) 516)
	(= (distance city24 city3) 783)
	(= (distance city24 city4) 915)
	(= (distance city24 city5) 556)
	(= (distance city24 city6) 851)
	(= (distance city24 city7) 751)
	(= (distance city24 city8) 980)
	(= (distance city24 city9) 992)
	(= (distance city24 city10) 949)
	(= (distance city24 city11) 576)
	(= (distance city24 city12) 935)
	(= (distance city24 city13) 934)
	(= (distance city24 city14) 570)
	(= (distance city24 city15) 801)
	(= (distance city24 city16) 732)
	(= (distance city24 city17) 755)
	(= (distance city24 city18) 522)
	(= (distance city24 city19) 889)
	(= (distance city24 city20) 581)
	(= (distance city24 city21) 652)
	(= (distance city24 city22) 843)
	(= (distance city24 city23) 972)
	(= (distance city24 city24) 0)
	(= (distance city24 city25) 738)
	(= (distance city24 city26) 574)
	(= (distance city24 city27) 951)
	(= (distance city24 city28) 995)
	(= (distance city24 city29) 656)
	(= (distance city25 city0) 844)
	(= (distance city25 city1) 823)
	(= (distance city25 city2) 629)
	(= (distance city25 city3) 537)
	(= (distance city25 city4) 776)
	(= (distance city25 city5) 548)
	(= (distance city25 city6) 598)
	(= (distance city25 city7) 535)
	(= (distance city25 city8) 808)
	(= (distance city25 city9) 977)
	(= (distance city25 city10) 741)
	(= (distance city25 city11) 818)
	(= (distance city25 city12) 733)
	(= (distance city25 city13) 567)
	(= (distance city25 city14) 560)
	(= (distance city25 city15) 943)
	(= (distance city25 city16) 772)
	(= (distance city25 city17) 653)
	(= (distance city25 city18) 858)
	(= (distance city25 city19) 945)
	(= (distance city25 city20) 751)
	(= (distance city25 city21) 779)
	(= (distance city25 city22) 747)
	(= (distance city25 city23) 501)
	(= (distance city25 city24) 738)
	(= (distance city25 city25) 0)
	(= (distance city25 city26) 702)
	(= (distance city25 city27) 906)
	(= (distance city25 city28) 669)
	(= (distance city25 city29) 954)
	(= (distance city26 city0) 723)
	(= (distance city26 city1) 844)
	(= (distance city26 city2) 964)
	(= (distance city26 city3) 898)
	(= (distance city26 city4) 548)
	(= (distance city26 city5) 552)
	(= (distance city26 city6) 528)
	(= (distance city26 city7) 621)
	(= (distance city26 city8) 565)
	(= (distance city26 city9) 920)
	(= (distance city26 city10) 660)
	(= (distance city26 city11) 894)
	(= (distance city26 city12) 604)
	(= (distance city26 city13) 918)
	(= (distance city26 city14) 964)
	(= (distance city26 city15) 923)
	(= (distance city26 city16) 525)
	(= (distance city26 city17) 932)
	(= (distance city26 city18) 676)
	(= (distance city26 city19) 793)
	(= (distance city26 city20) 910)
	(= (distance city26 city21) 723)
	(= (distance city26 city22) 655)
	(= (distance city26 city23) 953)
	(= (distance city26 city24) 574)
	(= (distance city26 city25) 702)
	(= (distance city26 city26) 0)
	(= (distance city26 city27) 716)
	(= (distance city26 city28) 604)
	(= (distance city26 city29) 507)
	(= (distance city27 city0) 771)
	(= (distance city27 city1) 699)
	(= (distance city27 city2) 789)
	(= (distance city27 city3) 574)
	(= (distance city27 city4) 567)
	(= (distance city27 city5) 720)
	(= (distance city27 city6) 660)
	(= (distance city27 city7) 954)
	(= (distance city27 city8) 844)
	(= (distance city27 city9) 794)
	(= (distance city27 city10) 758)
	(= (distance city27 city11) 510)
	(= (distance city27 city12) 764)
	(= (distance city27 city13) 753)
	(= (distance city27 city14) 834)
	(= (distance city27 city15) 868)
	(= (distance city27 city16) 592)
	(= (distance city27 city17) 500)
	(= (distance city27 city18) 541)
	(= (distance city27 city19) 975)
	(= (distance city27 city20) 513)
	(= (distance city27 city21) 857)
	(= (distance city27 city22) 521)
	(= (distance city27 city23) 766)
	(= (distance city27 city24) 951)
	(= (distance city27 city25) 906)
	(= (distance city27 city26) 716)
	(= (distance city27 city27) 0)
	(= (distance city27 city28) 868)
	(= (distance city27 city29) 883)
	(= (distance city28 city0) 545)
	(= (distance city28 city1) 667)
	(= (distance city28 city2) 586)
	(= (distance city28 city3) 600)
	(= (distance city28 city4) 944)
	(= (distance city28 city5) 726)
	(= (distance city28 city6) 643)
	(= (distance city28 city7) 965)
	(= (distance city28 city8) 801)
	(= (distance city28 city9) 632)
	(= (distance city28 city10) 917)
	(= (distance city28 city11) 721)
	(= (distance city28 city12) 977)
	(= (distance city28 city13) 820)
	(= (distance city28 city14) 537)
	(= (distance city28 city15) 862)
	(= (distance city28 city16) 843)
	(= (distance city28 city17) 899)
	(= (distance city28 city18) 665)
	(= (distance city28 city19) 502)
	(= (distance city28 city20) 751)
	(= (distance city28 city21) 801)
	(= (distance city28 city22) 611)
	(= (distance city28 city23) 976)
	(= (distance city28 city24) 995)
	(= (distance city28 city25) 669)
	(= (distance city28 city26) 604)
	(= (distance city28 city27) 868)
	(= (distance city28 city28) 0)
	(= (distance city28 city29) 730)
	(= (distance city29 city0) 830)
	(= (distance city29 city1) 567)
	(= (distance city29 city2) 787)
	(= (distance city29 city3) 915)
	(= (distance city29 city4) 646)
	(= (distance city29 city5) 917)
	(= (distance city29 city6) 857)
	(= (distance city29 city7) 735)
	(= (distance city29 city8) 707)
	(= (distance city29 city9) 684)
	(= (distance city29 city10) 798)
	(= (distance city29 city11) 819)
	(= (distance city29 city12) 970)
	(= (distance city29 city13) 608)
	(= (distance city29 city14) 935)
	(= (distance city29 city15) 677)
	(= (distance city29 city16) 585)
	(= (distance city29 city17) 921)
	(= (distance city29 city18) 620)
	(= (distance city29 city19) 971)
	(= (distance city29 city20) 809)
	(= (distance city29 city21) 581)
	(= (distance city29 city22) 508)
	(= (distance city29 city23) 956)
	(= (distance city29 city24) 656)
	(= (distance city29 city25) 954)
	(= (distance city29 city26) 507)
	(= (distance city29 city27) 883)
	(= (distance city29 city28) 730)
	(= (distance city29 city29) 0)
	(= (total-fuel-used) 0)
)
(:goal (and
	(at plane2 city22)
	(at person1 city15)
	(at person2 city16)
	(at person3 city0)
	(at person4 city0)
	(at person5 city26)
	(at person6 city16)
	(at person7 city0)
	(at person8 city3)
	(at person9 city24)
	(at person10 city14)
	(at person11 city1)
	(at person12 city15)
	(at person13 city9)
	(at person14 city3)
	(at person15 city1)
	(at person16 city11)
	(at person17 city16)
	(at person18 city23)
	(at person19 city16)
	(at person21 city1)
	(at person22 city5)
	(at person23 city2)
	(at person25 city1)
	(at person26 city5)
	(at person27 city8)
	(at person28 city18)
	(at person29 city12)
	(at person30 city1)
	(at person31 city21)
	(at person32 city27)
	(at person33 city5)
	(at person34 city16)
	(at person35 city1)
	(at person36 city16)
	(at person37 city18)
	(at person38 city7)
	(at person39 city17)
	(at person41 city11)
	(at person42 city10)
	(at person43 city26)
	(at person44 city8)
	(at person45 city21)
	(at person46 city5)
	(at person47 city3)
	(at person48 city0)
	(at person49 city20)
	(at person50 city20)
	(at person51 city17)
	(at person52 city14)
	(at person53 city15)
	(at person54 city23)
	(at person55 city16)
	(at person56 city23)
	(at person57 city20)
	(at person58 city17)
	(at person59 city0)
	(at person60 city12)
	))

(:metric minimize (+ (* 5 (total-time))  (* 2 (total-fuel-used))))
)
