(define (problem problem3)
   (:domain UM-Translog-2)
   (:requirements :typing :adl :equality :negative-preconditions :existential-preconditions :universal-preconditions :fluents)
   (:objects region0 region1 - region
          city0 city1 city2 city3 - city
          location0 location1 location2 location3 location4 location5 location6 location7 location8 location9 - location
          truck0 truck1 truck2 truck3 truck4 truck5 truck6 truck7 truck8 truck9 train0 train1 train2 train3 train4 airplane0 airplane1 airplane2 airplane3 airplane4 - vehicle
          plane_ramp0 plane_ramp1 - plane-ramp
          package0 package1 package2 package3 package4 - package
          road_route0 road_route1 road_route2 road_route3 road_route4 road_route5 road_route6 road_route7 road_route8 road_route9 road_route10 - route
          rail_route0 rail_route1 rail_route2 rail_route3 rail_route4 rail_route5 - route
          air_route0 - route
   )
   (:init (pv-compatible regularp regularv)
          (pv-compatible bulky flatbed)
          (pv-compatible liquid tanker)
          (pv-compatible cars auto)
          (pv-compatible regularp air)
          (pv-compatible mail air)
          (pv-compatible mail regularv)
          (pv-compatible granular hopper)
          (rv-compatible air-route airplane)
          (rv-compatible rail-route train)
          (rv-compatible road-route truck)

          (in-region city0 region1)
          (= (local-height city0) 16)
          (= (local-weight city0) 177)
          (in-region city1 region0)
          (= (local-height city1) 23)
          (= (local-weight city1) 280)
          (in-region city2 region1)
          (= (local-height city2) 17)
          (= (local-weight city2) 420)
          (in-region city3 region0)
          (= (local-height city3) 35)
          (= (local-weight city3) 290)
          (in-city location0 city0)
          (= (height-cap-l location0) 15)
          (= (length-cap-l location0) 37)
          (= (width-cap-l location0) 9)
          (= (volume-cap-l location0) 124)
          (in-city location1 city2)
          (= (height-cap-l location1) 13)
          (= (length-cap-l location1) 23)
          (= (width-cap-l location1) 18)
          (= (volume-cap-l location1) 462)
          (tcenter location1)
          (typel location1 train-station)
          (availablel location1)
          (hub location1)
          (in-city location2 city1)
          (= (height-cap-l location2) 30)
          (= (length-cap-l location2) 11)
          (= (width-cap-l location2) 15)
          (= (volume-cap-l location2) 300)
          (in-city location3 city2)
          (= (height-cap-l location3) 32)
          (= (length-cap-l location3) 25)
          (= (width-cap-l location3) 26)
          (= (volume-cap-l location3) 252)
          (tcenter location3)
          (typel location3 airport)
          (availablel location3)
          (in-city location4 city3)
          (= (height-cap-l location4) 35)
          (= (length-cap-l location4) 20)
          (= (width-cap-l location4) 16)
          (= (volume-cap-l location4) 380)
          (tcenter location4)
          (typel location4 train-station)
          (availablel location4)
          (hub location4)
          (in-city location5 city0)
          (= (height-cap-l location5) 19)
          (= (length-cap-l location5) 43)
          (= (width-cap-l location5) 17)
          (= (volume-cap-l location5) 474)
          (tcenter location5)
          (typel location5 train-station)
          (hub location5)
          (in-city location6 city2)
          (= (height-cap-l location6) 15)
          (= (length-cap-l location6) 12)
          (= (width-cap-l location6) 35)
          (= (volume-cap-l location6) 121)
          (in-city location7 city2)
          (= (height-cap-l location7) 20)
          (= (length-cap-l location7) 41)
          (= (width-cap-l location7) 17)
          (= (volume-cap-l location7) 420)
          (tcenter location7)
          (typel location7 airport)
          (availablel location7)
          (hub location7)
          (in-city location8 city1)
          (= (height-cap-l location8) 28)
          (= (length-cap-l location8) 47)
          (= (width-cap-l location8) 28)
          (= (volume-cap-l location8) 483)
          (in-city location9 city2)
          (= (height-cap-l location9) 11)
          (= (length-cap-l location9) 30)
          (= (width-cap-l location9) 32)
          (= (volume-cap-l location9) 528)
          (= (distance location0 location1) 15)
          (= (distance location1 location0) 15)
          (= (distance location0 location2) 41)
          (= (distance location2 location0) 41)
          (= (distance location0 location3) 53)
          (= (distance location3 location0) 53)
          (= (distance location0 location4) 59)
          (= (distance location4 location0) 59)
          (= (distance location0 location5) 37)
          (= (distance location5 location0) 37)
          (= (distance location0 location6) 9)
          (= (distance location6 location0) 9)
          (= (distance location0 location7) 7)
          (= (distance location7 location0) 7)
          (= (distance location0 location8) 7)
          (= (distance location8 location0) 7)
          (= (distance location0 location9) 14)
          (= (distance location9 location0) 14)
          (= (distance location0 location0) 0)
          (= (distance location1 location2) 53)
          (= (distance location2 location1) 53)
          (= (distance location1 location3) 63)
          (= (distance location3 location1) 63)
          (= (distance location1 location4) 52)
          (= (distance location4 location1) 52)
          (= (distance location1 location5) 27)
          (= (distance location5 location1) 27)
          (= (distance location1 location6) 37)
          (= (distance location6 location1) 37)
          (= (distance location1 location7) 20)
          (= (distance location7 location1) 20)
          (= (distance location1 location8) 29)
          (= (distance location8 location1) 29)
          (= (distance location1 location9) 44)
          (= (distance location9 location1) 44)
          (= (distance location1 location1) 0)
          (= (distance location2 location3) 26)
          (= (distance location3 location2) 26)
          (= (distance location2 location4) 3)
          (= (distance location4 location2) 3)
          (= (distance location2 location5) 12)
          (= (distance location5 location2) 12)
          (= (distance location2 location6) 2)
          (= (distance location6 location2) 2)
          (= (distance location2 location7) 1)
          (= (distance location7 location2) 1)
          (= (distance location2 location8) 11)
          (= (distance location8 location2) 11)
          (= (distance location2 location9) 10)
          (= (distance location9 location2) 10)
          (= (distance location2 location2) 0)
          (= (distance location3 location4) 39)
          (= (distance location4 location3) 39)
          (= (distance location3 location5) 23)
          (= (distance location5 location3) 23)
          (= (distance location3 location6) 23)
          (= (distance location6 location3) 23)
          (= (distance location3 location7) 45)
          (= (distance location7 location3) 45)
          (= (distance location3 location8) 5)
          (= (distance location8 location3) 5)
          (= (distance location3 location9) 64)
          (= (distance location9 location3) 64)
          (= (distance location3 location3) 0)
          (= (distance location4 location5) 46)
          (= (distance location5 location4) 46)
          (= (distance location4 location6) 37)
          (= (distance location6 location4) 37)
          (= (distance location4 location7) 21)
          (= (distance location7 location4) 21)
          (= (distance location4 location8) 36)
          (= (distance location8 location4) 36)
          (= (distance location4 location9) 48)
          (= (distance location9 location4) 48)
          (= (distance location4 location4) 0)
          (= (distance location5 location6) 23)
          (= (distance location6 location5) 23)
          (= (distance location5 location7) 53)
          (= (distance location7 location5) 53)
          (= (distance location5 location8) 38)
          (= (distance location8 location5) 38)
          (= (distance location5 location9) 0)
          (= (distance location9 location5) 0)
          (= (distance location5 location5) 0)
          (= (distance location6 location7) 14)
          (= (distance location7 location6) 14)
          (= (distance location6 location8) 63)
          (= (distance location8 location6) 63)
          (= (distance location6 location9) 29)
          (= (distance location9 location6) 29)
          (= (distance location6 location6) 0)
          (= (distance location7 location8) 45)
          (= (distance location8 location7) 45)
          (= (distance location7 location9) 50)
          (= (distance location9 location7) 50)
          (= (distance location7 location7) 0)
          (= (distance location8 location9) 1)
          (= (distance location9 location8) 1)
          (= (distance location8 location8) 0)
          (= (distance location9 location9) 0)
          (typev truck0 auto)
          (typevp truck0 truck)
          (at-vehicle truck0 location0)
          (= (gas-left truck0) 120)
          (= (gpm truck0) 1)
          (= (length-v truck0) 15)
          (= (height-v truck0) 8)
          (= (width-v truck0) 9)
          (= (weight-cap-v truck0) 79)
          (= (volume-cap-v truck0) 756)
          (= (weight-load-v truck0) 0)
          (= (volume-load-v truck0) 0)
          (= (weight-v truck0) 10)
          (availablev truck0)
          (typev truck1 auto)
          (typevp truck1 truck)
          (at-vehicle truck1 location2)
          (= (gas-left truck1) 302)
          (= (gpm truck1) 1)
          (= (length-v truck1) 11)
          (= (height-v truck1) 4)
          (= (width-v truck1) 7)
          (= (weight-cap-v truck1) 146)
          (= (volume-cap-v truck1) 215)
          (= (weight-load-v truck1) 0)
          (= (volume-load-v truck1) 0)
          (= (weight-v truck1) 36)
          (availablev truck1)
          (typev truck2 auto)
          (typevp truck2 truck)
          (at-vehicle truck2 location0)
          (= (gas-left truck2) 183)
          (= (gpm truck2) 2)
          (= (length-v truck2) 14)
          (= (height-v truck2) 9)
          (= (width-v truck2) 7)
          (= (weight-cap-v truck2) 459)
          (= (volume-cap-v truck2) 617)
          (= (weight-load-v truck2) 0)
          (= (volume-load-v truck2) 0)
          (= (weight-v truck2) 19)
          (availablev truck2)
          (typev truck3 auto)
          (typevp truck3 truck)
          (at-vehicle truck3 location8)
          (= (gas-left truck3) 201)
          (= (gpm truck3) 1)
          (= (length-v truck3) 13)
          (= (height-v truck3) 2)
          (= (width-v truck3) 2)
          (= (weight-cap-v truck3) 462)
          (= (volume-cap-v truck3) 52)
          (= (weight-load-v truck3) 0)
          (= (volume-load-v truck3) 0)
          (= (weight-v truck3) 19)
          (availablev truck3)
          (typev truck4 auto)
          (typevp truck4 truck)
          (at-vehicle truck4 location7)
          (= (gas-left truck4) 269)
          (= (gpm truck4) 1)
          (= (length-v truck4) 10)
          (= (height-v truck4) 4)
          (= (width-v truck4) 8)
          (= (weight-cap-v truck4) 320)
          (= (volume-cap-v truck4) 264)
          (= (weight-load-v truck4) 0)
          (= (volume-load-v truck4) 0)
          (= (weight-v truck4) 22)
          (availablev truck4)
          (typev truck5 auto)
          (typevp truck5 truck)
          (at-vehicle truck5 location9)
          (= (gas-left truck5) 458)
          (= (gpm truck5) 1)
          (= (length-v truck5) 7)
          (= (height-v truck5) 2)
          (= (width-v truck5) 3)
          (= (weight-cap-v truck5) 313)
          (= (volume-cap-v truck5) 42)
          (= (weight-load-v truck5) 0)
          (= (volume-load-v truck5) 0)
          (= (weight-v truck5) 19)
          (availablev truck5)
          (typev truck6 auto)
          (typevp truck6 truck)
          (at-vehicle truck6 location0)
          (= (gas-left truck6) 354)
          (= (gpm truck6) 2)
          (= (length-v truck6) 14)
          (= (height-v truck6) 8)
          (= (width-v truck6) 6)
          (= (weight-cap-v truck6) 382)
          (= (volume-cap-v truck6) 470)
          (= (weight-load-v truck6) 0)
          (= (volume-load-v truck6) 0)
          (= (weight-v truck6) 39)
          (availablev truck6)
          (typev truck7 auto)
          (typevp truck7 truck)
          (at-vehicle truck7 location7)
          (= (gas-left truck7) 230)
          (= (gpm truck7) 2)
          (= (length-v truck7) 5)
          (= (height-v truck7) 8)
          (= (width-v truck7) 5)
          (= (weight-cap-v truck7) 111)
          (= (volume-cap-v truck7) 169)
          (= (weight-load-v truck7) 0)
          (= (volume-load-v truck7) 0)
          (= (weight-v truck7) 13)
          (availablev truck7)
          (typev truck8 auto)
          (typevp truck8 truck)
          (at-vehicle truck8 location1)
          (= (gas-left truck8) 516)
          (= (gpm truck8) 3)
          (= (length-v truck8) 17)
          (= (height-v truck8) 1)
          (= (width-v truck8) 2)
          (= (weight-cap-v truck8) 497)
          (= (volume-cap-v truck8) 34)
          (= (weight-load-v truck8) 0)
          (= (volume-load-v truck8) 0)
          (= (weight-v truck8) 32)
          (availablev truck8)
          (typev truck9 auto)
          (typevp truck9 truck)
          (at-vehicle truck9 location8)
          (= (gas-left truck9) 256)
          (= (gpm truck9) 3)
          (= (length-v truck9) 19)
          (= (height-v truck9) 1)
          (= (width-v truck9) 9)
          (= (weight-cap-v truck9) 396)
          (= (volume-cap-v truck9) 171)
          (= (weight-load-v truck9) 0)
          (= (volume-load-v truck9) 0)
          (= (weight-v truck9) 20)
          (availablev truck9)
          (typev train0 auto)
          (typevp train0 train)
          (at-vehicle train0 location5)
          (= (gas-left train0) 345)
          (= (gpm train0) 3)
          (= (length-v train0) 18)
          (= (height-v train0) 10)
          (= (width-v train0) 5)
          (= (weight-cap-v train0) 438)
          (= (volume-cap-v train0) 630)
          (= (weight-load-v train0) 0)
          (= (volume-load-v train0) 0)
          (= (weight-v train0) 21)
          (availablev train0)
          (typev train1 auto)
          (typevp train1 train)
          (at-vehicle train1 location5)
          (= (gas-left train1) 523)
          (= (gpm train1) 1)
          (= (length-v train1) 17)
          (= (height-v train1) 1)
          (= (width-v train1) 1)
          (= (weight-cap-v train1) 331)
          (= (volume-cap-v train1) 17)
          (= (weight-load-v train1) 0)
          (= (volume-load-v train1) 0)
          (= (weight-v train1) 34)
          (availablev train1)
          (typev train2 auto)
          (typevp train2 train)
          (at-vehicle train2 location5)
          (= (gas-left train2) 242)
          (= (gpm train2) 2)
          (= (length-v train2) 7)
          (= (height-v train2) 4)
          (= (width-v train2) 9)
          (= (weight-cap-v train2) 54)
          (= (volume-cap-v train2) 176)
          (= (weight-load-v train2) 0)
          (= (volume-load-v train2) 0)
          (= (weight-v train2) 28)
          (availablev train2)
          (typev train3 auto)
          (typevp train3 train)
          (at-vehicle train3 location5)
          (= (gas-left train3) 426)
          (= (gpm train3) 1)
          (= (length-v train3) 18)
          (= (height-v train3) 6)
          (= (width-v train3) 1)
          (= (weight-cap-v train3) 183)
          (= (volume-cap-v train3) 75)
          (= (weight-load-v train3) 0)
          (= (volume-load-v train3) 0)
          (= (weight-v train3) 12)
          (availablev train3)
          (typev train4 auto)
          (typevp train4 train)
          (at-vehicle train4 location1)
          (= (gas-left train4) 240)
          (= (gpm train4) 1)
          (= (length-v train4) 9)
          (= (height-v train4) 10)
          (= (width-v train4) 5)
          (= (weight-cap-v train4) 387)
          (= (volume-cap-v train4) 315)
          (= (weight-load-v train4) 0)
          (= (volume-load-v train4) 0)
          (= (weight-v train4) 30)
          (availablev train4)
          (typev airplane0 air)
          (typevp airplane0 airplane)
          (at-vehicle airplane0 location3)
          (= (gas-left airplane0) 197)
          (= (gpm airplane0) 3)
          (= (length-v airplane0) 12)
          (= (height-v airplane0) 1)
          (= (width-v airplane0) 5)
          (= (weight-cap-v airplane0) 76)
          (= (volume-cap-v airplane0) 60)
          (= (weight-load-v airplane0) 0)
          (= (volume-load-v airplane0) 0)
          (= (weight-v airplane0) 22)
          (availablev airplane0)
          (typev airplane1 air)
          (typevp airplane1 airplane)
          (at-vehicle airplane1 location3)
          (= (gas-left airplane1) 442)
          (= (gpm airplane1) 3)
          (= (length-v airplane1) 12)
          (= (height-v airplane1) 8)
          (= (width-v airplane1) 2)
          (= (weight-cap-v airplane1) 112)
          (= (volume-cap-v airplane1) 192)
          (= (weight-load-v airplane1) 0)
          (= (volume-load-v airplane1) 0)
          (= (weight-v airplane1) 17)
          (availablev airplane1)
          (typev airplane2 air)
          (typevp airplane2 airplane)
          (at-vehicle airplane2 location3)
          (= (gas-left airplane2) 286)
          (= (gpm airplane2) 3)
          (= (length-v airplane2) 14)
          (= (height-v airplane2) 3)
          (= (width-v airplane2) 2)
          (= (weight-cap-v airplane2) 498)
          (= (volume-cap-v airplane2) 84)
          (= (weight-load-v airplane2) 0)
          (= (volume-load-v airplane2) 0)
          (= (weight-v airplane2) 24)
          (availablev airplane2)
          (typev airplane3 air)
          (typevp airplane3 airplane)
          (at-vehicle airplane3 location7)
          (= (gas-left airplane3) 195)
          (= (gpm airplane3) 3)
          (= (length-v airplane3) 18)
          (= (height-v airplane3) 3)
          (= (width-v airplane3) 6)
          (= (weight-cap-v airplane3) 328)
          (= (volume-cap-v airplane3) 324)
          (= (weight-load-v airplane3) 0)
          (= (volume-load-v airplane3) 0)
          (= (weight-v airplane3) 11)
          (availablev airplane3)
          (typev airplane4 air)
          (typevp airplane4 airplane)
          (at-vehicle airplane4 location7)
          (= (gas-left airplane4) 193)
          (= (gpm airplane4) 2)
          (= (length-v airplane4) 5)
          (= (height-v airplane4) 3)
          (= (width-v airplane4) 8)
          (= (weight-cap-v airplane4) 295)
          (= (volume-cap-v airplane4) 120)
          (= (weight-load-v airplane4) 0)
          (= (volume-load-v airplane4) 0)
          (= (weight-v airplane4) 18)
          (availablev airplane4)
          (at-equipment plane_ramp0 location3)
          (at-equipment plane_ramp1 location7)
          (typep package0 cars)
          (at-packagel package0 location0)
          (= (volume-p package0) 11)
          (= (weight-p package0) 7)
          (typep package1 cars)
          (at-packagel package1 location3)
          (= (volume-p package1) 10)
          (= (weight-p package1) 10)
          (typep package2 cars)
          (at-packagel package2 location0)
          (= (volume-p package2) 13)
          (= (weight-p package2) 21)
          (typep package3 cars)
          (at-packagel package3 location5)
          (= (volume-p package3) 9)
          (= (weight-p package3) 12)
          (typep package4 cars)
          (at-packagel package4 location4)
          (= (volume-p package4) 8)
          (= (weight-p package4) 20)
          (connect-city road_route0 road-route city0 city1)
          (= (height-cap-r road_route0) 18)
          (= (weight-cap-r road_route0) 461)
          (availabler road_route0)
          (connect-city road_route1 road-route city0 city2)
          (= (height-cap-r road_route1) 8)
          (= (weight-cap-r road_route1) 79)
          (availabler road_route1)
          (connect-city road_route2 road-route city0 city3)
          (= (height-cap-r road_route2) 34)
          (= (weight-cap-r road_route2) 535)
          (availabler road_route2)
          (connect-city road_route3 road-route city1 city0)
          (= (height-cap-r road_route3) 11)
          (= (weight-cap-r road_route3) 111)
          (availabler road_route3)
          (connect-city road_route4 road-route city1 city2)
          (= (height-cap-r road_route4) 23)
          (= (weight-cap-r road_route4) 122)
          (availabler road_route4)
          (connect-city road_route5 road-route city2 city0)
          (= (height-cap-r road_route5) 18)
          (= (weight-cap-r road_route5) 520)
          (availabler road_route5)
          (connect-city road_route6 road-route city2 city1)
          (= (height-cap-r road_route6) 8)
          (= (weight-cap-r road_route6) 455)
          (availabler road_route6)
          (connect-city road_route7 road-route city2 city3)
          (= (height-cap-r road_route7) 33)
          (= (weight-cap-r road_route7) 103)
          (availabler road_route7)
          (connect-city road_route8 road-route city3 city0)
          (= (height-cap-r road_route8) 19)
          (= (weight-cap-r road_route8) 424)
          (availabler road_route8)
          (connect-city road_route9 road-route city3 city1)
          (= (height-cap-r road_route9) 29)
          (= (weight-cap-r road_route9) 339)
          (availabler road_route9)
          (connect-city road_route10 road-route city3 city2)
          (= (height-cap-r road_route10) 24)
          (= (weight-cap-r road_route10) 379)
          (availabler road_route10)
          (connect-loc rail_route0 rail-route location1 location4)
          (= (height-cap-r rail_route0) 34)
          (= (weight-cap-r rail_route0) 385)
          (serves location1 region0)
          (serves location4 region1)
          (availabler rail_route0)
          (connect-loc rail_route1 rail-route location1 location5)
          (= (height-cap-r rail_route1) 7)
          (= (weight-cap-r rail_route1) 524)
          (serves location1 region1)
          (serves location5 region1)
          (availabler rail_route1)
          (connect-loc rail_route2 rail-route location4 location1)
          (= (height-cap-r rail_route2) 32)
          (= (weight-cap-r rail_route2) 370)
          (availabler rail_route2)
          (connect-loc rail_route3 rail-route location4 location5)
          (= (height-cap-r rail_route3) 18)
          (= (weight-cap-r rail_route3) 59)
          (serves location5 region0)
          (availabler rail_route3)
          (connect-loc rail_route4 rail-route location5 location1)
          (= (height-cap-r rail_route4) 17)
          (= (weight-cap-r rail_route4) 260)
          (availabler rail_route4)
          (connect-loc rail_route5 rail-route location5 location4)
          (= (height-cap-r rail_route5) 25)
          (= (weight-cap-r rail_route5) 296)
          (availabler rail_route5)
          (connect-loc air_route0 air-route location7 location3)
          (= (height-cap-r air_route0) 14)
          (= (weight-cap-r air_route0) 218)
          (serves location7 region1)
          (availabler air_route0)
          (= (volume-load-l location0) 24)
          (= (volume-load-l location1) 0)
          (= (volume-load-l location2) 0)
          (= (volume-load-l location3) 10)
          (= (volume-load-l location4) 8)
          (= (volume-load-l location5) 9)
          (= (volume-load-l location6) 0)
          (= (volume-load-l location7) 0)
          (= (volume-load-l location8) 0)
          (= (volume-load-l location9) 0)
   )

   (:goal (and (delivered package0 location7)
               (delivered package1 location4)
               (delivered package2 location0)
               (delivered package3 location9)
               (delivered package4 location7)
               (clear)))

)