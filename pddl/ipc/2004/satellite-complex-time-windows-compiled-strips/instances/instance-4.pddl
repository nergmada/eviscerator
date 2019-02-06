(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	instrument0 - instrument
	instrument1 - instrument
	instrument2 - instrument
	infrared0 - mode
	infrared1 - mode
	thermograph2 - mode
	GroundStation1 - direction
	Star0 - direction
	Star2 - direction
	Planet3 - direction
	Star4 - direction
	Planet5 - direction
	Star6 - direction
	Star7 - direction
	Phenomenon8 - direction
	Phenomenon9 - direction
)
(:init
        (= (image-utility planet5 thermograph2 window0) 34.71)
        (= (image-utility planet5 thermograph2 window1) 35.22)
        (= (image-utility phenomenon8 thermograph2 window0) 11.00)
        (= (image-utility phenomenon8 thermograph2 window1) 30.22)
        (= (image-utility star7 infrared0 window0) 13.86)
        (= (image-utility star7 infrared0 window1) 28.73)
        (= (image-utility phenomenon9 infrared0 window0) 39.94)
        (= (image-utility phenomenon9 infrared0 window1) 39.94)
        (= (image-utility star4 infrared1 window0) 33.75)
        (= (image-utility star4 infrared1 window1) 19.98)
        (= (image-utility star6 infrared1 window0) 33.76)
        (= (image-utility star6 infrared1 window1) 18.76)
        (= (image-utility planet3 infrared1 window0) 27.40)
        (= (image-utility planet3 infrared1 window1) 21.00)
	(supports instrument0 thermograph2)
	(supports instrument0 infrared0)
	(calibration_target instrument0 Star0)
	(= (calibration_time instrument0 Star0) 65.8)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Star6)
	(= (data_capacity satellite0) 1000)
	(supports instrument1 infrared0)
	(supports instrument1 thermograph2)
	(supports instrument1 infrared1)
	(calibration_target instrument1 Star2)
	(= (calibration_time instrument1 Star2) 52.4)
	(supports instrument2 thermograph2)
	(supports instrument2 infrared1)
	(calibration_target instrument2 Star2)
	(= (calibration_time instrument2 Star2) 72.1)
	(on_board instrument1 satellite1)
	(on_board instrument2 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Star0)
	(= (data_capacity satellite1) 1000)
	(= (data Planet3 infrared0) 140)
	(= (data Star4 infrared0) 18)
	(= (data Planet5 infrared0) 79)
	(= (data Star6 infrared0) 176)
	(= (data Star7 infrared0) 240)
	(= (data Phenomenon8 infrared0) 62)
	(= (data Phenomenon9 infrared0) 245)
	(= (data Planet3 infrared1) 8)
	(= (data Star4 infrared1) 236)
	(= (data Planet5 infrared1) 57)
	(= (data Star6 infrared1) 179)
	(= (data Star7 infrared1) 54)
	(= (data Phenomenon8 infrared1) 100)
	(= (data Phenomenon9 infrared1) 212)
	(= (data Planet3 thermograph2) 64)
	(= (data Star4 thermograph2) 184)
	(= (data Planet5 thermograph2) 246)
	(= (data Star6 thermograph2) 99)
	(= (data Star7 thermograph2) 68)
	(= (data Phenomenon8 thermograph2) 79)
	(= (data Phenomenon9 thermograph2) 292)
	(= (slew_time GroundStation1 Star0) 6.492)
	(= (slew_time Star0 GroundStation1) 6.492)
	(= (slew_time Star2 Star0) 5.395)
	(= (slew_time Star0 Star2) 5.395)
	(= (slew_time Star2 GroundStation1) 19.93)
	(= (slew_time GroundStation1 Star2) 19.93)
	(= (slew_time Planet3 Star0) 18.76)
	(= (slew_time Star0 Planet3) 18.76)
	(= (slew_time Planet3 GroundStation1) 50.04)
	(= (slew_time GroundStation1 Planet3) 50.04)
	(= (slew_time Planet3 Star2) 20.45)
	(= (slew_time Star2 Planet3) 20.45)
	(= (slew_time Star4 Star0) 44.64)
	(= (slew_time Star0 Star4) 44.64)
	(= (slew_time Star4 GroundStation1) 48.47)
	(= (slew_time GroundStation1 Star4) 48.47)
	(= (slew_time Star4 Star2) 28.13)
	(= (slew_time Star2 Star4) 28.13)
	(= (slew_time Star4 Planet3) 49.6)
	(= (slew_time Planet3 Star4) 49.6)
	(= (slew_time Planet5 Star0) 46.82)
	(= (slew_time Star0 Planet5) 46.82)
	(= (slew_time Planet5 GroundStation1) 36.81)
	(= (slew_time GroundStation1 Planet5) 36.81)
	(= (slew_time Planet5 Star2) 0.1683)
	(= (slew_time Star2 Planet5) 0.1683)
	(= (slew_time Planet5 Planet3) 40.46)
	(= (slew_time Planet3 Planet5) 40.46)
	(= (slew_time Planet5 Star4) 65.74)
	(= (slew_time Star4 Planet5) 65.74)
	(= (slew_time Star6 Star0) 44.79)
	(= (slew_time Star0 Star6) 44.79)
	(= (slew_time Star6 GroundStation1) 9.513)
	(= (slew_time GroundStation1 Star6) 9.513)
	(= (slew_time Star6 Star2) 9.543)
	(= (slew_time Star2 Star6) 9.543)
	(= (slew_time Star6 Planet3) 12.7)
	(= (slew_time Planet3 Star6) 12.7)
	(= (slew_time Star6 Star4) 12.41)
	(= (slew_time Star4 Star6) 12.41)
	(= (slew_time Star6 Planet5) 71.12)
	(= (slew_time Planet5 Star6) 71.12)
	(= (slew_time Star7 Star0) 12.11)
	(= (slew_time Star0 Star7) 12.11)
	(= (slew_time Star7 GroundStation1) 21.45)
	(= (slew_time GroundStation1 Star7) 21.45)
	(= (slew_time Star7 Star2) 13.72)
	(= (slew_time Star2 Star7) 13.72)
	(= (slew_time Star7 Planet3) 3.892)
	(= (slew_time Planet3 Star7) 3.892)
	(= (slew_time Star7 Star4) 7.686)
	(= (slew_time Star4 Star7) 7.686)
	(= (slew_time Star7 Planet5) 14.44)
	(= (slew_time Planet5 Star7) 14.44)
	(= (slew_time Star7 Star6) 66.31)
	(= (slew_time Star6 Star7) 66.31)
	(= (slew_time Phenomenon8 Star0) 2.077)
	(= (slew_time Star0 Phenomenon8) 2.077)
	(= (slew_time Phenomenon8 GroundStation1) 25.92)
	(= (slew_time GroundStation1 Phenomenon8) 25.92)
	(= (slew_time Phenomenon8 Star2) 1.913)
	(= (slew_time Star2 Phenomenon8) 1.913)
	(= (slew_time Phenomenon8 Planet3) 52.31)
	(= (slew_time Planet3 Phenomenon8) 52.31)
	(= (slew_time Phenomenon8 Star4) 14.09)
	(= (slew_time Star4 Phenomenon8) 14.09)
	(= (slew_time Phenomenon8 Planet5) 12.9)
	(= (slew_time Planet5 Phenomenon8) 12.9)
	(= (slew_time Phenomenon8 Star6) 25.07)
	(= (slew_time Star6 Phenomenon8) 25.07)
	(= (slew_time Phenomenon8 Star7) 4.865)
	(= (slew_time Star7 Phenomenon8) 4.865)
	(= (slew_time Phenomenon9 Star0) 10.01)
	(= (slew_time Star0 Phenomenon9) 10.01)
	(= (slew_time Phenomenon9 GroundStation1) 21.7)
	(= (slew_time GroundStation1 Phenomenon9) 21.7)
	(= (slew_time Phenomenon9 Star2) 4.182)
	(= (slew_time Star2 Phenomenon9) 4.182)
	(= (slew_time Phenomenon9 Planet3) 2.509)
	(= (slew_time Planet3 Phenomenon9) 2.509)
	(= (slew_time Phenomenon9 Star4) 81.97)
	(= (slew_time Star4 Phenomenon9) 81.97)
	(= (slew_time Phenomenon9 Planet5) 33.18)
	(= (slew_time Planet5 Phenomenon9) 33.18)
	(= (slew_time Phenomenon9 Star6) 65.63)
	(= (slew_time Star6 Phenomenon9) 65.63)
	(= (slew_time Phenomenon9 Star7) 85.25)
	(= (slew_time Star7 Phenomenon9) 85.25)
	(= (slew_time Phenomenon9 Phenomenon8) 65.52)
	(= (slew_time Phenomenon8 Phenomenon9) 65.52)
	(= (data-stored) 0)

        (= (send_time planet5 thermograph2) 6.38)
        (= (send_time phenomenon8 thermograph2) 13.13)
        (= (send_time star7 infrared0) 10.22)
        (= (send_time phenomenon9 infrared0) 18.25)
        (= (send_time star4 infrared1) 13.21)
        (= (send_time star6 infrared1) 12.73)
        (= (send_time planet3 infrared1) 16.47)

        (available window0)
        (available window1)

        (= (overall-image-utility) 0)

        (TLstart)
)
(:goal (and
	(pointing satellite1 Planet5)
	(sent_image Planet3 infrared1)
	(sent_image Star4 infrared1)
	(sent_image Planet5 thermograph2)
	(sent_image Star6 infrared1)
	(sent_image Star7 infrared0)
	(sent_image Phenomenon8 thermograph2)
	(sent_image Phenomenon9 infrared0)
        (TLend)
))
(:metric minimize (- (* 3 (total-time)) (* 9 (overall-image-utility))))

)
