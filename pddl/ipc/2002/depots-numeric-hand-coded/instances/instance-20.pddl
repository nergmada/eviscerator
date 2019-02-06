(define (problem depotprob7615) (:domain Depot)
(:objects
	depot0 depot1 depot2 depot3 depot4 depot5 depot6 depot7 depot8 depot9 - Depot
	distributor0 distributor1 distributor2 distributor3 distributor4 distributor5 distributor6 distributor7 distributor8 distributor9 - Distributor
	truck0 truck1 truck2 truck3 truck4 truck5 truck6 truck7 truck8 truck9 - Truck
	pallet0 pallet1 pallet2 pallet3 pallet4 pallet5 pallet6 pallet7 pallet8 pallet9 pallet10 pallet11 pallet12 pallet13 pallet14 pallet15 pallet16 pallet17 pallet18 pallet19 pallet20 pallet21 pallet22 pallet23 pallet24 pallet25 pallet26 pallet27 pallet28 pallet29 pallet30 pallet31 pallet32 pallet33 pallet34 pallet35 pallet36 pallet37 pallet38 pallet39 pallet40 pallet41 pallet42 pallet43 pallet44 pallet45 pallet46 pallet47 pallet48 pallet49 - Pallet
	crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 crate8 crate9 crate10 crate11 crate12 crate13 crate14 crate15 crate16 crate17 crate18 crate19 crate20 crate21 crate22 crate23 crate24 crate25 crate26 crate27 crate28 crate29 crate30 crate31 crate32 crate33 crate34 crate35 crate36 crate37 crate38 crate39 crate40 crate41 crate42 crate43 crate44 crate45 crate46 crate47 crate48 crate49 crate50 crate51 crate52 crate53 crate54 crate55 crate56 crate57 crate58 crate59 crate60 crate61 crate62 crate63 crate64 crate65 crate66 crate67 crate68 crate69 crate70 crate71 crate72 crate73 crate74 crate75 crate76 crate77 crate78 crate79 crate80 crate81 crate82 crate83 crate84 crate85 crate86 crate87 crate88 crate89 crate90 crate91 crate92 crate93 crate94 crate95 crate96 crate97 crate98 crate99 - Crate
	hoist0 hoist1 hoist2 hoist3 hoist4 hoist5 hoist6 hoist7 hoist8 hoist9 hoist10 hoist11 hoist12 hoist13 hoist14 hoist15 hoist16 hoist17 hoist18 hoist19 hoist20 hoist21 hoist22 hoist23 hoist24 hoist25 hoist26 hoist27 hoist28 hoist29 - Hoist)
(:init
	(at pallet0 depot0)
	(clear crate58)
	(at pallet1 depot1)
	(clear crate85)
	(at pallet2 depot2)
	(clear crate62)
	(at pallet3 depot3)
	(clear crate77)
	(at pallet4 depot4)
	(clear pallet4)
	(at pallet5 depot5)
	(clear crate92)
	(at pallet6 depot6)
	(clear crate19)
	(at pallet7 depot7)
	(clear crate88)
	(at pallet8 depot8)
	(clear crate79)
	(at pallet9 depot9)
	(clear crate76)
	(at pallet10 distributor0)
	(clear crate22)
	(at pallet11 distributor1)
	(clear pallet11)
	(at pallet12 distributor2)
	(clear crate80)
	(at pallet13 distributor3)
	(clear crate89)
	(at pallet14 distributor4)
	(clear crate49)
	(at pallet15 distributor5)
	(clear crate52)
	(at pallet16 distributor6)
	(clear crate47)
	(at pallet17 distributor7)
	(clear crate91)
	(at pallet18 distributor8)
	(clear crate17)
	(at pallet19 distributor9)
	(clear crate9)
	(at pallet20 distributor5)
	(clear crate95)
	(at pallet21 depot3)
	(clear crate78)
	(at pallet22 depot8)
	(clear crate94)
	(at pallet23 depot9)
	(clear crate87)
	(at pallet24 depot1)
	(clear crate53)
	(at pallet25 distributor0)
	(clear crate29)
	(at pallet26 depot0)
	(clear crate75)
	(at pallet27 depot8)
	(clear pallet27)
	(at pallet28 distributor2)
	(clear crate43)
	(at pallet29 depot1)
	(clear crate86)
	(at pallet30 distributor6)
	(clear crate98)
	(at pallet31 distributor5)
	(clear crate3)
	(at pallet32 distributor7)
	(clear crate71)
	(at pallet33 distributor3)
	(clear crate84)
	(at pallet34 distributor7)
	(clear crate44)
	(at pallet35 depot3)
	(clear crate67)
	(at pallet36 depot1)
	(clear crate81)
	(at pallet37 distributor6)
	(clear crate56)
	(at pallet38 distributor3)
	(clear pallet38)
	(at pallet39 depot8)
	(clear crate61)
	(at pallet40 distributor3)
	(clear crate99)
	(at pallet41 distributor4)
	(clear crate57)
	(at pallet42 depot6)
	(clear crate72)
	(at pallet43 depot3)
	(clear crate82)
	(at pallet44 distributor5)
	(clear crate97)
	(at pallet45 depot9)
	(clear crate59)
	(at pallet46 distributor4)
	(clear crate63)
	(at pallet47 depot5)
	(clear crate96)
	(at pallet48 depot7)
	(clear crate90)
	(at pallet49 distributor4)
	(clear crate33)
	(at truck0 distributor8)
	(= (current_load truck0) 0)
	(= (load_limit truck0) 715)
	(at truck1 distributor8)
	(= (current_load truck1) 0)
	(= (load_limit truck1) 749)
	(at truck2 depot3)
	(= (current_load truck2) 0)
	(= (load_limit truck2) 698)
	(at truck3 distributor5)
	(= (current_load truck3) 0)
	(= (load_limit truck3) 800)
	(at truck4 distributor1)
	(= (current_load truck4) 0)
	(= (load_limit truck4) 437)
	(at truck5 depot1)
	(= (current_load truck5) 0)
	(= (load_limit truck5) 740)
	(at truck6 depot5)
	(= (current_load truck6) 0)
	(= (load_limit truck6) 786)
	(at truck7 depot0)
	(= (current_load truck7) 0)
	(= (load_limit truck7) 673)
	(at truck8 distributor5)
	(= (current_load truck8) 0)
	(= (load_limit truck8) 414)
	(at truck9 distributor0)
	(= (current_load truck9) 0)
	(= (load_limit truck9) 410)
	(at hoist0 depot0)
	(available hoist0)
	(at hoist1 depot1)
	(available hoist1)
	(at hoist2 depot2)
	(available hoist2)
	(at hoist3 depot3)
	(available hoist3)
	(at hoist4 depot4)
	(available hoist4)
	(at hoist5 depot5)
	(available hoist5)
	(at hoist6 depot6)
	(available hoist6)
	(at hoist7 depot7)
	(available hoist7)
	(at hoist8 depot8)
	(available hoist8)
	(at hoist9 depot9)
	(available hoist9)
	(at hoist10 distributor0)
	(available hoist10)
	(at hoist11 distributor1)
	(available hoist11)
	(at hoist12 distributor2)
	(available hoist12)
	(at hoist13 distributor3)
	(available hoist13)
	(at hoist14 distributor4)
	(available hoist14)
	(at hoist15 distributor5)
	(available hoist15)
	(at hoist16 distributor6)
	(available hoist16)
	(at hoist17 distributor7)
	(available hoist17)
	(at hoist18 distributor8)
	(available hoist18)
	(at hoist19 distributor9)
	(available hoist19)
	(at hoist20 distributor0)
	(available hoist20)
	(at hoist21 distributor9)
	(available hoist21)
	(at hoist22 depot0)
	(available hoist22)
	(at hoist23 distributor4)
	(available hoist23)
	(at hoist24 distributor6)
	(available hoist24)
	(at hoist25 depot3)
	(available hoist25)
	(at hoist26 distributor3)
	(available hoist26)
	(at hoist27 depot1)
	(available hoist27)
	(at hoist28 depot7)
	(available hoist28)
	(at hoist29 depot1)
	(available hoist29)
	(at crate0 depot7)
	(on crate0 pallet7)
	(= (weight crate0) 58)
	(at crate1 distributor4)
	(on crate1 pallet49)
	(= (weight crate1) 89)
	(at crate2 distributor4)
	(on crate2 pallet46)
	(= (weight crate2) 61)
	(at crate3 distributor5)
	(on crate3 pallet31)
	(= (weight crate3) 50)
	(at crate4 depot5)
	(on crate4 pallet5)
	(= (weight crate4) 38)
	(at crate5 depot9)
	(on crate5 pallet9)
	(= (weight crate5) 71)
	(at crate6 distributor2)
	(on crate6 pallet28)
	(= (weight crate6) 88)
	(at crate7 distributor6)
	(on crate7 pallet37)
	(= (weight crate7) 90)
	(at crate8 depot7)
	(on crate8 pallet48)
	(= (weight crate8) 74)
	(at crate9 distributor9)
	(on crate9 pallet19)
	(= (weight crate9) 60)
	(at crate10 distributor3)
	(on crate10 pallet13)
	(= (weight crate10) 42)
	(at crate11 distributor6)
	(on crate11 crate7)
	(= (weight crate11) 12)
	(at crate12 depot3)
	(on crate12 pallet43)
	(= (weight crate12) 48)
	(at crate13 distributor0)
	(on crate13 pallet10)
	(= (weight crate13) 24)
	(at crate14 distributor6)
	(on crate14 pallet30)
	(= (weight crate14) 14)
	(at crate15 depot3)
	(on crate15 pallet35)
	(= (weight crate15) 93)
	(at crate16 distributor3)
	(on crate16 pallet40)
	(= (weight crate16) 77)
	(at crate17 distributor8)
	(on crate17 pallet18)
	(= (weight crate17) 70)
	(at crate18 depot9)
	(on crate18 crate5)
	(= (weight crate18) 75)
	(at crate19 depot6)
	(on crate19 pallet6)
	(= (weight crate19) 100)
	(at crate20 distributor7)
	(on crate20 pallet34)
	(= (weight crate20) 31)
	(at crate21 depot9)
	(on crate21 crate18)
	(= (weight crate21) 32)
	(at crate22 distributor0)
	(on crate22 crate13)
	(= (weight crate22) 27)
	(at crate23 distributor4)
	(on crate23 crate1)
	(= (weight crate23) 94)
	(at crate24 depot0)
	(on crate24 pallet26)
	(= (weight crate24) 19)
	(at crate25 distributor6)
	(on crate25 crate14)
	(= (weight crate25) 39)
	(at crate26 distributor0)
	(on crate26 pallet25)
	(= (weight crate26) 82)
	(at crate27 distributor4)
	(on crate27 pallet14)
	(= (weight crate27) 36)
	(at crate28 depot1)
	(on crate28 pallet29)
	(= (weight crate28) 37)
	(at crate29 distributor0)
	(on crate29 crate26)
	(= (weight crate29) 50)
	(at crate30 depot3)
	(on crate30 pallet21)
	(= (weight crate30) 21)
	(at crate31 depot7)
	(on crate31 crate8)
	(= (weight crate31) 22)
	(at crate32 depot9)
	(on crate32 pallet45)
	(= (weight crate32) 24)
	(at crate33 distributor4)
	(on crate33 crate23)
	(= (weight crate33) 35)
	(at crate34 distributor7)
	(on crate34 pallet17)
	(= (weight crate34) 11)
	(at crate35 distributor5)
	(on crate35 pallet20)
	(= (weight crate35) 11)
	(at crate36 depot3)
	(on crate36 crate30)
	(= (weight crate36) 5)
	(at crate37 distributor5)
	(on crate37 pallet15)
	(= (weight crate37) 60)
	(at crate38 depot0)
	(on crate38 crate24)
	(= (weight crate38) 64)
	(at crate39 distributor4)
	(on crate39 pallet41)
	(= (weight crate39) 31)
	(at crate40 distributor7)
	(on crate40 crate20)
	(= (weight crate40) 8)
	(at crate41 distributor5)
	(on crate41 pallet44)
	(= (weight crate41) 44)
	(at crate42 depot8)
	(on crate42 pallet39)
	(= (weight crate42) 20)
	(at crate43 distributor2)
	(on crate43 crate6)
	(= (weight crate43) 19)
	(at crate44 distributor7)
	(on crate44 crate40)
	(= (weight crate44) 38)
	(at crate45 depot1)
	(on crate45 crate28)
	(= (weight crate45) 8)
	(at crate46 distributor4)
	(on crate46 crate27)
	(= (weight crate46) 11)
	(at crate47 distributor6)
	(on crate47 pallet16)
	(= (weight crate47) 56)
	(at crate48 depot9)
	(on crate48 crate32)
	(= (weight crate48) 20)
	(at crate49 distributor4)
	(on crate49 crate46)
	(= (weight crate49) 32)
	(at crate50 depot3)
	(on crate50 crate36)
	(= (weight crate50) 26)
	(at crate51 distributor5)
	(on crate51 crate37)
	(= (weight crate51) 72)
	(at crate52 distributor5)
	(on crate52 crate51)
	(= (weight crate52) 86)
	(at crate53 depot1)
	(on crate53 pallet24)
	(= (weight crate53) 62)
	(at crate54 distributor4)
	(on crate54 crate2)
	(= (weight crate54) 85)
	(at crate55 distributor4)
	(on crate55 crate54)
	(= (weight crate55) 32)
	(at crate56 distributor6)
	(on crate56 crate11)
	(= (weight crate56) 63)
	(at crate57 distributor4)
	(on crate57 crate39)
	(= (weight crate57) 82)
	(at crate58 depot0)
	(on crate58 pallet0)
	(= (weight crate58) 54)
	(at crate59 depot9)
	(on crate59 crate48)
	(= (weight crate59) 40)
	(at crate60 depot9)
	(on crate60 pallet23)
	(= (weight crate60) 69)
	(at crate61 depot8)
	(on crate61 crate42)
	(= (weight crate61) 49)
	(at crate62 depot2)
	(on crate62 pallet2)
	(= (weight crate62) 75)
	(at crate63 distributor4)
	(on crate63 crate55)
	(= (weight crate63) 13)
	(at crate64 depot3)
	(on crate64 crate50)
	(= (weight crate64) 95)
	(at crate65 depot9)
	(on crate65 crate21)
	(= (weight crate65) 24)
	(at crate66 depot5)
	(on crate66 pallet47)
	(= (weight crate66) 87)
	(at crate67 depot3)
	(on crate67 crate15)
	(= (weight crate67) 50)
	(at crate68 depot5)
	(on crate68 crate4)
	(= (weight crate68) 26)
	(at crate69 depot5)
	(on crate69 crate68)
	(= (weight crate69) 21)
	(at crate70 depot0)
	(on crate70 crate38)
	(= (weight crate70) 4)
	(at crate71 distributor7)
	(on crate71 pallet32)
	(= (weight crate71) 3)
	(at crate72 depot6)
	(on crate72 pallet42)
	(= (weight crate72) 28)
	(at crate73 distributor3)
	(on crate73 crate16)
	(= (weight crate73) 48)
	(at crate74 depot3)
	(on crate74 crate12)
	(= (weight crate74) 85)
	(at crate75 depot0)
	(on crate75 crate70)
	(= (weight crate75) 71)
	(at crate76 depot9)
	(on crate76 crate65)
	(= (weight crate76) 34)
	(at crate77 depot3)
	(on crate77 pallet3)
	(= (weight crate77) 32)
	(at crate78 depot3)
	(on crate78 crate64)
	(= (weight crate78) 24)
	(at crate79 depot8)
	(on crate79 pallet8)
	(= (weight crate79) 2)
	(at crate80 distributor2)
	(on crate80 pallet12)
	(= (weight crate80) 88)
	(at crate81 depot1)
	(on crate81 pallet36)
	(= (weight crate81) 38)
	(at crate82 depot3)
	(on crate82 crate74)
	(= (weight crate82) 20)
	(at crate83 depot8)
	(on crate83 pallet22)
	(= (weight crate83) 46)
	(at crate84 distributor3)
	(on crate84 pallet33)
	(= (weight crate84) 99)
	(at crate85 depot1)
	(on crate85 pallet1)
	(= (weight crate85) 56)
	(at crate86 depot1)
	(on crate86 crate45)
	(= (weight crate86) 20)
	(at crate87 depot9)
	(on crate87 crate60)
	(= (weight crate87) 68)
	(at crate88 depot7)
	(on crate88 crate0)
	(= (weight crate88) 43)
	(at crate89 distributor3)
	(on crate89 crate10)
	(= (weight crate89) 27)
	(at crate90 depot7)
	(on crate90 crate31)
	(= (weight crate90) 3)
	(at crate91 distributor7)
	(on crate91 crate34)
	(= (weight crate91) 81)
	(at crate92 depot5)
	(on crate92 crate69)
	(= (weight crate92) 17)
	(at crate93 distributor5)
	(on crate93 crate35)
	(= (weight crate93) 44)
	(at crate94 depot8)
	(on crate94 crate83)
	(= (weight crate94) 55)
	(at crate95 distributor5)
	(on crate95 crate93)
	(= (weight crate95) 58)
	(at crate96 depot5)
	(on crate96 crate66)
	(= (weight crate96) 70)
	(at crate97 distributor5)
	(on crate97 crate41)
	(= (weight crate97) 16)
	(at crate98 distributor6)
	(on crate98 crate25)
	(= (weight crate98) 84)
	(at crate99 distributor3)
	(on crate99 crate73)
	(= (weight crate99) 35)
	(= (fuel-cost) 0)
)

(:goal (and
		(on crate0 crate81)
		(on crate1 crate54)
		(on crate3 crate37)
		(on crate4 pallet17)
		(on crate5 crate29)
		(on crate6 pallet31)
		(on crate7 crate11)
		(on crate8 pallet6)
		(on crate9 pallet19)
		(on crate10 pallet24)
		(on crate11 pallet41)
		(on crate13 crate40)
		(on crate14 crate74)
		(on crate15 pallet48)
		(on crate16 pallet30)
		(on crate17 pallet49)
		(on crate18 pallet34)
		(on crate19 crate17)
		(on crate21 pallet5)
		(on crate22 pallet25)
		(on crate23 crate25)
		(on crate24 pallet21)
		(on crate25 crate33)
		(on crate26 pallet33)
		(on crate27 pallet45)
		(on crate28 crate85)
		(on crate29 crate48)
		(on crate30 crate70)
		(on crate31 pallet7)
		(on crate32 crate46)
		(on crate33 pallet35)
		(on crate34 pallet3)
		(on crate36 crate6)
		(on crate37 crate58)
		(on crate38 crate52)
		(on crate40 crate49)
		(on crate41 crate87)
		(on crate42 crate97)
		(on crate43 crate34)
		(on crate44 crate16)
		(on crate45 crate14)
		(on crate46 crate18)
		(on crate47 pallet28)
		(on crate48 pallet26)
		(on crate49 pallet29)
		(on crate50 crate47)
		(on crate51 crate68)
		(on crate52 crate72)
		(on crate54 crate71)
		(on crate55 crate23)
		(on crate57 crate66)
		(on crate58 pallet12)
		(on crate59 pallet18)
		(on crate60 crate21)
		(on crate61 crate76)
		(on crate62 crate43)
		(on crate63 pallet15)
		(on crate64 crate92)
		(on crate65 pallet0)
		(on crate66 crate93)
		(on crate67 pallet10)
		(on crate68 pallet43)
		(on crate69 pallet4)
		(on crate70 pallet22)
		(on crate71 crate60)
		(on crate72 crate4)
		(on crate74 pallet32)
		(on crate75 pallet38)
		(on crate76 crate24)
		(on crate78 crate88)
		(on crate79 crate75)
		(on crate80 pallet42)
		(on crate81 pallet11)
		(on crate83 crate31)
		(on crate84 pallet23)
		(on crate85 pallet46)
		(on crate86 pallet20)
		(on crate87 crate10)
		(on crate88 pallet36)
		(on crate90 pallet37)
		(on crate92 pallet16)
		(on crate93 crate27)
		(on crate94 pallet2)
		(on crate95 crate51)
		(on crate96 pallet27)
		(on crate97 crate59)
		(on crate99 crate30)
	)
)

(:metric minimize (total-time)))
