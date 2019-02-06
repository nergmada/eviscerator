(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	instrument1 - instrument
	instrument2 - instrument
	satellite1 - satellite
	instrument3 - instrument
	instrument4 - instrument
	instrument5 - instrument
	satellite2 - satellite
	instrument6 - instrument
	instrument7 - instrument
	instrument8 - instrument
	thermograph0 - mode
	image2 - mode
	spectrograph1 - mode
	GroundStation2 - direction
	GroundStation1 - direction
	GroundStation0 - direction
	Star3 - direction
	Star4 - direction
	Phenomenon5 - direction
	Phenomenon6 - direction
	Star7 - direction
	Phenomenon8 - direction
	Planet9 - direction
)
(:init
	(supports instrument0 image2)
	(supports instrument0 thermograph0)
	(supports instrument0 spectrograph1)
	(calibration_target instrument0 GroundStation2)
	(= (calibration_time instrument0 GroundStation2) 85)
	(supports instrument1 thermograph0)
	(supports instrument1 spectrograph1)
	(supports instrument1 image2)
	(calibration_target instrument1 GroundStation1)
	(= (calibration_time instrument1 GroundStation1) 53.5)
	(supports instrument2 image2)
	(calibration_target instrument2 GroundStation0)
	(= (calibration_time instrument2 GroundStation0) 60.4)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(on_board instrument2 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Phenomenon8)
	(= (data_capacity satellite0) 1000)
	(supports instrument3 spectrograph1)
	(supports instrument3 thermograph0)
	(calibration_target instrument3 GroundStation0)
	(= (calibration_time instrument3 GroundStation0) 4.65)
	(supports instrument4 image2)
	(supports instrument4 spectrograph1)
	(calibration_target instrument4 GroundStation2)
	(= (calibration_time instrument4 GroundStation2) 44.6)
	(supports instrument5 image2)
	(supports instrument5 spectrograph1)
	(supports instrument5 thermograph0)
	(calibration_target instrument5 GroundStation1)
	(= (calibration_time instrument5 GroundStation1) 63.9)
	(on_board instrument3 satellite1)
	(on_board instrument4 satellite1)
	(on_board instrument5 satellite1)
	(power_avail satellite1)
	(pointing satellite1 GroundStation2)
	(= (data_capacity satellite1) 1000)
	(supports instrument6 image2)
	(calibration_target instrument6 GroundStation1)
	(= (calibration_time instrument6 GroundStation1) 96.1)
	(supports instrument7 image2)
	(supports instrument7 thermograph0)
	(calibration_target instrument7 GroundStation1)
	(= (calibration_time instrument7 GroundStation1) 28.7)
	(supports instrument8 spectrograph1)
	(supports instrument8 image2)
	(supports instrument8 thermograph0)
	(calibration_target instrument8 GroundStation0)
	(= (calibration_time instrument8 GroundStation0) 53.6)
	(on_board instrument6 satellite2)
	(on_board instrument7 satellite2)
	(on_board instrument8 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Phenomenon5)
	(= (data_capacity satellite2) 1000)
	(= (data Star3 thermograph0) 243)
	(= (data Star4 thermograph0) 143)
	(= (data Phenomenon5 thermograph0) 162)
	(= (data Phenomenon6 thermograph0) 219)
	(= (data Star7 thermograph0) 227)
	(= (data Phenomenon8 thermograph0) 266)
	(= (data Planet9 thermograph0) 191)
	(= (data Star3 image2) 259)
	(= (data Star4 image2) 111)
	(= (data Phenomenon5 image2) 28)
	(= (data Phenomenon6 image2) 287)
	(= (data Star7 image2) 156)
	(= (data Phenomenon8 image2) 273)
	(= (data Planet9 image2) 241)
	(= (data Star3 spectrograph1) 227)
	(= (data Star4 spectrograph1) 295)
	(= (data Phenomenon5 spectrograph1) 90)
	(= (data Phenomenon6 spectrograph1) 56)
	(= (data Star7 spectrograph1) 204)
	(= (data Phenomenon8 spectrograph1) 141)
	(= (data Planet9 spectrograph1) 30)
	(= (slew_time GroundStation2 GroundStation0) 18.86)
	(= (slew_time GroundStation0 GroundStation2) 18.86)
	(= (slew_time GroundStation2 GroundStation1) 34.96)
	(= (slew_time GroundStation1 GroundStation2) 34.96)
	(= (slew_time GroundStation1 GroundStation0) 40.62)
	(= (slew_time GroundStation0 GroundStation1) 40.62)
	(= (slew_time Star3 GroundStation0) 36.06)
	(= (slew_time GroundStation0 Star3) 36.06)
	(= (slew_time Star3 GroundStation1) 25.22)
	(= (slew_time GroundStation1 Star3) 25.22)
	(= (slew_time Star3 GroundStation2) 18.48)
	(= (slew_time GroundStation2 Star3) 18.48)
	(= (slew_time Star4 GroundStation0) 24.93)
	(= (slew_time GroundStation0 Star4) 24.93)
	(= (slew_time Star4 GroundStation1) 10.73)
	(= (slew_time GroundStation1 Star4) 10.73)
	(= (slew_time Star4 GroundStation2) 5.657)
	(= (slew_time GroundStation2 Star4) 5.657)
	(= (slew_time Star4 Star3) 42.59)
	(= (slew_time Star3 Star4) 42.59)
	(= (slew_time Phenomenon5 GroundStation0) 14.42)
	(= (slew_time GroundStation0 Phenomenon5) 14.42)
	(= (slew_time Phenomenon5 GroundStation1) 85.8)
	(= (slew_time GroundStation1 Phenomenon5) 85.8)
	(= (slew_time Phenomenon5 GroundStation2) 22.02)
	(= (slew_time GroundStation2 Phenomenon5) 22.02)
	(= (slew_time Phenomenon5 Star3) 75)
	(= (slew_time Star3 Phenomenon5) 75)
	(= (slew_time Phenomenon5 Star4) 46.06)
	(= (slew_time Star4 Phenomenon5) 46.06)
	(= (slew_time Phenomenon6 GroundStation0) 13.89)
	(= (slew_time GroundStation0 Phenomenon6) 13.89)
	(= (slew_time Phenomenon6 GroundStation1) 22.65)
	(= (slew_time GroundStation1 Phenomenon6) 22.65)
	(= (slew_time Phenomenon6 GroundStation2) 15.22)
	(= (slew_time GroundStation2 Phenomenon6) 15.22)
	(= (slew_time Phenomenon6 Star3) 31.49)
	(= (slew_time Star3 Phenomenon6) 31.49)
	(= (slew_time Phenomenon6 Star4) 19.53)
	(= (slew_time Star4 Phenomenon6) 19.53)
	(= (slew_time Phenomenon6 Phenomenon5) 40.12)
	(= (slew_time Phenomenon5 Phenomenon6) 40.12)
	(= (slew_time Star7 GroundStation0) 6.096)
	(= (slew_time GroundStation0 Star7) 6.096)
	(= (slew_time Star7 GroundStation1) 52.9)
	(= (slew_time GroundStation1 Star7) 52.9)
	(= (slew_time Star7 GroundStation2) 21.27)
	(= (slew_time GroundStation2 Star7) 21.27)
	(= (slew_time Star7 Star3) 25.54)
	(= (slew_time Star3 Star7) 25.54)
	(= (slew_time Star7 Star4) 64.46)
	(= (slew_time Star4 Star7) 64.46)
	(= (slew_time Star7 Phenomenon5) 72.01)
	(= (slew_time Phenomenon5 Star7) 72.01)
	(= (slew_time Star7 Phenomenon6) 15.45)
	(= (slew_time Phenomenon6 Star7) 15.45)
	(= (slew_time Phenomenon8 GroundStation0) 80.35)
	(= (slew_time GroundStation0 Phenomenon8) 80.35)
	(= (slew_time Phenomenon8 GroundStation1) 36.26)
	(= (slew_time GroundStation1 Phenomenon8) 36.26)
	(= (slew_time Phenomenon8 GroundStation2) 16.34)
	(= (slew_time GroundStation2 Phenomenon8) 16.34)
	(= (slew_time Phenomenon8 Star3) 2.598)
	(= (slew_time Star3 Phenomenon8) 2.598)
	(= (slew_time Phenomenon8 Star4) 30.65)
	(= (slew_time Star4 Phenomenon8) 30.65)
	(= (slew_time Phenomenon8 Phenomenon5) 35.27)
	(= (slew_time Phenomenon5 Phenomenon8) 35.27)
	(= (slew_time Phenomenon8 Phenomenon6) 37.31)
	(= (slew_time Phenomenon6 Phenomenon8) 37.31)
	(= (slew_time Phenomenon8 Star7) 7.013)
	(= (slew_time Star7 Phenomenon8) 7.013)
	(= (slew_time Planet9 GroundStation0) 19.76)
	(= (slew_time GroundStation0 Planet9) 19.76)
	(= (slew_time Planet9 GroundStation1) 61.54)
	(= (slew_time GroundStation1 Planet9) 61.54)
	(= (slew_time Planet9 GroundStation2) 17.61)
	(= (slew_time GroundStation2 Planet9) 17.61)
	(= (slew_time Planet9 Star3) 19.42)
	(= (slew_time Star3 Planet9) 19.42)
	(= (slew_time Planet9 Star4) 34.09)
	(= (slew_time Star4 Planet9) 34.09)
	(= (slew_time Planet9 Phenomenon5) 19.98)
	(= (slew_time Phenomenon5 Planet9) 19.98)
	(= (slew_time Planet9 Phenomenon6) 11.83)
	(= (slew_time Phenomenon6 Planet9) 11.83)
	(= (slew_time Planet9 Star7) 38.52)
	(= (slew_time Star7 Planet9) 38.52)
	(= (slew_time Planet9 Phenomenon8) 18.68)
	(= (slew_time Phenomenon8 Planet9) 18.68)
	(= (data-stored) 0)
)
(:goal (and
	(pointing satellite0 Phenomenon5)
	(pointing satellite1 GroundStation2)
	(have_image Star3 thermograph0)
	(have_image Phenomenon5 image2)
	(have_image Phenomenon6 image2)
	(have_image Star7 thermograph0)
	(have_image Phenomenon8 image2)
	(have_image Planet9 spectrograph1)
))
(:metric minimize (total-time))

)
