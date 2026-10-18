//Donator drinks
/datum/chemical_reaction/honeystones_love
	results = list(/datum/reagent/consumable/honeystones_love = 2)
	required_reagents = list(/datum/reagent/consumable/honey = 7, /datum/reagent/drug/aphrodisiacplus = 1, /datum/reagent/consumable/orangejuice = 1, /datum/reagent/consumable/milk= 1)

// Other stuff

// BLUEMOON ADD START - Shadekin mutation toxin (порт из S.P.L.U.R.T-tg, modular_zubbers)
// В оригинале используется bananashake; в этом билде он называется consumable/milkshake_banana.
/datum/chemical_reaction/mutationtoxin/shadekin
	name = "shadekin mutation toxin"
	id = /datum/reagent/mutationtoxin/shadekin
	results = list(/datum/reagent/mutationtoxin/shadekin = 1)
	required_reagents = list(/datum/reagent/consumable/milkshake_banana = 3, /datum/reagent/medicine/mannitol = 2, /datum/reagent/drug/happiness = 2, /datum/reagent/mutationtoxin = 1)
	required_temp = 320
// BLUEMOON ADD END
