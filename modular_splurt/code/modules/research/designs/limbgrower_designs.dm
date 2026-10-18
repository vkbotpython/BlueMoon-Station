/datum/design/belly
	name = "Belly"
	id = "belly"
	research_icon_state = "preview_goingtohellonepixelatatime"
	research_icon = 'modular_splurt/icons/obj/genitals/belly_onmob.dmi'
	build_type = LIMBGROWER
	reagents_list = list(/datum/reagent/medicine/synthflesh = 25)
	build_path = /obj/item/organ/genital/belly
	category = list("initial","human","lizard","fly","insect","plasmaman","mammal","xeno")

/datum/design/semen
	name = "Synthetized Semen Uwu"
	id = "semen"
	build_type = LIMBGROWER
	reagents_list = list(/datum/reagent/medicine/synthflesh = 15)
	build_path = /obj/item/reagent_containers/glass/bottle/semen
	category = list("initial","mammal","other")

/datum/design/female_ejaculate
	name = "Synthetized Female Ejaculate"
	id = "female_ejaculate"
	build_type = LIMBGROWER
	reagents_list = list(/datum/reagent/medicine/synthflesh = 15)
	build_path = /obj/item/reagent_containers/glass/bottle/female_ejaculate
	category = list("initial","mammal","other")

// BLUEMOON ADD START - Shadekin organs (порт из S.P.L.U.R.T-tg, modular_zubbers)
/datum/design/shadekin_ears
	name = "Shadekin Ears"
	id = "shadekinears"
	build_type = LIMBGROWER
	reagents_list = list(/datum/reagent/medicine/synthflesh = 15)
	build_path = /obj/item/organ/ears/shadekin
	category = list("initial", "shadekin")

/datum/design/shadekin_eyes
	name = "Shadekin Eyes"
	id = "shadekineeyes"
	build_type = LIMBGROWER
	reagents_list = list(/datum/reagent/medicine/synthflesh = 15)
	build_path = /obj/item/organ/eyes/night_vision/shadekin
	category = list("initial", "shadekin")

/datum/design/shadekin_tongue
	name = "Shadekin Tongue"
	id = "shadekintongue"
	build_type = LIMBGROWER
	reagents_list = list(/datum/reagent/medicine/synthflesh = 10)
	build_path = /obj/item/organ/tongue/shadekin
	category = list("initial", "shadekin")
// BLUEMOON ADD END
