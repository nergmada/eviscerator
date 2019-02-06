(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	satellite1 - satellite
	instrument1 - instrument
	instrument2 - instrument
	instrument3 - instrument
	satellite2 - satellite
	instrument4 - instrument
	instrument5 - instrument
	satellite3 - satellite
	instrument6 - instrument
	instrument7 - instrument
	satellite4 - satellite
	instrument8 - instrument
	instrument9 - instrument
	instrument10 - instrument
	satellite5 - satellite
	instrument11 - instrument
	satellite6 - satellite
	instrument12 - instrument
	instrument13 - instrument
	instrument14 - instrument
	satellite7 - satellite
	instrument15 - instrument
	instrument16 - instrument
	spectrograph1 - mode
	image2 - mode
	thermograph0 - mode
	GroundStation0 - direction
	GroundStation1 - direction
	GroundStation2 - direction
	Star3 - direction
	Star4 - direction
	Phenomenon5 - direction
	Phenomenon6 - direction
	Star7 - direction
	Phenomenon8 - direction
	Planet9 - direction
	Phenomenon10 - direction
	Star11 - direction
	Star12 - direction
	Phenomenon13 - direction
	Star14 - direction
	Phenomenon15 - direction
	Planet16 - direction
	Star17 - direction
	Planet18 - direction
	Star19 - direction
	Star20 - direction
	Star21 - direction
	Phenomenon22 - direction
	Star23 - direction
	Star24 - direction
	Star25 - direction
	Phenomenon26 - direction
	Planet27 - direction
	Phenomenon28 - direction
	Phenomenon29 - direction
	Planet30 - direction
	Planet31 - direction
	Planet32 - direction
	Phenomenon33 - direction
	Star34 - direction
	Planet35 - direction
	Planet36 - direction
	Star37 - direction
	Star38 - direction
	Planet39 - direction
	Phenomenon40 - direction
	Star41 - direction
	Phenomenon42 - direction
	Phenomenon43 - direction
	Star44 - direction
	Star45 - direction
	Star46 - direction
	Star47 - direction
	Star48 - direction
	Phenomenon49 - direction
	Star50 - direction
	Planet51 - direction
	Star52 - direction
	Planet53 - direction
	Star54 - direction
	Phenomenon55 - direction
	Star56 - direction
	Planet57 - direction
	Phenomenon58 - direction
	Star59 - direction
	Planet60 - direction
	Planet61 - direction
	Planet62 - direction
	Planet63 - direction
	Star64 - direction
	Star65 - direction
	Planet66 - direction
	Planet67 - direction
	Planet68 - direction
	Star69 - direction
	Phenomenon70 - direction
	Phenomenon71 - direction
	Planet72 - direction
)
(:init
	(supports instrument0 thermograph0)
	(supports instrument0 spectrograph1)
	(supports instrument0 image2)
	(calibration_target instrument0 GroundStation2)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Star44)
	(supports instrument1 spectrograph1)
	(supports instrument1 image2)
	(supports instrument1 thermograph0)
	(calibration_target instrument1 GroundStation0)
	(supports instrument2 image2)
	(supports instrument2 spectrograph1)
	(calibration_target instrument2 GroundStation1)
	(supports instrument3 image2)
	(supports instrument3 spectrograph1)
	(supports instrument3 thermograph0)
	(calibration_target instrument3 GroundStation2)
	(on_board instrument1 satellite1)
	(on_board instrument2 satellite1)
	(on_board instrument3 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Star7)
	(supports instrument4 spectrograph1)
	(supports instrument4 image2)
	(supports instrument4 thermograph0)
	(calibration_target instrument4 GroundStation1)
	(supports instrument5 thermograph0)
	(supports instrument5 image2)
	(supports instrument5 spectrograph1)
	(calibration_target instrument5 GroundStation1)
	(on_board instrument4 satellite2)
	(on_board instrument5 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Phenomenon58)
	(supports instrument6 thermograph0)
	(supports instrument6 image2)
	(calibration_target instrument6 GroundStation2)
	(supports instrument7 thermograph0)
	(supports instrument7 image2)
	(supports instrument7 spectrograph1)
	(calibration_target instrument7 GroundStation0)
	(on_board instrument6 satellite3)
	(on_board instrument7 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Phenomenon15)
	(supports instrument8 image2)
	(supports instrument8 thermograph0)
	(supports instrument8 spectrograph1)
	(calibration_target instrument8 GroundStation0)
	(supports instrument9 image2)
	(supports instrument9 thermograph0)
	(calibration_target instrument9 GroundStation2)
	(supports instrument10 thermograph0)
	(supports instrument10 image2)
	(supports instrument10 spectrograph1)
	(calibration_target instrument10 GroundStation2)
	(on_board instrument8 satellite4)
	(on_board instrument9 satellite4)
	(on_board instrument10 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Planet31)
	(supports instrument11 spectrograph1)
	(supports instrument11 thermograph0)
	(supports instrument11 image2)
	(calibration_target instrument11 GroundStation1)
	(on_board instrument11 satellite5)
	(power_avail satellite5)
	(pointing satellite5 Planet27)
	(supports instrument12 image2)
	(calibration_target instrument12 GroundStation1)
	(supports instrument13 spectrograph1)
	(calibration_target instrument13 GroundStation1)
	(supports instrument14 thermograph0)
	(supports instrument14 image2)
	(supports instrument14 spectrograph1)
	(calibration_target instrument14 GroundStation2)
	(on_board instrument12 satellite6)
	(on_board instrument13 satellite6)
	(on_board instrument14 satellite6)
	(power_avail satellite6)
	(pointing satellite6 Phenomenon22)
	(supports instrument15 thermograph0)
	(supports instrument15 image2)
	(calibration_target instrument15 GroundStation2)
	(supports instrument16 thermograph0)
	(supports instrument16 image2)
	(supports instrument16 spectrograph1)
	(calibration_target instrument16 GroundStation2)
	(on_board instrument15 satellite7)
	(on_board instrument16 satellite7)
	(power_avail satellite7)
	(pointing satellite7 Star34)
)
(:goal (and
	(pointing satellite1 Planet36)
	(pointing satellite2 Planet39)
	(pointing satellite4 Planet27)
	(pointing satellite7 Phenomenon22)
	(have_image Star3 thermograph0)
	(have_image Phenomenon5 image2)
	(have_image Phenomenon6 image2)
	(have_image Star7 thermograph0)
	(have_image Phenomenon8 image2)
	(have_image Planet9 spectrograph1)
	(have_image Phenomenon10 thermograph0)
	(have_image Star11 spectrograph1)
	(have_image Star12 spectrograph1)
	(have_image Phenomenon13 thermograph0)
	(have_image Star14 image2)
	(have_image Phenomenon15 spectrograph1)
	(have_image Planet16 image2)
	(have_image Star17 spectrograph1)
	(have_image Planet18 image2)
	(have_image Star19 thermograph0)
	(have_image Star20 thermograph0)
	(have_image Phenomenon22 spectrograph1)
	(have_image Star23 image2)
	(have_image Star24 thermograph0)
	(have_image Star25 thermograph0)
	(have_image Phenomenon26 spectrograph1)
	(have_image Planet27 spectrograph1)
	(have_image Planet31 thermograph0)
	(have_image Planet32 thermograph0)
	(have_image Phenomenon33 spectrograph1)
	(have_image Star34 thermograph0)
	(have_image Planet35 image2)
	(have_image Planet36 thermograph0)
	(have_image Star37 spectrograph1)
	(have_image Star38 spectrograph1)
	(have_image Planet39 image2)
	(have_image Star41 thermograph0)
	(have_image Phenomenon42 spectrograph1)
	(have_image Phenomenon43 thermograph0)
	(have_image Star44 thermograph0)
	(have_image Star45 image2)
	(have_image Star46 thermograph0)
	(have_image Star47 image2)
	(have_image Star48 thermograph0)
	(have_image Phenomenon49 image2)
	(have_image Planet51 spectrograph1)
	(have_image Planet53 thermograph0)
	(have_image Star54 image2)
	(have_image Phenomenon55 thermograph0)
	(have_image Planet57 thermograph0)
	(have_image Star59 thermograph0)
	(have_image Planet60 thermograph0)
	(have_image Planet61 thermograph0)
	(have_image Planet62 thermograph0)
	(have_image Planet63 image2)
	(have_image Star64 image2)
	(have_image Star65 spectrograph1)
	(have_image Planet66 thermograph0)
	(have_image Planet67 image2)
	(have_image Planet68 thermograph0)
	(have_image Star69 image2)
	(have_image Phenomenon70 spectrograph1)
	(have_image Phenomenon71 spectrograph1)
	(have_image Planet72 image2)
))
(:metric minimize (total-time))

)
